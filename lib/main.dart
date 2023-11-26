import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );

  }
}

class SplashScreen extends StatelessWidget {
  get poppins => null;

  @override
  Widget build(BuildContext context) {
    // Utilisez FutureBuilder pour créer un délai de 3 secondes
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, snapshot) {
        // Vérifiez si la durée est écoulée
        if (snapshot.connectionState == ConnectionState.done) {
          // Si c'est le cas, naviguez vers la page principale
          return MyHomePage();
        } else {
          // Sinon, affichez l'écran de démarrage
          return Scaffold(
            backgroundColor: Colors.green,
            body: Center(
              child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.green,
                    ),
                  ),
                  child:Text("Blogify",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      backgroundColor: Colors.white,
                      fontFamily: poppins,
                    ),
                  )
              ),

            ),
          );
        }
      },
    );
  }
}


class MyHomePage extends StatelessWidget {
  get poppins => null;

  get childreen => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
      child: ListView(
        children: [
          Align(
            child: Text('Blogify',
              style:TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ) ,
            ),
          ),
          TextButton(
              onPressed: (){

              }
              ,
              child: Text("Connexion",
                  style: TextStyle(
                      fontSize: 40,
                      backgroundColor: Colors.white,
                      color: Colors.black

                  ),
                  textScaleFactor: 1)
          ),
          TextButton(
              onPressed: (){

              }
              ,
              child: Text('Inscription',
                  style: TextStyle(
                  fontSize: 40,
                  backgroundColor: Colors.white,
                  color: Colors.black

              ),)
          ),

        ],
      ),

     ),
    );

  }

}