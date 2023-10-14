import 'package:flutter/material.dart';
import 'package:todo_app_2/ui/custom%20widgets/bottom%20sheet/bottom%20sheet.dart';
import 'package:todo_app_2/ui/screens/list%20screen/list_screen.dart';
import 'package:todo_app_2/ui/screens/settings%20screen/setttings_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  static const String routeName = "Homelayout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;

  List<Widget> screens = [const ListScreen(), const SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      width: mediaQuery.width,
      height: mediaQuery.height,
      color: theme.colorScheme.background,
      child: Scaffold(
        extendBody: false,
        body: screens[selectedIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              builder: (context) => Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: const CustomBottomSheet(),
              ),
            );
          },
          backgroundColor: theme.colorScheme.primary,
          shape: const StadiumBorder(
            side: BorderSide(width: 4, color: Colors.white),
          ),
          elevation: 3,
          child: const Icon(Icons.add, size: 32, color: Colors.white),
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          clipBehavior: Clip.hardEdge,
          shape: const CircularNotchedRectangle(),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.list), label: "list"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "settings"),
            ],
          ),
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
