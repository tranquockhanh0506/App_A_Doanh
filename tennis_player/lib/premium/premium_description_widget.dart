import 'package:flutter/material.dart';

class PremiumDescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Premium benefits",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0).copyWith(fontSize: 16.0),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "√ Refresh words while playing",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.0).copyWith(color: Colors.red),
            ),
          ),
          SizedBox(height:10.0),
          Text(
            "Your subscription will auto-renew and you will be charged the amount specified above each week, month, 3 month, 6 month or year (as applicable) until you cancel your subcription before the end of the then-current subscription period.",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.0).copyWith(color: Colors.blueGrey),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
