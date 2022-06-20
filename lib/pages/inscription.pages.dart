import 'package:brazil_burger_client/pages/principal.pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'delayed.pages.dart';
import 'home.pages.dart';
import 'listArticle.dart';

class InscriptionPage extends StatefulWidget {
  const InscriptionPage({Key? key}) : super(key: key);

  @override
  State<InscriptionPage> createState() => _InscriptionPageState();
}

class _InscriptionPageState extends State<InscriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.yellow,
          leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
              size: 30,
            ),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DelayedAnimation(
                      delay: 1000,
                      child: Text(
                          "Inscription",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 50.0,
                              fontWeight: FontWeight.w600)
                      ),
                    ),
                    SizedBox(height: 10),
                    DelayedAnimation(
                      delay: 2000,
                      child: Text(
                          "Veuillez renseigner vos informations",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600)
                      ),
                    ),
                  ],
                ),
              ),
              registerForm(),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.all(20.0),
                child: DelayedAnimation(
                  delay: 4000,
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.yellow,
                        shadowColor: Colors.yellowAccent,
                        shape: StadiumBorder(),
                        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                       ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => listArticle(),
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

              //SizedBox(height: 5),
              Container(
                padding: EdgeInsets.all(20.0),
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
                            builder: (context) => listArticle(),
                          ),
                        );
                      },
                      child: Text(
                          "Passer",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                ),
              )

            ],
          ),
        )
    );
  }
}


class registerForm extends StatefulWidget {
  const registerForm({Key? key}) : super(key: key);

  @override
  State<registerForm> createState() => _registerFormState();
}

class _registerFormState extends State<registerForm> {
  var _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
      horizontal: 30,
    ),
      child: Column(
        children: [
          const DelayedAnimation(
            delay: 3000,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Nom',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          const DelayedAnimation(
            delay: 3200,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Prenom',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          const DelayedAnimation(
            delay: 3400,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Telephone',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          DelayedAnimation(
            delay: 3600,
            child: TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                labelText: 'Mot de passe',
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.visibility,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
          ),
          DelayedAnimation(
            delay: 3800,
            child: TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                labelText: 'Confirmez le mot de passe',
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.visibility,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
