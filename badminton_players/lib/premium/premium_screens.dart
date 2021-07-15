import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:badminton_players/home/home_provider.dart';
import 'package:badminton_players/premium/premium_description_widget.dart';
import 'package:badminton_players/utils/common_state.dart';
import 'package:badminton_players/widget/HomeScreen.dart';
import 'premium_provider.dart';
import 'package:badminton_players/utils/context_extensions.dart';


class PremiumScreens extends StatefulWidget {
  @override
  _PremiumScreensState createState() => _PremiumScreensState();
}

class _PremiumScreensState extends State<PremiumScreens> {
   StreamSubscription<List<PurchaseDetails>> _subscription;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final Stream purchaseUpdated =
        InAppPurchaseConnection.instance.purchaseUpdatedStream;
    _subscription = purchaseUpdated.listen((purchaseDetailsList) {
      _listenToPurchaseUpdated(purchaseDetailsList);
    }, onDone: () {
      print("////////sub done");
    }, onError: (err) {
      print("///////sub error");
    }, cancelOnError: false) as StreamSubscription<List<PurchaseDetails>>;
    context.read(premiumProvider.notifier).init();
  }

  void _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) {
    purchaseDetailsList.forEach((PurchaseDetails purchaseDetails) async {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        print("-------------Pendding");
      } else {
        if (purchaseDetails.status == PurchaseStatus.error) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('High-end purchase failed.')));
          print("--------error");
        } else if (purchaseDetails.status == PurchaseStatus.purchased) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Purchased successfully.')));
          print("-----------purchased");
        }
        if (purchaseDetails.pendingCompletePurchase) {
          await InAppPurchaseConnection.instance
              .completePurchase(purchaseDetails);
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Purchased Complete.')));
          await context.read(homeProvider.notifier).checkPurchased();
          context.popToRoot();
          context.pushReplacement((context) => HomeScreen());
          print("-----------pendingCompletePurchase");
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Premium'),
        backgroundColor: Colors.red,
        elevation: 0.0,
      ),
      body: Consumer(builder: (ctx, w, _) {
        var state = w(premiumProvider);
        if (state.isState == CommonState.Success) {
          if (state.products.isEmpty) {
            return Center(
              child: Text(
                'Unable to make payment!',
                style:  TextStyle(fontWeight: FontWeight.w500, fontSize: 14.0),
              ),
            );
          }
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.products.length,
                  itemBuilder: (context, index) {
                    var product = state.products[index];
                    return Card(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: ListTile(
                        title: Text(
                          product.title,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.description,
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                            ),
                            Text(
                              product.price,
                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0).copyWith(
                                  color: Colors.orange, fontSize: 16.0),
                            )
                          ],
                        ),
                        trailing: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(8.0)),
                          child: Text(
                            "Buy",
                            style:
                            TextStyle(fontWeight: FontWeight.w500, fontSize: 14.0).copyWith(color: Colors.white),
                          ),
                          color: Colors.red,
                          onPressed: () async {
                            final PurchaseParam purchaseParam =
                                PurchaseParam(productDetails: product);
                            await InAppPurchaseConnection.instance.buyConsumable(
                              purchaseParam: purchaseParam,
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
              PremiumDescriptionWidget()
            ],
          );
        } else if (state.isState == CommonState.Error) {
          return Center(
            child: Text(
              'Please try again later!',
              style:  TextStyle(fontWeight: FontWeight.w500, fontSize: 14.0),
            ),
          );

        } else {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoActivityIndicator(),
                SizedBox(height:5.0),
                Text(
                  'Processing...',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.0),
                )
              ],
            ),
          );;
        }
      }),
    );
  }
}
