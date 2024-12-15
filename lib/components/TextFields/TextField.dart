import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool hasError; // Propriété pour l'état d'erreur

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.hasError, // Valeur par défaut à false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 54,
      padding: const EdgeInsets.only(
        top: 10,
        left: 15,
        right: 24,
        bottom: 10,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: hasError
            ? const Color(0x3FF38BA8)
            : const Color(0xFF313244), // Changement de couleur si erreur
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              textAlignVertical:
                  TextAlignVertical.center, // Centrer le texte verticalement
              decoration: InputDecoration(
                hintText: labelText,
                hintStyle: const TextStyle(
                  color: Color(0xFFCDD6F4),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                    vertical:
                        14), // Ajuster la marge verticale pour centrer le texte
              ),
              style: const TextStyle(
                color: Color(0xFFCDD6F4),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 11.20,
            height: 14,
            child: SvgPicture.asset(
              'assets/Icons/Group.svg',
              width: 11.20, // Spécifiez la largeur
              height: 14, // Spécifiez la hauteur
            ),
          ),
          if (labelText == "Password") ...[
            const SizedBox(width: 24),
            Container(
              width: 11.20,
              height: 14,
              child: SvgPicture.asset(
                'assets/Icons/Frame.svg',
                width: 11.20, // Spécifiez la largeur
                height: 14, // Spécifiez la hauteur
              ),
            ),
          ],
        ],
      ),
    );
  }
}
