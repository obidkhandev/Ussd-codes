import 'package:flutter/material.dart';
import 'package:ussd_code/utils/tools/assistant.dart';

class AppSnackBar extends StatelessWidget {
  final String text;
  final String icon;
  final Color color;
  const AppSnackBar({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: color),
      ),
      width: width(context) * 0.95,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              icon,
              width: width(context) * 0.3,
            ),
            Container(
              height: height(context) * 0.05,
              width: 1,
              color: Colors.grey,
            ),
            Text(
              text,
              maxLines: 5,
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
