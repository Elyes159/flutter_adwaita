import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../TitleBarsButton/ButtonBar.dart';
import '../showdialogs/createPack.dart';

class SheduleCustomTitleBar extends StatelessWidget {
  final String currentPage;
  final Widget scheduleScreen;
  final Widget packsScreen;
  final Widget userStatScreen;
  final VoidCallback onAddSessionTap;

  const SheduleCustomTitleBar({
    super.key,
    required this.currentPage,
    required this.scheduleScreen,
    required this.packsScreen,
    required this.userStatScreen,
    required this.onAddSessionTap,
  });

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
                onTap: onAddSessionTap,
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
                                  builder: (context) => scheduleScreen,
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
                                  builder: (context) => packsScreen,
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
                                  builder: (context) => userStatScreen,
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
                  SizedBox(width: 21),
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
                  SizedBox(width: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
