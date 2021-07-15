
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:goalscorer/utils/common_state.dart';
import 'package:goalscorer/utils/app_shared.dart';

class HomeState {
  CommonState isState;
  bool isRemoveAds;
  int countTapViewAds;
  int tabView;
  bool isPremium;

  HomeState(
      {this.isRemoveAds = false,
      this.countTapViewAds = 0,
      this.tabView = 0,
      this.isState = CommonState.Default,
      this.isPremium = false});

  copyWith(
          { bool isRemoveAds,
           int countTapViewAds,
           int tabView,
          CommonState state,
           bool isPremium}) =>
      HomeState(
          isRemoveAds: isRemoveAds ?? this.isRemoveAds,
          countTapViewAds: countTapViewAds ?? this.countTapViewAds,
          tabView: tabView ?? this.tabView,
          isState: state ?? this.isState,
          isPremium: isPremium ?? this.isPremium);
}

final homeProvider =
    StateNotifierProvider<HomeProvider, HomeState>((ref) => HomeProvider());

class HomeProvider extends StateNotifier<HomeState> {
  HomeProvider() : super(HomeState());

  void changeTabView(int tabView) {
    state = state.copyWith(tabView: tabView);
  }

  Future<void> checkPurchased() async {
    final bool available = await InAppPurchaseConnection.instance.isAvailable();
    if (available) {
      final QueryPurchaseDetailsResponse response =
          await InAppPurchaseConnection.instance.queryPastPurchases();
      if (response.error != null) {
        print("Error");
      } else {
        bool check = false;
        for (PurchaseDetails purchase in response.pastPurchases) {
          if (purchase.status == PurchaseStatus.purchased) {
            InAppPurchaseConnection.instance.completePurchase(purchase);
            check = true;
            break;
          }
        }
        await appShared.setPremium(check);
      }
    }
    bool _isPremium = await appShared.getPremium();
    state = state.copyWith(isPremium: _isPremium);
  }
}
