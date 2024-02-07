import 'package:flutter/material.dart';
import 'package:raoul_product/pages/home_page_blog.dart';

class HomePage extends StatefulWidget {
  final int currentIndex;
  final Function(int) navigateToIndex;
  const HomePage({super.key, required this.currentIndex, required this.navigateToIndex});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final keyState = GlobalKey<FormState>();
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                          style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(Color(0xFF018e49)),
                            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                            padding: const MaterialStatePropertyAll(EdgeInsets.only(left: 68, right: 68,))
                          ),
                          onPressed: () {

                          },
                          child: const Text("Postes", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                      ),
                      TextButton(
                        style: const ButtonStyle(
                            padding: MaterialStatePropertyAll(EdgeInsets.only(left: 68, right: 68,))
                        ),
                          onPressed: () {
                             Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => const HomePageBlog())
                             );
                          },
                          child: const Text("Blogs", style: TextStyle(color: Color(0xFF018e49), fontWeight: FontWeight.bold),)
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFf3f3f3),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular((50)),
                              color: const Color(0xFF018e49),
                            ),
                            child: const Icon(Icons.person, color: Colors.white,),
                          ),
                          const SizedBox(width: 15,),
                          const Text("Dieuval Raoul", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const Row(
                        children: [
                          Text("Ne jamais abandonner", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const Row(
                        children: [
                          Text("2 min"),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Text("Bien que le chemin puisse etre difficile, chaque pas en avant est une victoire sur la peur. Aie le courage de perseverer, car c'est dans l'adversite que se forge la force interieure.", style: TextStyle(fontSize: 17, ), textAlign: TextAlign.justify,),
                      const SizedBox(height: 30,),
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
                const SizedBox(height: 10,),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFf3f3f3),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular((50)),
                              color: const Color(0xFF018e49),
                            ),
                            child: const Icon(Icons.person, color: Colors.white,),
                          ),
                          const SizedBox(width: 15,),
                          const Text("Dieuval Raoul", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const Row(
                        children: [
                          Text("Ne jamais abandonner", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const Row(
                        children: [
                          Text("2 min"),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Text("Bien que le chemin puisse etre difficile, chaque pas en avant est une victoire sur la peur. Aie le courage de perseverer, car c'est dans l'adversite que se forge la force interieure.", style: TextStyle(fontSize: 17, ), textAlign: TextAlign.justify,),
                      const SizedBox(height: 30,),
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
                const SizedBox(height: 10,),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFf3f3f3),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular((50)),
                              color: const Color(0xFF018e49),
                            ),
                            child: const Icon(Icons.person, color: Colors.white,),
                          ),
                          const SizedBox(width: 15,),
                          const Text("Dieuval Raoul", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const Row(
                        children: [
                          Text("Ne jamais abandonner", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const Row(
                        children: [
                          Text("2 min"),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Text("Bien que le chemin puisse etre difficile, chaque pas en avant est une victoire sur la peur. Aie le courage de perseverer, car c'est dans l'adversite que se forge la force interieure.", style: TextStyle(fontSize: 17, ), textAlign: TextAlign.justify,),
                      const SizedBox(height: 30,),
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
                const SizedBox(height: 10,),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFf3f3f3),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular((50)),
                              color: const Color(0xFF018e49),
                            ),
                            child: const Icon(Icons.person, color: Colors.white,),
                          ),
                          const SizedBox(width: 15,),
                          const Text("Dieuval Raoul", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const Row(
                        children: [
                          Text("Ne jamais abandonner", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const Row(
                        children: [
                          Text("2 min"),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Text("Bien que le chemin puisse etre difficile, chaque pas en avant est une victoire sur la peur. Aie le courage de perseverer, car c'est dans l'adversite que se forge la force interieure.", style: TextStyle(fontSize: 17, ), textAlign: TextAlign.justify,),
                      const SizedBox(height: 30,),
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
