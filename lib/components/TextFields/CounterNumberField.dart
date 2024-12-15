import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SessionCounterWidget extends StatefulWidget {
  final String title;
  final Function(int) onValueChanged;
  final bool isNumberOfDays; // Callback pour envoyer la valeur

  // Constructor pour accepter le titre et la fonction callback
  SessionCounterWidget({
    required this.title,
    required this.onValueChanged,
    required this.isNumberOfDays
  });

  @override
  _SessionCounterWidgetState createState() => _SessionCounterWidgetState();
}

class _SessionCounterWidgetState extends State<SessionCounterWidget> {
  int numberOfSessions = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 403,
      height: 54,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFF45475A),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              color: Color(0xFFCDD6F4),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          Row(
            children: [
              if(widget.isNumberOfDays)
              Text(
                "$numberOfSessions Days",
                style: const TextStyle(
                  color: Color(0xFFCDD6F4),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              )
              else 
              Text(
                "$numberOfSessions",
                style: const TextStyle(
                  color: Color(0xFFCDD6F4),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (numberOfSessions > 0) {
                      numberOfSessions--;
                    }
                  });
                  widget.onValueChanged(numberOfSessions); // Envoyer la nouvelle valeur
                },
                child: SvgPicture.asset(
                  "assets/Icons/mines.svg",
                  fit: BoxFit.scaleDown,
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  setState(() {
                    numberOfSessions++;
                  });
                  widget.onValueChanged(numberOfSessions); // Envoyer la nouvelle valeur
                },
                child: SvgPicture.asset(
                  "assets/Icons/plus.svg",
                  fit: BoxFit.scaleDown,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
