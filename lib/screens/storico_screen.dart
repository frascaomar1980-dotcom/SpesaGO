import 'package:flutter/material.dart';


class StoricoScreen extends StatelessWidget {

  const StoricoScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: const Text(
          "📋 Storico spese",
        ),

      ),


      body: const Center(

        child: Text(

          "Nessuna spesa salvata nello storico",

          style: TextStyle(

            fontSize: 20,

          ),

        ),

      ),

    );

  }

}
