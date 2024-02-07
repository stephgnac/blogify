import 'package:flutter/material.dart';
import 'package:raoul_product/pages/blogs.dart';
import 'package:raoul_product/pages/creation_page.dart';
import 'package:raoul_product/pages/other_profil.dart';
import 'package:raoul_product/pages/profil_creation.dart';

import 'demarrage_signup_signin.dart';

class HomePageBlog extends StatefulWidget {
  //final int currentIndex;
  //final Function(int) navigateToIndex;

  const HomePageBlog({super.key});

  //int get getCurrentIndex => currentIndex;

  @override
  State<HomePageBlog> createState() => _HomePageBlogState();
}

class _HomePageBlogState extends State<HomePageBlog> {

  final keyState = GlobalKey<FormState>();
  TextEditingController searchController = TextEditingController();


  late int _currentIndex = 0;
  void _navigateToIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          if(_currentIndex==0)
            IconButton(
                onPressed: () {

                },
                icon: const Icon(Icons.menu, color: Color(0xFF018e49),)
            ),

          if(_currentIndex==1)
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DemarrageSignupSignin()),
                  );
                },
                child: const Text("Publier", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xFF018e49)),)
            )
        ],
      ),
      body: [SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Form(
                  key: keyState,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: searchController,
                        decoration: InputDecoration(
                          hintText: "Rechercher les blogs",
                          suffixIcon: const Icon(Icons.search),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xFF9ccfb6)),
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color(0xFF9ccfb6)),
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          contentPadding: const EdgeInsets.only(left: 20, top: 0, bottom: 0),
                          filled: true,
                          fillColor: const Color(0xFFcfe4da),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF9ccfb6),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: 45,
                  child: Row(
                    children: [
                      TextButton(
                          style: const ButtonStyle(
                              padding: MaterialStatePropertyAll(EdgeInsets.only(left: 68, right: 68,))
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Blogs())
                            );
                          },
                          child: const Text("Postes", style: TextStyle(color: Color(0xFF018e49), fontWeight: FontWeight.bold),)
                      ),
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor: const MaterialStatePropertyAll(Color(0xFF018e49)),
                              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                              padding: const MaterialStatePropertyAll(EdgeInsets.only(left: 68, right: 68,))
                          ),
                          onPressed: () {

                          },
                          child: const Text("Blogs", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFf3f3f3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 150,
                      height: 150,
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF8e8901),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: const EdgeInsets.all(5),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const OtherProfil())
                                );
                              },
                              icon: const Icon(Icons.person, color: Colors.white, size: 30,),
                            ),
                          ),
                          const Text("SASTRE Exauce", style: TextStyle(fontWeight: FontWeight.bold),),
                          const Text("Blogger/Writter")
                        ],
                      ),
                    ),
                    const SizedBox(width: 40,),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFf3f3f3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 150,
                      height: 150,
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF8e8901),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: const EdgeInsets.all(5),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const OtherProfil())
                                );
                              },
                              icon: const Icon(Icons.person, color: Colors.white, size: 30,),
                            ),
                          ),
                          const Text("SASTRE Exauce", style: TextStyle(fontWeight: FontWeight.bold),),
                          const Text("Blogger/Writter")
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFf3f3f3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 150,
                      height: 150,
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF8e8901),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: const EdgeInsets.all(5),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const OtherProfil())
                                );
                              },
                              icon: const Icon(Icons.person, color: Colors.white, size: 30,),
                            ),
                          ),
                          const Text("SASTRE Exauce", style: TextStyle(fontWeight: FontWeight.bold),),
                          const Text("Blogger/Writter")
                        ],
                      ),
                    ),
                    const SizedBox(width: 40,),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFf3f3f3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 150,
                      height: 150,
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF8e8901),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: const EdgeInsets.all(5),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const OtherProfil())
                                );
                              },
                              icon: const Icon(Icons.person, color: Colors.white, size: 30,),
                            ),
                          ),
                          const Text("SASTRE Exauce", style: TextStyle(fontWeight: FontWeight.bold),),
                          const Text("Blogger/Writter")
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFf3f3f3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 150,
                      height: 150,
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF8e8901),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: const EdgeInsets.all(5),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const OtherProfil())
                                );
                              },
                              icon: const Icon(Icons.person, color: Colors.white, size: 30,),
                            ),
                          ),
                          const Text("SASTRE Exauce", style: TextStyle(fontWeight: FontWeight.bold),),
                          const Text("Blogger/Writter")
                        ],
                      ),
                    ),
                    const SizedBox(width: 40,),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFf3f3f3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 150,
                      height: 150,
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF8e8901),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: const EdgeInsets.all(5),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const OtherProfil())
                                );
                              },
                              icon: const Icon(Icons.person, color: Colors.white, size: 30,),
                            ),
                          ),
                          const Text("SASTRE Exauce", style: TextStyle(fontWeight: FontWeight.bold),),
                          const Text("Blogger/Writter")
                        ],
                      ),
                    ),
                  ],
                ),
            ]
          ),
      ),
    ), const CreationPage(), const ProfilPage()][_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF018e49),
        unselectedItemColor: const Color(0xFF707070),
        currentIndex: _currentIndex,
        iconSize: 32,
        elevation: 20,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        onTap: (index) => _navigateToIndex(index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Acceuil'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Créer'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil'
          )
        ],
      ),
    );
  }
}
