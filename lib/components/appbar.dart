import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website/components/centered_view.dart';
import 'package:website/functions/custom_color.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff1F2935),
//      padding: EdgeInsets.symmetric(vertical: 40),
      alignment: Alignment.center,
      child: CenteredView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [NavBarLogo(), NavBarItemList()],
        ),
      ),
    );
  }
}

class NavBarLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/colorIcon.png",width: 35,),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text("Aligator",style: TextStyle(color: primaryColor,fontSize: 25,fontFamily: 'Aveden'),),
          )
        ],
      ),
    );
  }
}

class NavBarItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          NavBarItems(
            isActive: true,
            title: "Home",
          ),
          SizedBox(
            width: 40,
          ),
          NavBarItems(
            title: "About us",
          ),
          SizedBox(
            width: 40,
          ),
          NavBarItems(
            title: "Services",
          ),
          SizedBox(
            width: 40,
          ),
          NavBarItems(
            title: "Portfolio",
          ),
          SizedBox(
            width: 40,
          ),
          NavBarItems(
            title: "Contact",
          ),
        ],
      ),
    );
  }
}

class NavBarItems extends StatelessWidget {
  final String title;
  final bool isActive;
  NavBarItems({@required this.title, this.isActive = false});
  @override
  Widget build(BuildContext context) {
    Color color = isActive ? primaryColor : navItemColor;
    return Container(
//      padding: EdgeInsets.only(right: 50.0),
      child: Text(
        title,
        style: TextStyle(color: color),
      ),
    );
  }
}
