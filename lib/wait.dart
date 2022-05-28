import 'package:flutter/material.dart';
import 'thxpem.dart';
import 'home.dart';

class Wait extends StatefulWidget {
  const Wait({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _WaitState createState() => _WaitState();
}

class _WaitState extends State<Wait> {
  @override
  void initState() {
    super.initState();
    _navigatetohomepage();
  }

  _navigatetohomepage() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => ThanksPem(
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
                'Tunggu Sebentar...',
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
                'Tunggu Sebentar yaa!, \nPembayaranmu sedang diverifikasi',
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
