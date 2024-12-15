import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateUserButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CreateUserButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: 206,
        height: 44,
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: const Color(0xFF89B4FA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/Icons/add.svg",
              width: 14,
              height: 14,
            ),
            const SizedBox(width: 10),
            const Text(
              'Create new user',
              style: TextStyle(
                color: Color(0xFF181825),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoleBadge extends StatelessWidget {
  final String userRole;

  const RoleBadge({
    Key? key,
    required this.userRole,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: userRole == "Trainee"
            ? const Color(0xFFB4BEFE)
            : userRole == "Trainer"
                ? Color(0xFF89B4FA)
                : userRole == "Staff"
                    ? Color(0xFFA6E3A1)
                    : Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            userRole,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xFF313244),
              fontSize: 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final String title;
  final String count;
  final String icon;

  const StatCard({
    Key? key,
    required this.title,
    required this.count,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 133,
      padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 18),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFF313244),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon Container
          Container(
            width: 80,
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: title == "Trainees"
                  ? Color(0xFFB4BEFE)
                  : title == "Trainers"
                      ? Color(0xFF74C7EC)
                      : title == "Staff"
                          ? Color(0xFFA6E3A1)
                          : title == "Admin"
                              ? Color(0xFFF38BA8)
                              : Color(0xffffffff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Center(child: SvgPicture.asset(icon)),
          ),
          const SizedBox(width: 32),
          // Text Section
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xFF6C7086),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                count,
                style: const TextStyle(
                  color: Color(0xFFCDD6F4),
                  fontSize: 58,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w900,
                  height: 1.2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class UserInfoWidget extends StatelessWidget {
  final String userName;
  final String userRole;
  final bool isTopRounded; // Flag for top corners
  final bool isBottomRounded;
  final VoidCallback? onBan;
  final VoidCallback? onAddBalance;
  final VoidCallback? onEdit; // Flag for bottom corners

  const UserInfoWidget({
    Key? key,
    required this.userName,
    required this.userRole,
    required this.isTopRounded,
    required this.isBottomRounded,
    this.onBan,
    this.onAddBalance,
    this.onEdit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1.0, right: 20, left: 20),
      child: Container(
        width: 1000,
        height: 54,
        padding: const EdgeInsets.only(
          top: 15,
          left: 15,
          right: 18,
          bottom: 15,
        ),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: const Color(0xFF313244),
          borderRadius: BorderRadius.only(
            topLeft: isTopRounded ? Radius.circular(10) : Radius.zero,
            topRight: isTopRounded ? Radius.circular(10) : Radius.zero,
            bottomLeft: isBottomRounded ? Radius.circular(10) : Radius.zero,
            bottomRight: isBottomRounded ? Radius.circular(10) : Radius.zero,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Left section: Username and Role
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  userName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                const SizedBox(width: 10),
                RoleBadge(userRole: userRole),
              ],
            ),
            const SizedBox(width: 10),
            // Right section: Action Icons
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Ban icon wrapped with InkWell
                InkWell(
                  onTap: onBan,
                  child: SvgPicture.asset("assets/Icons/ban.svg"),
                ),
                const SizedBox(width: 20),
                // Add Balance icon wrapped with InkWell
                InkWell(
                  onTap: onAddBalance,
                  child: SvgPicture.asset("assets/Icons/card.svg"),
                ),
                const SizedBox(width: 20),
                // Edit icon wrapped with InkWell
                InkWell(
                  onTap: onEdit,
                  child: SvgPicture.asset("assets/Icons/arrow_next.svg"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
