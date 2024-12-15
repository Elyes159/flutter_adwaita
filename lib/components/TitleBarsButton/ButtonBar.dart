import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonBars extends StatelessWidget {
  final VoidCallback onPressed;
  final String textButton;
  final String imagePath;
  final bool isActive; // Nouveau paramètre booléen

  // Constructeur pour accepter une fonction callback, un texte et une image
  const ButtonBars({
    Key? key,
    required this.onPressed,
    required this.textButton,
    required this.imagePath,
    this.isActive = false, // Par défaut, `isActive` est faux
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed, // Action à exécuter lorsqu'on clique
      borderRadius:
          BorderRadius.circular(6), // Effet d'ondulation sur le bouton
      child: Container(
        width: textButton == "Users"
            ? 120
            : textButton == "Packs & Memberships"
                ? 231
                : 147,
        height: 34,
        decoration: BoxDecoration(
          color: isActive
              ? const Color(0xFF313244)
              : Colors.transparent, // Change la couleur si `isActive` est vrai
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 20,
                height: 20,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: SvgPicture.asset(
                  imagePath,
                  width: 24,
                  height: 24,
                ),
              ),
              const SizedBox(width: 7),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, bottom: 8, top: 8),
                child: Text(
                  textButton,
                  style: const TextStyle(
                    color: Color(0xFFCDD6F4),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
