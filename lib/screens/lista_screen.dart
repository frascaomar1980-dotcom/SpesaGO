import 'package:flutter/material.dart';
import '../database/database_helper.dart';
import '../models/prodotto.dart';
import 'add_product_screen.dart';


class ListaScreen extends StatefulWidget {

  const ListaScreen({super.key});

  @override
  State<ListaScreen> createState() => _ListaScreenState();

}



class _ListaScreenState extends State<ListaScreen> {


  List<Prodotto> prodotti = [];


  @override
  void initState() {

    super.initState();

    caricaProdotti();

  }



  Future<void> caricaProdotti() async {

    prodotti =
        await DatabaseHelper.instance.listaProdotti();

    setState(() {});

  }



  double totale(){

    double somma = 0;

    for(var p in prodotti){

      somma += p.totale;

    }

    return somma;

  }



  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(

        title: const Text(
          "🛒 Lista spesa",
        ),

      ),


      floatingActionButton: FloatingActionButton(

        onPressed: () async {

          await Navigator.push(

            context,

            MaterialPageRoute(

              builder: (_) =>
                  const AddProductScreen(),

            ),

          );

          caricaProdotti();

        },

        child: const Icon(Icons.add),

      ),



      body: Column(

        children: [


          Padding(

            padding: const EdgeInsets.all(15),

            child: Text(

              "Totale: ${totale().toStringAsFixed(2)} €",

              style: const TextStyle(

                fontSize: 22,

                fontWeight: FontWeight.bold,

              ),

            ),

          ),



          Expanded(

            child: ListView.builder(

              itemCount: prodotti.length,

              itemBuilder: (context,index){


                final prodotto =
                    prodotti[index];


                return Card(

                  child: ListTile(

                    title:
                        Text(prodotto.nome),


                    subtitle:
                        Text(
                          "${prodotto.quantita} x ${prodotto.prezzo} €",
                        ),


                    trailing:
                    IconButton(

                      icon:
                      const Icon(
                        Icons.delete,
                      ),

                      onPressed: () async {

                        await DatabaseHelper.instance
                            .elimina(prodotto.id!);

                        caricaProdotti();

                      },

                    ),

                  ),

                );


              },

            ),

          ),

        ],

      ),

    );

  }

}
