import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // const Text("Image from network"),
              Image.network(errorBuilder: (context, error, stackTrace) {
                return const Text("Xato yuz berdi.");
              },
                  repeat: ImageRepeat.repeat,
                  semanticLabel: "Gift",
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                  "https://images.unsplash.com/photo-1732601471603-404af59bc450?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              // const Text("Image from local"),
              // Image.asset(
              //   semanticLabel: "Mountain",
              //   "assets/images/mountain.jpeg",
              //   width: 150,
              //   height: 100,
              //   fit: BoxFit.cover,
              // ),
              Container(
                width: 1000,
                height: 350,
                child: Image.network(
                    width: 100,
                    height: 70,
                    repeat: ImageRepeat.repeatX,
                    "https://i0.wp.com/www.galvanizeaction.org/wp-content/uploads/2022/06/Wow-gif.gif?fit=450%2C250&ssl=1"),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        scale: 10,
                        "https://i0.wp.com/www.printmag.com/wp-content/uploads/2021/02/4cbe8d_f1ed2800a49649848102c68fc5a66e53mv2.gif?fit=476%2C280&ssl=1"),
                  ),
                ),
              ),
              Text(
                "New Year",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "New Year",
                style: TextStyle(
                  fontFamily: 'Sevillana',
                ),
              ),
              Lottie.asset("assets/lotties/animation1.json",
                  width: 300, height: 300),
            ],
          ),
        ),
      ),
    );
  }
}
