import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreateGroupDialog {
  static void show(BuildContext context, VoidCallback onConfirm,
      TextEditingController controller) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(20), // Applique la bordure arrondie ici
          ),
          child: SingleChildScrollView(
            child: Container(
              width: 433,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color(0xFF313244),
                borderRadius:
                    BorderRadius.circular(20), // Vérification supplémentaire
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
                          child:
                              SvgPicture.asset("assets/Icons/createPack.svg"),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Create a group',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFCDD6F4),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: controller,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            filled: true,
                            fillColor: const Color(0xFF45475A),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide.none, // Pas de bordure visible
                            ),
                            labelText: 'Name',
                            labelStyle: const TextStyle(
                              color: Color(0xFF6C7086),
                              fontSize: 8,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                            hintText: 'EMS',
                            hintStyle: const TextStyle(
                              color: Color(0xFFCDD6F4),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          style: const TextStyle(
                            color: Color(0xFFCDD6F4),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
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
                            onConfirm(); // Appelle la fonction passée en paramètre
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
          ),
        );
      },
    );
  }
}
