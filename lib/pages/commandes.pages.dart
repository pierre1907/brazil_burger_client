import 'package:brazil_burger_client/widgets/shared/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/shared/menu.widgets.dart';
import 'delayed.pages.dart';

class commandesPages extends StatefulWidget {
  const commandesPages({Key? key}) : super(key: key);

  @override
  State<commandesPages> createState() => _commandesPagesState();
}

class _commandesPagesState extends State<commandesPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: "Brazil Burger"),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          width: double.infinity,
          color: Color(0xFFF6F6F6),
          //height: 100.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DelayedAnimation(
                  delay: 950,
                  child: Text(
                      "Liste des commandes",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600)
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
