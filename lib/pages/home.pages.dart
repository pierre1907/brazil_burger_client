import 'package:brazil_burger_client/widgets/shared/widget.dart';
import 'package:flutter/material.dart';

import '../models/tasks.models.dart';
import '../services/tasks.services.dart';
import '../widgets/shared/menu.widgets.dart';
import '../widgets/tasks/articles.item.widget.dart';
import 'burgerList.pages.dart';
import 'delayed.pages.dart';

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
              SizedBox(height:20),
              //zone de recherche
              DelayedAnimation(
                  delay: 750,
                  child: Card(
                    elevation: 10,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: "Entrez le produit que vous voulez",
                          suffixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.only(left: 20)
                      ),
                    ),
                  ),
              ),
              SizedBox(height:20),

              //list de categorie
              DelayedAnimation(
                  delay: 850,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 20.0, top: 34.0),
                          child: Image(image: AssetImage("assets/images/logo.jpg"))),
                      Expanded(child: ListView.builder(
                        itemCount: tasks.length,
                        itemBuilder: (context,index){
                          return ArticlesItem(articlesModel: tasks[index],);
                        },
                      ))
                    ],
                  ),
              )


              ],
            ),
          ),
        ),
    );
  }
}




