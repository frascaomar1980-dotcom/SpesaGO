class Prodotto {

  int? id;

  String nome;
  String categoria;
  double prezzo;
  int quantita;


  Prodotto({

    this.id,

    required this.nome,

    required this.categoria,

    required this.prezzo,

    required this.quantita,

  });


  double get totale => prezzo * quantita;


  Map<String, dynamic> toMap(){

    return {

      'id': id,

      'nome': nome,

      'categoria': categoria,

      'prezzo': prezzo,

      'quantita': quantita,

    };

  }


  factory Prodotto.fromMap(Map<String,dynamic> map){

    return Prodotto(

      id: map['id'],

      nome: map['nome'],

      categoria: map['categoria'],

      prezzo: map['prezzo'],

      quantita: map['quantita'],

    );

  }

}
