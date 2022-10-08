import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("Image/pp.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Saif Ahammod Khan",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontFamily: "KaushanScript"),
              ),
              Text(
                "Flutter Developper",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal,
                  fontFamily: "KaushanScript",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Bashundhara R/A, Dhaka",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: "KaushanScript",
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "+880 1917 089109",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: "KaushanScript",
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "saif.ahammod@gmail.com",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: "KaushanScript",
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.computer,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "saifahammod.me",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: "KaushanScript",
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}
// child: Column(
// // mainAxisSize: MainAxisSize.min,
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// //crossAxisAlignment: CrossAxisAlignment.center, //verticalDirection: VerticalDirection.up,
// verticalDirection: VerticalDirection.down,
// children: <Widget>[
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Container(
// child: Text("Container R1"),
// height: 100,
// width: 100,
// //width:double.infinity
// color: Colors.cyan,
// //margin: EdgeInsets.all(50.0),
// //margin: EdgeInsets.symmetric(vertical: 100.0, horizontal: 100.0)
// //margin: EdgeInsets.only(left: 50),
// //margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
// //padding: EdgeInsets.all(20),//Layout widget(ROW COLUMN and Stack)
// ),
// SizedBox(
// width: 10,
// ),
// Container(
// child: Text("Container R2"),
// height: 100,
// width: 100,
// color: Colors.pink,
// //margin: EdgeInsets.all(50.0),
// //margin: EdgeInsets.symmetric(vertical: 100.0, horizontal: 100.0)
// //margin: EdgeInsets.only(left: 50),
// //margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
// //padding: EdgeInsets.all(20),
// //Layout widget(ROW COLUMN and Stack)
// ),
// SizedBox(
// width: 10,
// ),
// Container(
// child: Text("Container 1"),
// height: 100,
// width: 100,
// color: Colors.orange,
// //margin: EdgeInsets.all(50.0),
// //margin: EdgeInsets.symmetric(vertical: 100.0, horizontal: 100.0)
// //margin: EdgeInsets.only(left: 50),
// //margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
// //padding: EdgeInsets.all(20),
// //Layout widget(ROW COLUMN and Stack)
// ),
// ],
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// child: Text("Container 1"),
// height: 100,
// width: 200,
// //width:double.infinity
// color: Colors.green,
// //margin: EdgeInsets.all(50.0),
// //margin: EdgeInsets.symmetric(vertical: 100.0, horizontal: 100.0)
// //margin: EdgeInsets.only(left: 50),
// //margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
// //padding: EdgeInsets.all(20),
// //Layout widget(ROW COLUMN and Stack)
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// child: Text("Container 1"),
// height: 100,
// width: 200,
// color: Colors.yellow,
// //margin: EdgeInsets.all(50.0),
// //margin: EdgeInsets.symmetric(vertical: 100.0, horizontal: 100.0)
// //margin: EdgeInsets.only(left: 50),
// //margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
// //padding: EdgeInsets.all(20),
// //Layout widget(ROW COLUMN and Stack)
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// child: Text("Container 1"),
// height: 100,
// width: 200,
// color: Colors.red,
// //margin: EdgeInsets.all(50.0),
// //margin: EdgeInsets.symmetric(vertical: 100.0, horizontal: 100.0)
// //margin: EdgeInsets.only(left: 50),
// //margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
// //padding: EdgeInsets.all(20),
// //Layout widget(ROW COLUMN and Stack)
// ),
// SizedBox(
// height: 10,
// ),
// Container(width: double.infinity)
// ],
// ),
