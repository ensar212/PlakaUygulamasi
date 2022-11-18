import 'package:plaka_/db/veritabani_yardimcisi.dart';
import 'package:plaka_/model/plaka.dart';

class PlakaDAO{

  Future<List<Plaka>> rastgelePlakaGetir() async {
    var db = await VeriTabaniYardimcisi.databaseErisim();
    
    var sorgu = "SELECT * FROM PLAKALAR ORDER BY RANDOM () LIMIT 81";
    List<Map<String, dynamic>> maps = await db.rawQuery(sorgu);
    return List.generate(maps.length, (index){
      var satir = maps [index];
      return Plaka(satir["ID"], satir["ŞEHİR"], satir["PLAKA"]);
      
    });

  } 
}