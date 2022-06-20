import 'package:brazil_burger_client/widgets/shared/widget.dart';
import 'package:flutter/material.dart';

import '../models/tasks.models.dart';
import '../services/tasks.services.dart';
import '../widgets/shared/menu.widgets.dart';
import '../widgets/tasks/articles.item.widget.dart';
import 'burgerList.pages.dart';
import 'delayed.pages.dart';
import 'listArticle.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  int currentSelectedItem = 0;
  @override
    Widget build(BuildContext context) {
    List <TaskModel> tasks=Services.getTasks();
    return Scaffold(
      appBar: appBar(title: "Brazil Burger"),
      drawer: menuWidget(),
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
                  child: listArticle(),
                  delay: 950
              )
              ],
            ),
          ),
        ),
    );
  }
}




