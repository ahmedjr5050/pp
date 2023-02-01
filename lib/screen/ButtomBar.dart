import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class ButtomBar extends StatefulWidget {
  const ButtomBar({Key? key}) : super(key: key);

  @override
  State<ButtomBar> createState() => _ButtomBarState();
}


class _ButtomBarState extends State<ButtomBar> {
  @override
  int selectindex=3;
  static final List<Widget> _optionWidget =<Widget>[
  const Text("Home"),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile"),
  ];
  void _onTabe(int index){
    setState(() {
    selectindex=index;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar (
    title : const  Text("My tickets"),

  ),
  body: Center(child:
  _optionWidget[selectindex],
  ),

  bottomNavigationBar:BottomNavigationBar(
   onTap: _onTabe,
    currentIndex: selectindex,

    elevation: 10,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    selectedItemColor: Colors.blueGrey,
    unselectedItemColor: const Color(0xFF526480),
    items: const [
    BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),label: "Home",activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),),
      BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
          label:"Search"),
    BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
    activeIcon: Icon(FluentSystemIcons.ic_fluent_text_add_filled),
      label: "Ticket"),
      BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
          label:"Profile"),

    ],
  ) ,


    );



  }
}
