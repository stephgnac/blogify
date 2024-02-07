import 'package:flutter/material.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {

  final _nameController = TextEditingController();
  final _bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 30),
            decoration: const BoxDecoration(
                color: Color(0xFFF3F3F3)
            ),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFF018e49),
                      borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  padding: const EdgeInsets.all(15),
                  child: IconButton(
                    onPressed: () {  
                      showDialog(
                          context: context, 
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Panneau de modification du Profil", style: TextStyle(color: Color(0xFF018e49), fontSize: 16, fontWeight: FontWeight.bold),),
                              content: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Text("Changer la photo"),
                                      const SizedBox(width: 110,),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF018e49),
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: const Icon(Icons.person, color: Colors.white,),
                                      ),
                                    ],
                                  ),
                                  Form(
                                      child: Column(
                                        children: [
                                          TextFormField(
                                            keyboardType: TextInputType.text,
                                            controller: _nameController,
                                            decoration: const InputDecoration(
                                              hintText: "Modifier le nom",
                                              enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Colors.black)
                                              ),
                                              focusedBorder: UnderlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.black)
                                              ),
                                            ),
                                            validator: (String? value) {
                                              return (value == null || value == "") ?
                                                  "Ce champs est obligatoire" : null;
                                            },
                                          ),
                                          TextFormField(
                                            keyboardType: TextInputType.text,
                                            controller: _bioController,
                                            decoration: const InputDecoration(
                                              hintText: "Modifier le bio",
                                              enabledBorder: UnderlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.black)
                                              ),
                                              focusedBorder: UnderlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.black)
                                              ),
                                            ),
                                            validator: (String? value) {
                                              return (value == null || value == "") ?
                                              "Ce champs est obligatoire" : null;
                                            },
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                              actions: [
                                Container(
                                  margin: const EdgeInsets.only(right: 50),
                                  width: 145,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor: const MaterialStatePropertyAll(Color(0xFF018e49)),
                                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                                      ),
                                      onPressed: () {

                                      },
                                      child: const Row(
                                        children: [
                                          Text("Soumettre", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                          SizedBox(width: 5,),
                                          Icon(Icons.arrow_right_alt, color: Colors.white,),
                                        ],
                                      )
                                  ),
                                )
                              ],
                            );
                          }
                      );
                    },
                    icon: const Icon(Icons.person, color: Colors.white, size: 70),
                  ),
                ),
                const SizedBox(height: 10,),
                const Text("Dieuval Raoul", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                const Text("Blogger / witter", style: TextStyle(fontSize: 20),),
                const SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text("0", style: TextStyle(fontSize: 16)),
                        Text("Followers", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    SizedBox(width: 50,),
                    Column(
                      children: [
                        Text("0", style: TextStyle(fontSize: 16)),
                        Text("Following", style: TextStyle(fontSize: 16)),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 30,),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text("Titre", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                          const SizedBox(width: 205,),
                          IconButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text("Panneau de modification d'un blog", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF018e49), fontSize: 14),),
                                        content: const Text("Modifier ou supprimer un blog"),
                                        actions: [
                                          TextButton(
                                              onPressed: () {

                                              },
                                              child: const Text("Modifier", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF018e49))),
                                          ),
                                          TextButton(
                                            onPressed: () {

                                            },
                                            child: const Text("Supprimer", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF018e49))),
                                          )
                                        ],
                                      );
                                    }
                                );
                              },
                              icon: const Icon(Icons.more_vert, color: Colors.black)
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          Text("10/12/23", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Text("Bien que le chemin puisse etre difficile, chaque pas en avant est une victoire sur la peur. Aie le courage de perseverer, car c'est dans l'adversite que se forge la force interieure.", style: TextStyle(fontSize: 17, ), textAlign: TextAlign.justify,),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(Icons.message_outlined, color: Colors.white,),
                          ),
                          const Text("12"),
                          const SizedBox(width: 50,),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(Icons.favorite, color: Colors.white,),
                          ),
                          const Text("20"),
                          const SizedBox(width: 50,),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(Icons.share, color: Colors.white,),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text("Titre", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                          const SizedBox(width: 205,),
                          IconButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text("Panneau de modification d'un blog", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF018e49), fontSize: 14),),
                                        content: const Text("Modifier ou supprimer un blog"),
                                        actions: [
                                          TextButton(
                                            onPressed: () {

                                            },
                                            child: const Text("Modifier", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF018e49))),
                                          ),
                                          TextButton(
                                            onPressed: () {

                                            },
                                            child: const Text("Supprimer", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF018e49))),
                                          )
                                        ],
                                      );
                                    }
                                );
                              },
                              icon: const Icon(Icons.more_vert, color: Colors.black)
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          Text("10/12/23", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Text("Bien que le chemin puisse etre difficile, chaque pas en avant est une victoire sur la peur. Aie le courage de perseverer, car c'est dans l'adversite que se forge la force interieure.", style: TextStyle(fontSize: 17, ), textAlign: TextAlign.justify,),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(Icons.message_outlined, color: Colors.white,),
                          ),
                          const Text("12"),
                          const SizedBox(width: 50,),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(Icons.favorite, color: Colors.white,),
                          ),
                          const Text("20"),
                          const SizedBox(width: 50,),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(Icons.share, color: Colors.white,),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text("Titre", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                          const SizedBox(width: 205,),
                          IconButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text("Panneau de modification d'un blog", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF018e49), fontSize: 14),),
                                        content: const Text("Modifier ou supprimer un blog"),
                                        actions: [
                                          TextButton(
                                            onPressed: () {

                                            },
                                            child: const Text("Modifier", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF018e49))),
                                          ),
                                          TextButton(
                                            onPressed: () {

                                            },
                                            child: const Text("Supprimer", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF018e49))),
                                          )
                                        ],
                                      );
                                    }
                                );
                              },
                              icon: const Icon(Icons.more_vert, color: Colors.black)
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          Text("10/12/23", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Text("Bien que le chemin puisse etre difficile, chaque pas en avant est une victoire sur la peur. Aie le courage de perseverer, car c'est dans l'adversite que se forge la force interieure.", style: TextStyle(fontSize: 17, ), textAlign: TextAlign.justify,),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(Icons.message_outlined, color: Colors.white,),
                          ),
                          const Text("12"),
                          const SizedBox(width: 50,),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(Icons.favorite, color: Colors.white,),
                          ),
                          const Text("20"),
                          const SizedBox(width: 50,),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(Icons.share, color: Colors.white,),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text("Titre", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                          const SizedBox(width: 205,),
                          IconButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text("Panneau de modification d'un blog", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF018e49), fontSize: 14),),
                                        content: const Text("Modifier ou supprimer un blog"),
                                        actions: [
                                          TextButton(
                                            onPressed: () {

                                            },
                                            child: const Text("Modifier", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF018e49))),
                                          ),
                                          TextButton(
                                            onPressed: () {

                                            },
                                            child: const Text("Supprimer", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF018e49))),
                                          )
                                        ],
                                      );
                                    }
                                );
                              },
                              icon: const Icon(Icons.more_vert, color: Colors.black)
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          Text("10/12/23", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Text("Bien que le chemin puisse etre difficile, chaque pas en avant est une victoire sur la peur. Aie le courage de perseverer, car c'est dans l'adversite que se forge la force interieure.", style: TextStyle(fontSize: 17, ), textAlign: TextAlign.justify,),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(Icons.message_outlined, color: Colors.white,),
                          ),
                          const Text("12"),
                          const SizedBox(width: 50,),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(Icons.favorite, color: Colors.white,),
                          ),
                          const Text("20"),
                          const SizedBox(width: 50,),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(Icons.share, color: Colors.white,),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
