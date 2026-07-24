import 'package:flutter/material.dart';


class PreferitiScreen extends StatelessWidget {

  const PreferitiScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: const Text(
          "⭐ Preferiti",
        ),

      ),


      body: const Center(

        child: Text(

          "Nessun prodotto preferito",

          style: TextStyle(

            fontSize: 20,

          ),

        ),

      ),

    );

  }

}
