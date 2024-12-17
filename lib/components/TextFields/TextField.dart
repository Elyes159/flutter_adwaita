import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final bool hasError;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.hasError,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();

    // Ajoutez un écouteur pour détecter les changements de focus
    _focusNode.addListener(() {
      setState(() {}); // Rebuild the widget to update the icon visibility
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

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
        color: widget.hasError ? const Color(0x3FF38BA8) : const Color(0xFF313244),
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
              controller: widget.controller,
              focusNode: _focusNode, // Attachez le FocusNode ici
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: widget.labelText,
                hintStyle: const TextStyle(
                  color: Color(0xFFCDD6F4),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 14),
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
          // Affiche l'icône si le champ n'est pas focalisé
          if (!_focusNode.hasFocus)
            Container(
              width: 11.20,
              height: 14,
              child: SvgPicture.asset(
                'assets/Icons/Group.svg',
                width: 11.20,
                height: 14,
              ),
            ),
         if (widget.labelText == "Password") ...[
            const SizedBox(width: 24),
            Container(
              width: 20,
              height: 20,
              child: SvgPicture.asset(
                'assets/Icons/Frame.svg',
                width: 20,
                height: 20,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
