import 'package:flutter/material.dart';
import 'package:raoul_product/pages/home_page_blog.dart';

class OtherProfil extends StatefulWidget {
  const OtherProfil({super.key});

  @override
  State<OtherProfil> createState() => _OtherProfilState();
}

class _OtherProfilState extends State<OtherProfil> {

  /*late int _currentIndex = 1;
  void _navigateToIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(
                  context,
                MaterialPageRoute(builder: (context) => const HomePageBlog() )
              );
            },
            icon: const Icon(Icons.arrow_back)
          ),
        )
      ),
      body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(
                top: 100, left: 20, right: 20, bottom: 30),
            decoration: const BoxDecoration(
                color: Color(0xFFF3F3F3)
            ),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFF8e8901),
                      borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  padding: const EdgeInsets.all(15),
                  child: const Icon(
                    Icons.person, color: Colors.white, size: 70,),
                ),
                const SizedBox(height: 10,),
                const Text("Sastre Exaucé",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
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
                      const Row(
                        children: [
                          Text("Titre", style: TextStyle(fontWeight: FontWeight
                              .bold, fontSize: 22),),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            "10/12/23", style: TextStyle(fontWeight: FontWeight
                              .bold),),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Text(
                        "Bien que le chemin puisse etre difficile, chaque pas en avant est une victoire sur la peur. Aie le courage de perseverer, car c'est dans l'adversite que se forge la force interieure.",
                        style: TextStyle(fontSize: 17,),
                        textAlign: TextAlign.justify,),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(
                              Icons.message_outlined, color: Colors.white,),
                          ),
                          const Text("12"),
                          const SizedBox(width: 50,),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(Icons.favorite, color: Colors
                                .white,),
                          ),
                          const Text("20"),
                          const SizedBox(width: 50,),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(Icons.share, color: Colors
                                .white,),
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
                      const Row(
                        children: [
                          Text("Titre", style: TextStyle(fontWeight: FontWeight
                              .bold, fontSize: 22),),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            "10/12/23", style: TextStyle(fontWeight: FontWeight
                              .bold),),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Text(
                        "Bien que le chemin puisse etre difficile, chaque pas en avant est une victoire sur la peur. Aie le courage de perseverer, car c'est dans l'adversite que se forge la force interieure.",
                        style: TextStyle(fontSize: 17,),
                        textAlign: TextAlign.justify,),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(
                              Icons.message_outlined, color: Colors.white,),
                          ),
                          const Text("12"),
                          const SizedBox(width: 50,),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(Icons.favorite, color: Colors
                                .white,),
                          ),
                          const Text("20"),
                          const SizedBox(width: 50,),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(Icons.share, color: Colors
                                .white,),
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
                      const Row(
                        children: [
                          Text("Titre", style: TextStyle(fontWeight: FontWeight
                              .bold, fontSize: 22),),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            "10/12/23", style: TextStyle(fontWeight: FontWeight
                              .bold),),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Text(
                        "Bien que le chemin puisse etre difficile, chaque pas en avant est une victoire sur la peur. Aie le courage de perseverer, car c'est dans l'adversite que se forge la force interieure.",
                        style: TextStyle(fontSize: 17,),
                        textAlign: TextAlign.justify,),
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(
                              Icons.message_outlined, color: Colors.white,),
                          ),
                          const Text("12"),
                          const SizedBox(width: 50,),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(Icons.favorite, color: Colors
                                .white,),
                          ),
                          const Text("20"),
                          const SizedBox(width: 50,),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF018e49),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5))
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(Icons.share, color: Colors
                                .white,),
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

