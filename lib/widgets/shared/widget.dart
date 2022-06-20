import 'package:flutter/material.dart';



AppBar appBar({required String title}){
  return AppBar(
    centerTitle: true,
    title: Text(title,
      style: TextStyle(
        color: Colors.black,
        fontSize: 25.0,
        fontWeight: FontWeight.w600)),
    actions: const[
      IconButton(
          onPressed: null,
          icon: Icon(
              Icons.shopping_cart,
              color: Colors.black
          )
      ),
      IconButton(
          onPressed: null,
          icon: Icon(
            Icons.logout,
            color: Colors.black
      ))
    ],
  );

}


