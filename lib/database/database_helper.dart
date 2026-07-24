import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/prodotto.dart';


class DatabaseHelper {

  static final DatabaseHelper instance =
      DatabaseHelper._init();

  static Database? _database;


  DatabaseHelper._init();


  Future<Database> get database async {

    if (_database != null) {
      return _database!;
    }

    _database = await _initDB();

    return _database!;
  }



  Future<Database> _initDB() async {

    final dbPath = await getDatabasesPath();

    final path = join(
      dbPath,
      'spesago.db',
    );


    return await openDatabase(

      path,

      version: 1,

      onCreate: (db, version) async {

        await db.execute('''
          CREATE TABLE prodotti (

            id INTEGER PRIMARY KEY AUTOINCREMENT,

            nome TEXT,

            categoria TEXT,

            prezzo REAL,

            quantita INTEGER

          )
        ''');

      },

    );

  }



  Future<int> inserisci(Prodotto prodotto) async {

    final db = await database;

    return await db.insert(
      'prodotti',
      prodotto.toMap(),
    );

  }



  Future<List<Prodotto>> listaProdotti() async {

    final db = await database;

    final dati = await db.query(
      'prodotti',
    );


    return dati
        .map(
          (e) => Prodotto.fromMap(e),
        )
        .toList();

  }



  Future<int> elimina(int id) async {

    final db = await database;

    return await db.delete(
      'prodotti',
      where: 'id = ?',
      whereArgs: [id],
    );

  }

}
