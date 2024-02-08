import 'package:flutter/material.dart';

class TarifInfo extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isTarif;
  const TarifInfo(
      {this.isTarif = true,
      super.key,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: isTarif ? 8 : 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
