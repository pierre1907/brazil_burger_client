import 'package:brazil_burger_client/pages/delayed.pages.dart';
import 'package:brazil_burger_client/pages/home.pages.dart';
import 'package:brazil_burger_client/pages/principal.pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/shared/widget.dart';
import 'listArticle.dart';



class connexionPage extends StatefulWidget {
  const connexionPage({Key? key}) : super(key: key);

  @override
  State<connexionPage> createState() => _connexionPageState();
}

class _connexionPageState extends State<connexionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: "Connexion",
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
                      "Connexion",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 50.0,
                            fontWeight: FontWeight.w600)
                    ),
                  ),
                  SizedBox(height: 22),
                  DelayedAnimation(
                      delay: 2000,
                      child: Text(
                      "Veuillez vous connecter avec votre login et mot de passe"
                          " fournis lors de votre inscription",
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
            loginform(),
            SizedBox(height: 35),

          Container(
            padding: EdgeInsets.all(20.0),
            child: DelayedAnimation(
              delay: 5500,
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
                      "Se Connecter",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600)),
                ),
              ),

            ),
          ),
          //SizedBox(height: 50),
          Container(
            padding: EdgeInsets.all(20.0),
            child: DelayedAnimation(
              delay: 5800,
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


class loginform extends StatefulWidget {
  const loginform({Key? key}) : super(key: key);

  @override
  State<loginform> createState() => _loginformState();
}

class _loginformState extends State<loginform> {

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
                labelText: 'Login',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          DelayedAnimation(
            delay: 4000,
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
                    color: Colors.yellow,
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

