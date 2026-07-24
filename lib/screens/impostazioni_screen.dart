import 'package:flutter/material.dart';


class ImpostazioniScreen extends StatelessWidget {

  const ImpostazioniScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: const Text(
          "⚙️ Impostazioni",
        ),

      ),


      body: ListView(

        padding:
        const EdgeInsets.all(20),


        children: [


          SwitchListTile(

            title: const Text(
              "🌙 Tema scuro",
            ),

            value: false,

            onChanged: (value) {},

          ),



          SwitchListTile(

            title: const Text(
              "🔔 Notifiche",
            ),

            value: true,

            onChanged: (value) {},

          ),



          const ListTile(

            leading:
            Icon(Icons.info),


            title: Text(
              "SpesaGO 1.0",
            ),


            subtitle:
            Text(
              "Gestione intelligente della spesa",
            ),

          ),


        ],

      ),

    );

  }

}
