import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:peps_admin/Components/TextFields/CounterNumberField.dart'; // Assurez-vous que le widget est bien importé

class EditMemberShipDialog {
  // ignore: non_constant_identifier_names
  static void show(
    BuildContext context,
    TextEditingController nameController,
    TextEditingController priceController,
    VoidCallback onConfirm,
    int nBSessionCount,
    int resetSessionCount,
    int validity,
  ) {

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            width: 433,
            height: 600, // Augmentation de la hauteur
            padding: const EdgeInsets.all(15),
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
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 60.67,
                        height: 65,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(),
                        child: SvgPicture.asset("assets/Icons/createPack.svg"),
                      ),
                      const SizedBox(height: 10),
                      const SizedBox(
                        width: 300,
                        child: Text(
                          'Edit membership',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFCDD6F4),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 1.2,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      _buildField(
                        label: 'Name',
                        initialValue: 'Séance',
                        controller: nameController,
                      ),
                      const SizedBox(height: 10),
                      // Utilisation du widget SessionCounterWidget et gestion du nombre de sessions
                      SessionCounterWidget(
                        title: 'Number of sessions',
                        onValueChanged: (nBSessionCount) {
                        },
                        isNumberOfDays: false,
                      ),
                      const SizedBox(height: 10),
                      SessionCounterWidget(
                        title: 'Reset sessions count each',
                        onValueChanged: (resetSessionCount) {
                          // Si nécessaire, gérer le reset ici
                        },
                        isNumberOfDays: true,
                      ),
                      const SizedBox(height: 10),
                     SessionCounterWidget(
                        title: 'Validity',
                        onValueChanged: (validity) {
                          // Si nécessaire, gérer le reset ici
                        },
                        isNumberOfDays: true,
                      ),
                      const SizedBox(height: 10),
                      _buildField(
                        label: 'Price',
                        initialValue: '20dt',
                        controller: priceController,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          height: 44,
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
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Passez `numberOfSessions` lors de la confirmation
                          onConfirm();
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 44,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF89B4FA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Confirm',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF45475A),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
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

  static Widget _buildField({
    required String label,
    required String initialValue,
    required TextEditingController controller,
  }) {
    return Container(
      width: double.infinity,
      height: 54,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFF45475A),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: TextFormField(
        controller: controller..text = initialValue,
        style: const TextStyle(
          color: Color(0xFFCDD6F4),
          fontSize: 14,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(
            color: Color(0xFF6C7086),
            fontSize: 8,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
