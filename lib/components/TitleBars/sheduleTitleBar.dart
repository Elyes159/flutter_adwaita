import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:peps_admin/Components/TitleBarsButton/ButtonBar.dart';
import 'package:peps_admin/Components/showdialogs/createPack.dart';
import 'package:peps_admin/Screens/Users/UserStat.dart';
// ignore: unused_import
import 'package:peps_admin/Screens/packs/packScreen.dart';
import 'package:peps_admin/Screens/sessions/shedule.dart';

class SheduleCustomTitleBar extends StatelessWidget {
  final String
      currentPage; // Ajout d'une propriété pour identifier la page active

  const SheduleCustomTitleBar({super.key, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return WindowTitleBarBox(
      child: Expanded(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: InkWell(
                onTap: () {
                  if (currentPage == "Packs") {
                    CreateGroupDialog.show(context, () {}, controller);
                  }
                },
                child: SvgPicture.asset("assets/Icons/addSession.svg"),
              ),
            ),
            Expanded(
              child: MoveWindow(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 100.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonBars(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ScheduleScreen(),
                                ),
                              );
                            },
                            textButton: 'Schedule',
                            imagePath: 'assets/Icons/shedule.svg',
                            isActive: currentPage ==
                                'Schedule', // Vérifie si la page est active
                          ),
                          ButtonBars(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Packs(),
                                ),
                              );
                            },
                            textButton: 'Packs & Memberships',
                            imagePath: 'assets/Icons/packs.svg',
                            isActive: currentPage ==
                                'Packs', // Vérifie si la page est active
                          ),
                          ButtonBars(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UserStat(),
                                ),
                              );
                            },
                            textButton: 'Users',
                            imagePath: 'assets/Icons/users.svg',
                            isActive: currentPage ==
                                'Users', // Vérifie si la page est active
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/Icons/more.svg',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  SizedBox(
                    width: 21,
                  ),
                  InkWell(
                    onTap: () {
                      appWindow.close();
                    },
                    child: SvgPicture.asset(
                      'assets/Icons/close.svg',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
