import 'package:brazil_burger_client/pages/connexion.pages.dart';
import 'package:brazil_burger_client/pages/inscription.pages.dart';
import 'package:flutter/material.dart';

import '../models/tasks.models.dart';
import '../pages/commandes.pages.dart';
import '../pages/home.pages.dart';


class Services {
  static List getMenu() {
    return [
      {"title": "Accueil", "icon": Icons.home, "page": HomePage()},
      {
        "title": "Suivre ses commandes",
        "icon": Icons.shopping_cart,
        "page": commandesPages()
      },
      {
        "title": "Se connceter",
        "icon": Icons.login_sharp,
        "page": connexionPage()
      },
      {
        "title": "Creer un compte",
        "icon": Icons.app_registration_rounded,
        "page": InscriptionPage()
      }

    ];
  }


  static List<TaskModel> getTasks() {
    return [
      TaskModel(
          titre: "Burger 1", description: "C'est le burger 1", prix: 2500),
    ];
  }

}