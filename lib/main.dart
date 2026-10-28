import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Widgets de base",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Atelier 2"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),

        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                "Bienvenue dans cet atelier de perfectionnement Flutter !",
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent,
                )
              ),

              const SizedBox(height: 20),
              Image.network(
                'https://uploads-ssl.webflow.com/6377bf360873283fad488724/638ca82a95fb434e6f42a283_Flutter.png',
                width: 200,
              ),
              const SizedBox(height: 20),
              const Text(
                'Découvrez comment développer des applications Flutter de qualité.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
                ),

              const SizedBox(height: 30),

             Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("Tu as cliqué sur commencer !");
                      // Action du bouton 1
                    },

                    child: Text('Commencer'),
                  ),

                  OutlinedButton(
                    onPressed: () {
                      print("Tu as cliqué sur En savoir plus !");
                      // Action du bouton 2
                    },
                    child:Text('En savoir plus'),
                    ),

                    //TextButton(
                    //onPressed: () {
                      //print("Tu as cliqué sur En savoir plus(TextButton)");
                      // Action du bouton 2
                    //},
                    //child: Text('En savoir plus'),
                    //),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
