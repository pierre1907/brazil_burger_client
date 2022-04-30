import 'package:brazil_burger_client/pages/connexion.pages.dart';
import 'package:brazil_burger_client/pages/delayed.pages.dart';
import 'package:brazil_burger_client/pages/inscription.pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.pages.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            children: [

              //Partie Logo
              Container(
                padding: EdgeInsets.all(50.0),
                child: DelayedAnimation(
                  delay: 1500,
                    child: Container(
                        height: 200.0,
                        child: Image(
                          image: AssetImage("assets/images/logo.png")
                      )
                    ),

                ),
              ),

              //Partie Text
              Container(
                padding: EdgeInsets.only(top:15.0, bottom: 20.0),
                child: DelayedAnimation(
                  delay: 2500,
                  child: Container(
                      child: Text(
                  "Bienvenue dans l'application de Brazil burger Connectez "
                  "vous si vous avez un compte en creer le dans le cas contraire. "
                  "NB: Vous pourrez le faire plus tard",
                    textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),


              //Boutton Connexion
              Container(
                padding: EdgeInsets.all(5.0),
                child: DelayedAnimation(
                  delay: 4500,
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.yellow,
                        shadowColor: Colors.yellowAccent,
                        shape: StadiumBorder(),
                        padding: EdgeInsets.all(15.0),
                      ),
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context) => connexionPage(),
                        ),
                        );
                      },
                      child: Text(
                          "Se connecter",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),

                ),
              ),

              //Boutton Inscriptipon
              Container(
                padding: EdgeInsets.only(top:15.0, bottom: 20.0),
                child: DelayedAnimation(
                  delay: 4500,
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.yellow,
                        shadowColor: Colors.yellowAccent,
                        shape: StadiumBorder(),
                        padding: EdgeInsets.all(15.0),
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder:(context) => InscriptionPage(),
                          ),
                        );
                      },
                      child: Text(
                          "S'inscrire",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),

                ),
              ),


              //Passer sans Se connecter/S'inscrire
              Container(
                padding: EdgeInsets.only(top:15.0, bottom: 20.0),
                child: DelayedAnimation(
                  delay: 4500,
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: StadiumBorder(),
                        padding: EdgeInsets.all(15.0),
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },

                      child: Text(
                          "Passer",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),

                ),
              )

            ],
          ),
        ),
      ),

    );
  }
}
