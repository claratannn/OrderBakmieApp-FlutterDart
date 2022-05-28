import 'package:flutter/material.dart';

import 'home.dart';

class ThanksPem extends StatefulWidget {
  const ThanksPem({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ThanksPemState createState() => _ThanksPemState();
}

class _ThanksPemState extends State<ThanksPem> {
  @override
  void initState() {
    super.initState();
    _navigatetohomepage();
  }

  _navigatetohomepage() async {
    await Future.delayed(Duration(seconds: 5), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage(
                  title: 'Bakmie Kim-An',
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: new BoxDecoration(color: Colors.white),
        child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(30, 270, 30, 0),
            child: Center(
              child: Text(
                'Terima Kasih',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 40, 30, 0),
            child: Center(
              child: Text(
                'Pesananmu telah kami terima \n dan akan segera kami kirimkan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ]));
  }
}
