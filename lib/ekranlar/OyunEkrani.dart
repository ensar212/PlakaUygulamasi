import 'package:flutter/material.dart';

import '../db/plakaDAO.dart';
import '../model/plaka.dart';
class OyunEkrani extends StatefulWidget {OyunEkrani({super.key});

  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {
  var kalanCan = 5;
  var puan = 0;
  var PlakaList = <Plaka>[];
  Future<List<Plaka>> plakalariGetir() async {
    var veritabanindenGelenPlakalistesi = await PlakaDAO().rastgelePlakaGetir();
    PlakaList = veritabanindenGelenPlakalistesi;
    return PlakaList;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple[100],
        title: Row(
          
          children: [
            Icon(Icons.favorite, color: Colors.red,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(kalanCan.toString()),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(puan.toString()),
            ),
            Icon(Icons.star, color: Colors.yellow,)
          ],
        ),
        centerTitle: true,
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
        
        ),
      ),
     
    );
  }
}