import 'package:flutter/material.dart';
import 'package:flutter_application/login.dart';
import 'package:flutter_application/profile.dart';

class SideDish extends StatefulWidget {
  const SideDish({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<SideDish> createState() => _SideDishState();
}

class _SideDishState extends State<SideDish> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 43, 30, 36),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                            Text(
                              'Side Dish',
                              style: TextStyle(
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          ])),
                      Container(
                        width: 100.0,
                        height: 59.0,
                        alignment: Alignment(5, 27),
                        child: new Image.asset('images/logo.png'),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profile(
                                          title: 'Bakmie Kim-An2',
                                        )),
                              ),
                              child: Card(
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: Colors.grey,
                                  child: Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          height: 41,
                                          width: 41,
                                          child: Icon(
                                            Icons.person,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            size: 35,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage(
                                          title: 'Bakmie Kim-An2',
                                        )),
                              ),
                              child: Card(
                                elevation: 5,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const SizedBox(
                                  width: 50,
                                  height: 20,
                                  child: Center(
                                      child: Text('Login',
                                          style: TextStyle(fontSize: 10))),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 41,
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    fillColor: Color.fromARGB(255, 177, 177, 177),
                    filled: true,
                    // hintText: 'Bakmie Karet, Es Teh Manis',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    labelText: 'Bakmie Karet, Es Teh Manis',
                    labelStyle: TextStyle(fontFamily: 'Mulish', fontSize: 17),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                ),
                child: Row(children: [
                  Text(
                    'Pangsit / Bakso',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ]),
              ),
              const Divider(
                thickness: 1,
                indent: 5,
                endIndent: 5,
                color: Colors.black,
              ),
              Card(
                // elevation: 5.0,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(20),
                // ),
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
                            image: AssetImage('images/bakso.png'),
                            width: 90,
                            height: 90,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 30, 70, 10),
                            child: Text(
                              'Bakso Sapi Isi 5',
                              style: TextStyle(
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 15, 10),
                            child: Text(
                              'Bakso enak banget lochh!\nGaada lawan',
                              style: TextStyle(
                                fontFamily: 'Mulish',
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5, 0, 95, 10),
                            child: Text(
                              'Rp 30.000,-',
                              style: TextStyle(
                                  fontFamily: 'Mulish',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(100, 0, 0, 10),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 1, bottom: 1, left: 1, right: 1),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color:
                                          Color.fromARGB(255, 231, 231, 231)),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.remove,
                                      ),
                                      Text(
                                        '   0   ',
                                      ),
                                      Icon(Icons.add)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ])
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                // elevation: 5.0,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(20),
                // ),
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
                            image: AssetImage('images/pangsitk.png'),
                            width: 90,
                            height: 90,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 30, 70, 10),
                            child: Text(
                              'Pangsit Babi Isi 5',
                              style: TextStyle(
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 40, 10),
                            child: Text(
                              'Pangsit dijamin enak\nbanget lochh! (Haram)',
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
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(100, 0, 0, 10),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 1, bottom: 1, left: 1, right: 1),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color:
                                          Color.fromARGB(255, 231, 231, 231)),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.remove,
                                      ),
                                      Text(
                                        '   0   ',
                                      ),
                                      Icon(Icons.add)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ])
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                // elevation: 5.0,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(20),
                // ),
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
                            image: AssetImage('images/pangsitg.png'),
                            width: 90,
                            height: 90,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 30, 30, 10),
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
                            margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
                            child: Text(
                              'Pangsit Goreng dijamin enak\nbanget lochh!\n(Haram)',
                              style: TextStyle(
                                fontFamily: 'Mulish',
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 100, 10),
                            child: Text(
                              'Rp 30.000,-',
                              style: TextStyle(
                                  fontFamily: 'Mulish',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(100, 0, 0, 10),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 1, bottom: 1, left: 1, right: 1),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color:
                                          Color.fromARGB(255, 231, 231, 231)),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.remove,
                                      ),
                                      Text(
                                        '   0   ',
                                      ),
                                      Icon(Icons.add)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ])
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                // elevation: 5.0,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(20),
                // ),
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
                            image: AssetImage('images/pangsitk.png'),
                            width: 90,
                            height: 90,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 30, 70, 10),
                            child: Text(
                              'Pangsit Babi Isi 2',
                              style: TextStyle(
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 40, 10),
                            child: Text(
                              'Pangsit dijamin enak\nbanget lochh! (Haram)',
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
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(100, 0, 0, 10),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 1, bottom: 1, left: 1, right: 1),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color:
                                          Color.fromARGB(255, 231, 231, 231)),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.remove,
                                      ),
                                      Text(
                                        '   0   ',
                                      ),
                                      Icon(Icons.add)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ])
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                // elevation: 5.0,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(20),
                // ),
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
                            image: AssetImage('images/bakso.png'),
                            width: 90,
                            height: 90,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 30, 70, 10),
                            child: Text(
                              'Bakso Sapi Isi 2',
                              style: TextStyle(
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 15, 10),
                            child: Text(
                              'Bakso enak banget lochh!\nGaada lawan',
                              style: TextStyle(
                                fontFamily: 'Mulish',
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5, 0, 95, 10),
                            child: Text(
                              'Rp 30.000,-',
                              style: TextStyle(
                                  fontFamily: 'Mulish',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(100, 0, 0, 10),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 1, bottom: 1, left: 1, right: 1),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color:
                                          Color.fromARGB(255, 231, 231, 231)),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.remove,
                                      ),
                                      Text(
                                        '   0   ',
                                      ),
                                      Icon(Icons.add)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ])
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
