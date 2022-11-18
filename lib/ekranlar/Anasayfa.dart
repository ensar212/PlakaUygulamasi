import 'package:flutter/material.dart';
import 'package:plaka_/ekranlar/OyunEkrani.dart';
class Anasayfa extends StatelessWidget {Anasayfa({super.key});
var url = "https://www.cupraofficial.com.tr/CupraFiles/20217110344946_CUPRA%20Ateca_XL_Resized.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Plaka yarışmasına hoş geldiniz.',
            style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold,
            ),
            ),
            FadeInImage.assetNetwork(
              placeholder: 'resimler/image.png',placeholderCacheHeight: 100, 
              image: url),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => OyunEkrani()));
              }, child: Text('Oyuna Başla'),),
          ],
        ),
      ),
     
    );
  }
}