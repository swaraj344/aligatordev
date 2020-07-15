import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          NavBarItemList()
        ],
      ),
    );
  }
}

class NavBarLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Aligator"),
    );
  }
}

class NavBarItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          NavBarItems(title: "Home",),
          NavBarItems(title: "Services",),
          NavBarItems(title: "Portfolio",),
          NavBarItems(title: "About",),
          NavBarItems(title: "Contact",),
        ],
      ),
    );
  }
}


class NavBarItems extends StatelessWidget {
  final String title;
  NavBarItems({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.only(right: 50.0),
      child: Text(title),
    );
  }
}

