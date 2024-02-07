import 'package:flutter/material.dart';
import 'package:raoul_product/pages/blogs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blogify',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Color(0xFF018e49)),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)))
        ),
          onPressed: () {

            Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => const Blogs())
            );
          }, 
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFF018e49),
            ),

            child: Center(
              child: Image.asset("assets/images/blogiffy.png", width: 250,),
            ),
          ),
      ),
    );
  }
}
