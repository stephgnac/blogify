import 'package:flutter/material.dart';
import 'connexion.dart';

class OubliPassword extends StatefulWidget {
  const OubliPassword({super.key});

  @override
  State<OubliPassword> createState() => _OubliPasswordState();
}

class _OubliPasswordState extends State<OubliPassword> {

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/image11.jpg',), fit: BoxFit.cover
              )
          ),
          child: Column(
            children: [
              Image.asset('assets/images/Blogify1.png', width: 150,),
              const SizedBox(height: 155,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                width: double.infinity,
                padding: const EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text("Mot de passe oublié", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Row(
                      children: [
                        Text("Réinitialise ton mot de passe via ton adresse \n mail de connexion.", style: TextStyle(fontSize: 16), textAlign: TextAlign.justify,),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: _emailController,
                              decoration: const InputDecoration(
                                  hintText: "Identifiant ou E-mail",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black)
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black)
                                  )
                              ),
                              validator: (String? value) {
                                return (value == null || value == '') ?
                                "Ce champ est obligatoire" : null;
                              },
                            ),
                            const SizedBox(height: 50,),
                            SizedBox(
                              width: 220,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: const MaterialStatePropertyAll(Color(0xFF018e49)),
                                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
                                      padding: const MaterialStatePropertyAll(EdgeInsets.only(top: 10, right: 40, left: 40, bottom: 10))
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const Connexion())
                                    );
                                  },
                                  child: const Row(
                                    children: [
                                      Text("Envoyer", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
                                      SizedBox(width: 5,),
                                      Icon(Icons.arrow_right_alt, color: Colors.white,)
                                    ],
                                  )
                              ),
                            ),
                            const SizedBox(height: 20,),
                          ],
                        )
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
