import 'package:brazil_burger_client/pages/burgerList.pages.dart';
import 'package:brazil_burger_client/pages/home.pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class PrincipalePage extends StatelessWidget {
  const PrincipalePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:  [
          HomePage(),
          //BurgerList(),
        ],
      ),
    );
  }
}
