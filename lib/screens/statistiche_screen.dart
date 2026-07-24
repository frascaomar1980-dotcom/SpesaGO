import 'package:flutter/material.dart';


class StatisticheScreen extends StatelessWidget {

  const StatisticheScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: const Text(
          "📊 Statistiche",
        ),

      ),


      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          mainAxisAlignment:
          MainAxisAlignment.center,

          children: [

            const Icon(

              Icons.bar_chart,

              size: 80,

            ),


            const SizedBox(height: 20),


            const Text(

              "Statistiche spesa",

              style: TextStyle(

                fontSize: 24,

                fontWeight: FontWeight.bold,

              ),

            ),


            const SizedBox(height: 15),


            const Text(

              "Qui vedrai:\n\n"
              "• Totale mensile\n"
              "• Categorie più acquistate\n"
              "• Andamento delle spese",

              textAlign: TextAlign.center,

              style: TextStyle(

                fontSize: 18,

              ),

            ),

          ],

        ),

      ),

    );

  }

}
