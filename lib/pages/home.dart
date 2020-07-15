import 'package:flutter/material.dart';
import 'package:website/components/appbar.dart';
import 'package:website/components/centered_view.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              NavBar()
            ],
          ),
        ),
      ),
    );
  }
}
