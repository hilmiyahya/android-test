import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blue,
            appBar: AppBar(
              title: Text("PROFIL"),
              centerTitle: true,
              backgroundColor: Colors.blue,
            ),
            body: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
              ),
              PicApp(),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Text(
                "Ibnur Hilmi Yahya Azizi",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.0),
              ),
              Text(
                "hilmi.d7@gmail.com",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MyLayout(
                    title: "Undiksha",
                    icon: Icons.location_city,
                    color: Colors.orange,
                  ),
                  MyLayout(
                    title: "Lamongan",
                    icon: Icons.home,
                    color: Colors.lime,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MyLayout(
                    title: "31-12-1999",
                    icon: Icons.cake,
                    color: Colors.yellow,
                  ),
                  MyLayout(
                    title: "Game",
                    icon: Icons.gamepad,
                    color: Colors.lightGreen,
                  ),
                ],
              )
            ])));
  }
}

class PicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        image: DecorationImage(
          image: AssetImage("img/IMGt-min.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class MyLayout extends StatelessWidget {
  MyLayout({this.title, this.icon, this.color});

  final String title;
  final IconData icon;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                size: 120.0,
                color: color,
              ),
              Text(title,
                  style: TextStyle(
                    fontSize: 16.0,
                  )),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
