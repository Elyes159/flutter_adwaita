import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Future<void> Function() onPressed;

  const CustomButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await onPressed();
      },
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: 110,
        height: 44,
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: const Color(0xFF89B4FA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Next',
              style: TextStyle(
                color: Color(0xFF181825),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
