import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BanUserDialog {
  static void showBanUserDialog({
    required BuildContext context,
    required String? userName,
    required VoidCallback onBan,
    required VoidCallback onCancel,
  }) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            width: 433,
            height: 283,
            padding: const EdgeInsets.all(15),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0xFF313244),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 189,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 69.64,
                        height: 65,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(),
                        child: SvgPicture.asset("assets/Icons/ban.svg"),
                      ),
                      const SizedBox(height: 10),
                      Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Ban the user ',
                              style: TextStyle(
                                color: Color(0xFFCDD6F4),
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 1.2,
                              ),
                            ),
                            TextSpan(
                              text: userName,
                              style: const TextStyle(
                                color: Color(0xFFEBA0AC),
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 1.2,
                              ),
                            ),
                            const TextSpan(
                              text: '?',
                              style: TextStyle(
                                color: Color(0xFFCDD6F4),
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 1.2,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      const SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Banning the user will stop them from accessing and using the app.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFA6ADC8),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 1.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: onCancel,
                        child: Container(
                          height: 44,
                          padding: const EdgeInsets.symmetric(horizontal: 54, vertical: 3),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF45475A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Cancel',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFCDD6F4),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 1.2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: GestureDetector(
                        onTap: onBan,
                        child: Container(
                          height: 44,
                          padding: const EdgeInsets.symmetric(horizontal: 54, vertical: 3),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0x3FF38BA8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Ban',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFF38BA8),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 1.2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
