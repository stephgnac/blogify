import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:raoul_product/pages/blogs.dart';
import 'package:raoul_product/pages/oubli_password.dart';

class Connexion extends StatefulWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {

  final _formKey = GlobalKey<FormState>();
  final _identifiantOrEmailController = TextEditingController();
  final _passwordController = TextEditingController();
  String? _errorMessage;

  Future<void> _loginUser() async {
    try {
      final response = await http.post(
        Uri.parse('http://127.0.0.1:8000/api/login'), // Remplacez par l'URL correcte
        body: {
          'identifiant': _identifiantOrEmailController.text,
          'password': _passwordController.text,
        },
      );

      if (response.statusCode == 200) {
        // Connexion réussie
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Blogs()),
        );
      } else {
        // Connexion échouée
        final jsonResponse = json.decode(response.body);
        setState(() {
          _errorMessage = jsonResponse['message'];
        });
      }
    } catch (e) {
      // Erreur lors de l'appel API
      setState(() {
        _errorMessage = 'Erreur lors de la connexion';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/image11.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Image.asset('assets/images/Blogify1.png', width: 150),
            const SizedBox(height: 155),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              width: double.infinity,
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 20,
                left: 30,
                right: 30,
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Connexion",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Text(
                        "Content de se connecter?",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: _identifiantOrEmailController,
                          decoration: const InputDecoration(
                            hintText: "Identifiant ou E-mail",
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          validator: (String? value) {
                            return (value == null || value == '')
                                ? "Ce champ est obligatoire"
                                : null;
                          },
                        ),
                        const SizedBox(height: 30),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          controller: _passwordController,
                          decoration: const InputDecoration(
                            hintText: "Mot de passe",
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          validator: (String? value) {
                            return (value == null || value == '')
                                ? "Ce champ est obligatoire"
                                : null;
                          },
                        ),
                        const SizedBox(height: 50),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(Color(0xFF018e49)),
                            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            )),
                            padding: const MaterialStatePropertyAll(EdgeInsets.only(top: 10, right: 50, left: 50, bottom: 10)),
                          ),
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              await _loginUser();
                            }
                          },
                          child: const Text(
                            "Connexion",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const OubliPassword()),
                            );
                          },
                          child: const Text(
                            "Mot de passe oublié?",
                            style: TextStyle(color: Color(0xFF018e49)),
                          ),
                        ),
                        // Afficher le message d'erreur s'il y en a un
                        if (_errorMessage != null)
                          Text(
                            _errorMessage!,
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                            ),
                          ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
