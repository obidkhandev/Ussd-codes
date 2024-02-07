import 'package:flutter/material.dart';
import 'package:ussd_code/data/models/menu_model.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class MenuWidget extends StatelessWidget {
  final MenuModel model;
  final Color color;
  final VoidCallback onTap;
  const MenuWidget({
    super.key,
    required this.model,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Container(
        height: 54,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            model.icon,
            const SizedBox(width: 12),
            Text(
              model.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
