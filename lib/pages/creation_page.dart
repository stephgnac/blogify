import 'package:flutter/material.dart';

class CreationPage extends StatefulWidget {
  const CreationPage({super.key});

  @override
  State<CreationPage> createState() => _CreationPageState();
}

class _CreationPageState extends State<CreationPage> {

  TextEditingController publierController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const Row(
                children: [
                  Text("Titre", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ],
              ),
              const SizedBox(height: 20,),
              Form(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: publierController,
                        maxLines: 15,
                        decoration: InputDecoration(
                          hintText: "Ecrire ta publication",
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          contentPadding: const EdgeInsets.all(20),
                        ),
                      ),
                    ],
                  )
              ),
            ],
          ),
        ),
      )
    );
  }
}
