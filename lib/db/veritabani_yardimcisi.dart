import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class VeriTabaniYardimcisi{
  static final String databaseName = 'plakaquiz.sqlite';
  
  static Future<Database> databaseErisim () async{
    String databaseYolu = join(await getDatabasesPath(), databaseName);
    if (await databaseExists(databaseYolu)) {
      print('db zaten Var!');
    }else{
      ByteData data = await rootBundle.load('veritabani_dosyalari/$databaseName');
      List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(databaseYolu).writeAsBytes(bytes, flush: true);
      print('Db oluştu..');

    }
  return openDatabase(databaseYolu); 
  }
}