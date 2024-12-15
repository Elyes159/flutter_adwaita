import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final String timeInterval;
  final String sessionName;
  final String trainerName;
  final String room;

  // Constructeur pour recevoir les paramètres
  const ScheduleCard({
    required this.timeInterval,
    required this.sessionName,
    required this.trainerName,
    required this.room,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 124,
      height: 215,
      padding: const EdgeInsets.all(10),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0x3374C7EC),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Opacity(
              opacity: 0.50,
              child: Text(
                timeInterval, // Interval de temps passé en paramètre
                style: const TextStyle(
                  color: Color(0xFFCDD6F4),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: Text(
              sessionName, // Nom de la session passé en paramètre
              style: const TextStyle(
                color: Color(0xFFCDD6F4),
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: Text(
              trainerName, // Nom du formateur passé en paramètre
              style: const TextStyle(
                color: Color(0xFFA6ADC8),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: Text(
              room, // Nom de la salle passé en paramètre
              style: const TextStyle(
                color: Color(0xFFA6ADC8),
                fontSize: 12,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
