import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/tasks.models.dart';

class ArticlesItem extends StatefulWidget {
  TaskModel articlesModel;
  ArticlesItem({Key? key, required this.articlesModel}) : super(key: key);

  @override
  State<ArticlesItem> createState() => _ArticlesItemState();
}

class _ArticlesItemState extends State<ArticlesItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
      decoration: BoxDecoration(
          color: Colors.yellowAccent,
          borderRadius: BorderRadius.circular(15.0)
      ),
      child: Column(
        children: [
          Text(
            widget.articlesModel.titre,
            style: TextStyle(
                color: Color(0xFF211551),
                fontSize: 16.0,
                fontWeight: FontWeight.w600),
          ),
          Text(
            widget.articlesModel.description,
            style: TextStyle(
                color: Color(0xFF211551),
                fontSize: 16.0,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),

    );
  }
}
