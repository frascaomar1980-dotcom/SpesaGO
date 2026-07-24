import 'package:flutter/material.dart';
import '../database/database_helper.dart';
import '../models/prodotto.dart';


class AddProductScreen extends StatefulWidget {

  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() =>
      _AddProductScreenState();

}


class _AddProductScreenState
    extends State<AddProductScreen> {


  final nomeController = TextEditingController();
  final categoriaController = TextEditingController();
  final prezzoController = TextEditingController();
  final quantitaController = TextEditingController();



  Future<void> salva() async {

    final prodotto = Prodotto(

      nome: nomeController.text,

      categoria: categoriaController.text,

      prezzo: double.tryParse(
        prezzoController.text,
      ) ?? 0,

      quantita: int.tryParse(
        quantitaController.text,
      ) ?? 1,

    );


    await DatabaseHelper.instance
        .inserisci(prodotto);


    Navigator.pop(context);

  }



  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Aggiungi prodotto",
        ),
      ),


      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          children: [


            TextField(

              controller: nomeController,

              decoration:
              const InputDecoration(
                labelText: "Nome prodotto",
              ),

            ),


            TextField(

              controller: categoriaController,

              decoration:
              const InputDecoration(
                labelText: "Categoria",
              ),

            ),


            TextField(

              controller: prezzoController,

              keyboardType:
              TextInputType.number,

              decoration:
              const InputDecoration(
                labelText: "Prezzo (€)",
              ),

            ),


            TextField(

              controller: quantitaController,

              keyboardType:
              TextInputType.number,

              decoration:
              const InputDecoration(
                labelText: "Quantità",
              ),

            ),


            const SizedBox(height: 30),


            ElevatedButton(

              onPressed: salva,

              child: const Text(
                "Salva prodotto",
              ),

            ),

          ],

        ),

      ),

    );

  }

}
