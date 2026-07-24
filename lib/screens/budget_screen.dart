import 'package:flutter/material.dart';


class BudgetScreen extends StatelessWidget {

  const BudgetScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: const Text(
          "🎯 Budget",
        ),

      ),


      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          mainAxisAlignment:
          MainAxisAlignment.center,

          children: [

            const Text(

              "Imposta il tuo budget mensile",

              style: TextStyle(

                fontSize: 22,

                fontWeight: FontWeight.bold,

              ),

            ),


            const SizedBox(height: 20),


            TextField(

              keyboardType:
              TextInputType.number,

              decoration:
              const InputDecoration(

                labelText:
                "Budget (€)",

                border:
                OutlineInputBorder(),

              ),

            ),


            const SizedBox(height: 20),


            ElevatedButton(

              onPressed: () {},

              child:
              const Text(
                "Salva budget",
              ),

            ),

          ],

        ),

      ),

    );

  }

}
