import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PackOrMemberShipCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback? onEdit; // Fonction pour l'édition
  final VoidCallback? onDelete; // Fonction pour la suppression
  final VoidCallback? onViewDetails;
  final bool isDetails;
  final bool? isPack;

  const PackOrMemberShipCard({
    Key? key,
    required this.title,
    required this.description,
    this.onEdit,
    this.onDelete,
    this.onViewDetails,
    required this.isDetails,
     this.isPack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100.0, right: 100),
      child: InkWell(
        onTap: onViewDetails,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color(0xFF313244),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFFCDD6F4),
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Color(0xFF6C7086),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: onEdit,
                    child: SvgPicture.asset("assets/Icons/Group.svg"),
                  ),
                  const SizedBox(width: 21),
                  InkWell(
                    onTap: onDelete,
                    child: SvgPicture.asset("assets/Icons/poubelle.svg"),
                  ),
                 
                  if (!isDetails) ...[
                     const SizedBox(width: 21),
                       InkWell(
                    onTap: onViewDetails,
                    child: SvgPicture.asset("assets/Icons/arrow_next.svg")),
                  const SizedBox(width: 18),
                  ]
                 
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
