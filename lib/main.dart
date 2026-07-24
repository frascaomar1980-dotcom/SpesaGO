import 'package:flutter/material.dart';

void main() {
  runApp(const SpesaGO());
}

class SpesaGO extends StatelessWidget {
  const SpesaGO({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SpesaGO',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ),
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

      appBar: AppBar(
        title: const Text("🛒 SpesaGO"),
      ),

      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            const Text(
              "Benvenuto in SpesaGO",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Nuova spesa",
              ),
            ),

          ],
        ),
      ),
    );
  }
}
