import 'package:flutter/material.dart';
import 'package:raoul_product/pages/demarrage_signup_signin.dart';
import 'package:raoul_product/pages/profil_creation.dart';
import 'package:raoul_product/pages/creation_page.dart';
import 'package:raoul_product/pages/home_page.dart';

class Blogs extends StatefulWidget {
  const Blogs({super.key});

  @override
  State<Blogs> createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {



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
      body: [HomePage(currentIndex: _currentIndex,navigateToIndex: _navigateToIndex,), const CreationPage(), const ProfilPage()][_currentIndex],
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
