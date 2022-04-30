import 'package:brazil_burger_client/pages/delayed.pages.dart';
import 'package:flutter/material.dart';

import '../../services/tasks.services.dart';

class menuWidget extends StatefulWidget {
  const menuWidget({Key? key}) : super(key: key);

  @override
  State<menuWidget> createState() => _menuWidgetState();
}

class _menuWidgetState extends State<menuWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white70,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.yellowAccent),
                child: Text(
                  "Menu", style: TextStyle(color: Colors.black,fontSize: 18),
                )),
          ),
          Expanded(
            child: DelayedAnimation(
              delay: 500,
              child: ListView(
                padding: EdgeInsets.zero,
                //shrinkWrap: true,
                itemExtent: 70,
                children: generateMenuItems(),
              ),
            )
          )
        ],
      ),
    );
  }

  List<Card> generateMenuItems(){
    List<Card> cards = [];
    List menus = Services.getMenu();
    for (var menu in menus) {
      cards.add(
          Card(
            margin: EdgeInsets.all(6),
            child: ListTile(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => menu["page"]
                    )
                );
              },
              leading: Icon(menu["icon"],color: Colors.black87,),
              title: Text(menu["title"],style: TextStyle(color: Colors.black,fontSize: 18)) ,
            ),
          )
      );
    }
    return cards;
  }


}
