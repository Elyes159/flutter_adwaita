import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBarUser extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final FocusNode focusNode; 
  final VoidCallback onPressed;// Ajout du FocusNode

  const SearchBarUser({
    super.key,
    required this.controller,
    required this.hintText,
    required this.focusNode,
    required this.onPressed // Ajout du FocusNode dans le constructeur
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 640,
      height: 54,
      padding: const EdgeInsets.only(
        top: 10,
        left: 15,
        right: 24,
        bottom: 10,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFF313244),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center, // Ensures vertical centering of Row contents
        children: [
          // Logo on the left
          Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 18,
                  height: 18,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: SvgPicture.asset("assets/Icons/search.svg"), // You can replace this with your custom logo
                ),
                const SizedBox(width: 15),
              ],
            ),
          ),

          // Search bar (TextField)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Align(
                alignment: Alignment.center, // Center the TextField vertically
                child: GestureDetector(
                  onTap: onPressed,
                  child: TextField(
                    controller: controller,
                    focusNode: focusNode, // Associer le FocusNode ici
                    decoration: InputDecoration(
                      hintText: hintText,
                      hintStyle: const TextStyle(
                        color: Color(0xFF6C7086),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                      border: InputBorder.none,
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                    cursorColor: Color(0xFF6C7086),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
