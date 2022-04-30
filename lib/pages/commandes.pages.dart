import 'package:brazil_burger_client/widgets/shared/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class commandesPages extends StatefulWidget {
  const commandesPages({Key? key}) : super(key: key);

  @override
  State<commandesPages> createState() => _commandesPagesState();
}

class _commandesPagesState extends State<commandesPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: "Mes commandes"),
    );
  }
}
