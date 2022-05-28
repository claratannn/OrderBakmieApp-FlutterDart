import 'package:flutter/material.dart';
import 'package:flutter_application/join.dart';
import 'package:flutter_application/login.dart';
import 'package:flutter_application/thxpem.dart';
import 'package:flutter_application/wait.dart';
import 'home.dart';
import 'main.dart';

class Pembayaran extends StatefulWidget {
  const Pembayaran({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Pembayaran> createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: new BoxDecoration(color: Colors.white),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 43, 30, 36),
                child: ListView(physics: ClampingScrollPhysics(), children: <
                    Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
                    child: Text(
                      'Pembayaran',
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: Text(
                      'Cara Pembayaran : ',
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Column(
                      children: <Widget>[
                        Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Color.fromARGB(255, 255, 255, 255),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Image(
                                      image: AssetImage('images/GoPay.png'),
                                      width: 400,
                                      height: 126,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Column(
                      children: <Widget>[
                        Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Color.fromARGB(255, 255, 255, 255),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Image(
                                      image: AssetImage('images/OVO.png'),
                                      width: 400,
                                      height: 126,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Column(
                      children: <Widget>[
                        Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Color.fromARGB(255, 255, 255, 255),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Image(
                                      image: AssetImage('images/Shopee.png'),
                                      width: 400,
                                      height: 126,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Column(
                      children: <Widget>[
                        Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Color.fromARGB(255, 255, 255, 255),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Image(
                                      image: AssetImage('images/Dana.png'),
                                      width: 400,
                                      height: 126,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 63, 186, 126),
                      ),
                      child: const Text(
                        'KONFIRMASI',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Wait(
                                      title: 'Bakmie Kim-An',
                                    )));
                      },
                    ),
                  ),
                ]))));
  }
}
