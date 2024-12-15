import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAlertBox extends StatelessWidget {
  final String message;
  final VoidCallback onClose; // Fonction appelée lors du clic sur l'icône
  final bool isVisible; // Contrôle l'affichage du widget

  const CustomAlertBox({
    Key? key,
    required this.message,
    required this.onClose,
    required this.isVisible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!isVisible) {
      return SizedBox.shrink(); // Renvoie un widget vide si non visible
    }
    return Container(
      width: 376,
      height: 46,
      padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 11),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xCC11111B),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 1.0,
            ),
          ),
          InkWell(
            onTap: onClose, // Appel de la fonction passée
            child: SvgPicture.asset(
              'assets/Icons/closeError.svg',
              width: 11.20, // Spécifiez la largeur
              height: 14, // Spécifiez la hauteur
            ),
          ),
        ],
      ),
    );
  }
}
