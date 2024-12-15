import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddNewUserDialog {
  static void showAddUserDialog(BuildContext context,TextEditingController nameController,TextEditingController emailController,TextEditingController accountTypeController,VoidCallback onConfirm) {
    
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: const Color(0xFF313244),
          child: Container(
            width: 433,
            height: 425,
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 331,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/Icons/userCard.svg"),
                      const SizedBox(height: 10),
                      const SizedBox(
                        width: 300,
                        child: Text(
                          'Add new user',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFCDD6F4),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Full Name TextField
                      _buildInputField(
                        controller: nameController,
                        hint: 'Full name',
                      ),
                      const SizedBox(height: 10),
                      // Email Address TextField
                      _buildInputField(
                        controller: emailController,
                        hint: 'Email address',
                      ),
                      const SizedBox(height: 10),
                      // Account Type TextField
                      _buildInputField(
                        controller: accountTypeController,
                        hint: 'Account type',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      width: 194,
                      height: 44,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF45475A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            color: Color(0xFFCDD6F4),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      width: 194,
                      height:44,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF89B4FA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                        onPressed: () {
                          onConfirm;
                          // Action on confirm
                          final String name = nameController.text;
                          final String email = emailController.text;
                          final String accountType = accountTypeController.text;

                          print('Name: $name');
                          print('Email: $email');
                          print('Account Type: $accountType');

                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Confirm',
                          style: TextStyle(
                            color: Color(0xFF45475A),
                            fontWeight: FontWeight.w700,
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

  static Widget _buildInputField({
    required TextEditingController controller,
    required String hint,
  }) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: ShapeDecoration(
        color: const Color(0xFF45475A),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Center(
        child: TextField(
          controller: controller,
          style: const TextStyle(color: Color(0xFFCDD6F4)),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Color(0xFFCDD6F4)),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
