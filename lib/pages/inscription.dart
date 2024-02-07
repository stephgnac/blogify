import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'connexion.dart';

class Inscription extends StatefulWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  final _formKey = GlobalKey<FormState>();
  final _identifiantController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  Future<void> registerUser() async {
    try {
      final response = await http.post(
        Uri.parse('http://127.0.0.1:8000/api/register'), // Remplacez par l'URL de votre API Laravel
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'name': _identifiantController.text,
          'email': _emailController.text,
          'password': _passwordController.text,
          'password_confirmation': _confirmPasswordController.text,
        }),
      );

      if (response.statusCode == 200) {
        // Inscription réussie, affichez un message de succès
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Succès'),
              content: const Text('Inscription réussie'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Connexion()),
                    );
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      } else {
        // Erreur d'inscription, affichez un message d'erreur
        final responseData = jsonDecode(response.body);
        final errorMessage = responseData['message'] ?? 'Erreur d\'inscription';
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Erreur'),
              content: Text(errorMessage),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } catch (e) {
      // Erreur inattendue, affichez un message d'erreur
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Erreur'),
            content: const Text('Une erreur inattendue s\'est produite'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
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
                        "Inscription",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Text(
                        "Bienvenue sur blogify !",
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
                          keyboardType: TextInputType.text,
                          controller: _identifiantController,
                          decoration: const InputDecoration(
                            hintText: "Identifiant",
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
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailController,
                          decoration: const InputDecoration(
                            hintText: "E-mail",
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
                        const SizedBox(height: 30),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          controller: _confirmPasswordController,
                          decoration: const InputDecoration(
                            hintText: "Confirmation",
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
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              registerUser();
                            }
                          },
                          child: const Text(
                            "Inscription",
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
                              MaterialPageRoute(builder: (context) => const Connexion()),
                            );
                          },
                          child: const Text(
                            "Avez-vous déjà un compte?",
                            style: TextStyle(color: Color(0xFF018e49)),
                          ),
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
