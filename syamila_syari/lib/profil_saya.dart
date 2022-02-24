import 'package:flutter/material.dart';

class DrawerProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Text("Profil Saya"),
          backgroundColor: Colors.pink[600],
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(
            20.0,
            20.0,
            20.0,
            20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new CircleAvatar(radius: 180,
                backgroundImage: new AssetImage("gambar/vina1.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.person_rounded),
                    ),
                    Text(
                      "Ervina Ayu Rosamada",
                      style: new TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.assignment_ind_rounded),
                    ),
                    Text(
                      "193020503020",
                      style: new TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.location_on),
                    ),
                    Text(
                      "Jl. G. Obos 10 A, Palangka Raya",
                      style: new TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.date_range),
                    ),
                    Text(
                      "Kediri, 17 September 2001",
                      style: new TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
