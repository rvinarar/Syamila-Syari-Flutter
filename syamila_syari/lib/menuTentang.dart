import 'package:flutter/material.dart';

class menuTentang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 350,
                  height: 250,
                  child: new Image(
                    image: new AssetImage("gambar/syamila.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                new Padding(padding: new EdgeInsets.all(10.0)),
                new Text(
                    "🌹Syamila Syari🌹 adalah toko yang menjual berbagai pakaian muslim dan muslimah.",
                    textAlign: TextAlign.justify,
                    style: new TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold)),
                new Padding(padding: new EdgeInsets.all(5.0)),
                new Text(
                    "Selain itu, toko ini juga menjual berbagai perlengkapan muslimah seperti khimar, ciput, handshock, kaos kaki, cadar dan perlengkapan muslimah lainnya. ",
                    textAlign: TextAlign.justify,
                    style: new TextStyle(fontSize: 16.0)),
                new Padding(padding: new EdgeInsets.all(10.0)),
                new Text(
                    "Syamila Syari didirikan pada awal tahun 2021. Meskipun terbilang masih cukup baru, namun toko ini telah memiliki banyak relasi dari berbagai pihak (brand pakaian yang dijual) serta tidak sedikit banyak orang yg tertarik dari produk-produk yang dijual.",
                    textAlign: TextAlign.justify,
                    style: new TextStyle(fontSize: 16.0)),
                new Padding(padding: new EdgeInsets.all(5.0)),
                new Text(
                    "Apakah anda tertarik dan ingin membeli produk dari kami? Jika anda tertarik bisa hubungi kami melalui salah satu sosial media kami di bawah ini☺️",
                    textAlign: TextAlign.justify,
                    style: new TextStyle(fontSize: 16.0)),
                new Padding(padding: new EdgeInsets.all(5.0)),
                Row(
                  children: [
                    new Image.asset(
                      "gambar/ig.png",
                      fit: BoxFit.cover,
                      height: 20,
                    ),
                    new Padding(padding: new EdgeInsets.all(3.0)),
                    new Text("@syamilasyari",
                        style: new TextStyle(fontSize: 16.0)),
                  ],
                ),
                new Padding(padding: new EdgeInsets.all(3.0)),
                Row(
                  children: [
                    new Image.asset(
                      "gambar/wa.png",
                      fit: BoxFit.cover,
                      height: 20,
                    ),
                    new Padding(padding: new EdgeInsets.all(3.0)),
                    new Text("+6281649123040",
                        style: new TextStyle(fontSize: 16.0)),
                  ],
                ),
                new Padding(padding: new EdgeInsets.all(10.0)),
                new Text("Atau bisa datang langsung ke toko kami. ",
                    textAlign: TextAlign.start,
                    style: new TextStyle(fontSize: 16.0)),
                new Padding(padding: new EdgeInsets.all(5.0)),
                Row(
                  children: [
                    new Icon(Icons.home),
                    new Padding(padding: new EdgeInsets.all(3.0)),
                    new Text("Jl. Tingang Induk, Palangka Raya",
                        style: new TextStyle(fontSize: 16.0)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
