import 'package:flutter/material.dart';

import 'screens/lista_screen.dart';
import 'screens/preferiti_screen.dart';
import 'screens/storico_screen.dart';
import 'screens/budget_screen.dart';
import 'screens/statistiche_screen.dart';
import 'screens/impostazioni_screen.dart';


void main() {
  runApp(const SpesaGO());
}


class SpesaGO extends StatelessWidget {

  const SpesaGO({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: "SpesaGO",

      theme: ThemeData(

        colorScheme:
        ColorScheme.fromSeed(
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

        title:
        const Text("🛒 SpesaGO"),

      ),


      body: ListView(

        padding:
        const EdgeInsets.all(20),


        children: [


          voceMenu(
            context,
            "🛒 Nuova spesa",
            const ListaScreen(),
          ),


          voceMenu(
            context,
            "⭐ Preferiti",
            const PreferitiScreen(),
          ),


          voceMenu(
            context,
            "📋 Storico",
            const StoricoScreen(),
          ),


          voceMenu(
            context,
            "🎯 Budget",
            const BudgetScreen(),
          ),


          voceMenu(
            context,
            "📊 Statistiche",
            const StatisticheScreen(),
          ),


          voceMenu(
            context,
            "⚙️ Impostazioni",
            const ImpostazioniScreen(),
          ),

        ],

      ),

    );

  }



  Widget voceMenu(
      BuildContext context,
      String testo,
      Widget pagina,
      ){

    return Padding(

      padding:
      const EdgeInsets.only(bottom:12),


      child: ElevatedButton(

        onPressed: (){

          Navigator.push(

            context,

            MaterialPageRoute(

              builder: (_) => pagina,

            ),

          );

        },

        child:
        Text(testo),

      ),

    );

  }

}
