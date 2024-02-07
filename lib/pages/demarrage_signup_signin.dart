import 'package:flutter/material.dart';
import 'package:raoul_product/pages/connexion.dart';
import 'package:raoul_product/pages/inscription.dart';

class DemarrageSignupSignin extends StatefulWidget {
  const DemarrageSignupSignin({super.key});

  @override
  State<DemarrageSignupSignin> createState() => _DemarrageSignupSigninState();
}

class _DemarrageSignupSigninState extends State<DemarrageSignupSignin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/image11.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/images/blogiffy.png', width: 250,),
            ),
            const SizedBox(height: 300,),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(Colors.white),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
                padding: const MaterialStatePropertyAll(EdgeInsets.only(top: 10, right: 50, left: 50, bottom: 10))
              ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Connexion())
                  );
                },
                child: const Text("Connexion", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),)
            ),
            const SizedBox(height: 40,),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(Color(0xFF018e49)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
                    padding: const MaterialStatePropertyAll(EdgeInsets.only(top: 10, right: 50, left: 50, bottom: 10))
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Inscription())
                  );
                },
                child: const Text("Inscription", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),)
            ),
          ],
        ),
      ),
    );
  }
}
