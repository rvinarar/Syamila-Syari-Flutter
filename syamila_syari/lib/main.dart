import 'package:flutter/material.dart';
import 'menuTentang.dart' as tentang;
import 'menuProduk.dart' as produk;
import 'profil_saya.dart';

void main() {
  runApp(
    new MaterialApp(
      title: "Syamila Syari", 
      home: new Home(),
      routes: <String, WidgetBuilder>{
        '/ProfilSaya' : (BuildContext context) =>  new DrawerProfil(),
      })
    );
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

    @override
    Widget build (BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.pink[600],
        title: new Text("Syamila Syari"),
        centerTitle: true,
      ),
      drawer: new Drawer(
        child: Container( color: Colors.pinkAccent[700],
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text("Ervina Ayu Rosamada",style: TextStyle(color: Colors.black),), 
                accountEmail: new Text("193020503020",style: TextStyle(color: Colors.black),), 
                currentAccountPicture: 
                  new CircleAvatar(
                    backgroundImage: new AssetImage("gambar/vina1.jpg"),
                  ),
                  decoration: new BoxDecoration(
                    image: new DecorationImage(image: new NetworkImage("https://image.freepik.com/free-vector/paper-style-dynamic-lines-background_79603-1847.jpg"),
                    fit: BoxFit.cover
                    )
                  ),
                ),
              new ListTile(
                title: new Text("Profil Saya",style: TextStyle(color: Colors.white),), 
                trailing: new Icon(Icons.account_circle_rounded, color: Colors.white,),
                onTap: (){
                  Navigator.pushNamed(context, '/ProfilSaya');
                }, 
              ),
            ]
          ),
        )
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget> [
          new tentang.menuTentang(),
          new produk.menuProduk(),
        ]),
        bottomNavigationBar: new Material(
          color: Colors.pink[600],
          child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.location_on), text: "Tentang Toko"),
            new Tab(icon: new Icon(Icons.shopping_bag_outlined), text: "Produk"),
          ],
        ),
      ),
    );
  }
}
