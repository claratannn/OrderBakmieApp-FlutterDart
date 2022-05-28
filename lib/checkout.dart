import 'package:flutter/material.dart';
import 'package:flutter_application/join.dart';
import 'package:flutter_application/login.dart';
import 'package:flutter_application/pembayaran.dart';
import 'package:flutter_application/thxpem.dart';
import 'package:flutter_application/wait.dart';
import 'home.dart';
import 'main.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: new BoxDecoration(color: Colors.white),
          child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 43, 30, 36),
              child:
                  ListView(physics: ClampingScrollPhysics(), children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
                  child: Text(
                    'Keranjang Anda',
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
                    'Alamat Pengiriman : ',
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 14,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 209, 209, 209),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(),
                      ),
                      labelText: 'Masukkan Alamat Anda',
                      labelStyle: TextStyle(fontFamily: 'Mulish', fontSize: 17),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text(
                    'Pesananmu : ',
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 14,
                    ),
                  ),
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Card(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image(
                              image: AssetImage('images/bakmiebc.png'),
                              width: 90,
                              height: 90,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Column(children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                              child: Text(
                                'Bakmie Karet Babi Cincang',
                                style: TextStyle(
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Text(
                                'Bakmie Karet Kenyal Dengan\nIsian Toping Babi Cincang \nKecap',
                                style: TextStyle(
                                  fontFamily: 'Mulish',
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 95, 10),
                              child: Text(
                                'Rp 40.000,-',
                                style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ])
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Card(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image(
                              image: AssetImage('images/pangsit.png'),
                              width: 90,
                              height: 90,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Column(children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                  top: 10, bottom: 10, right: 20),
                              child: Text(
                                'Pangsit Goreng Babi Isi 5',
                                style: TextStyle(
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10, right: 30),
                              child: Text(
                                'Pangsit Goreng dijamin\nenak banget lochh!\n(Haram)',
                                style: TextStyle(
                                  fontFamily: 'Mulish',
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 95, 10),
                              child: Text(
                                'Rp 30.000,-',
                                style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ])
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Card(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image(
                              image: AssetImage('images/badak.png'),
                              width: 90,
                              height: 90,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Column(children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                  top: 10, bottom: 10, right: 115),
                              child: Text(
                                'Badak',
                                style: TextStyle(
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Text(
                                'Minuman soda sehat yang\nsudah lama beredar di\nIndonesia GAS COBAIN!',
                                style: TextStyle(
                                  fontFamily: 'Mulish',
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 85, 10),
                              child: Text(
                                'Rp 15.000,-',
                                style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ])
                        ],
                      ),
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
                      'PEMBAYARAN',
                      style: TextStyle(
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Pembayaran(
                                    title: 'Bakmie Kim-An',
                                  )));
                    },
                  ),
                ),
              ]))),
    );
  }
}
