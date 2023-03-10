import 'package:appfordashain/english.dart';
import 'package:appfordashain/nepali.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime pre_backpress = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          final timegap = DateTime.now().difference(pre_backpress);
          final cantExit = timegap >= Duration(seconds: 2);
          pre_backpress = DateTime.now();
          if (cantExit) {
            //show snackbar
            final snack = SnackBar(
              content: Text(
                'Press Back button again to Exit',
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(255, 69, 0, 1),
                    fontWeight: FontWeight.bold),
              ),
              duration: Duration(seconds: 2),
            );
            ScaffoldMessenger.of(context).showSnackBar(snack);
            return false;
          } else {
            return true;
          }
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(255, 69, 0, 1),
            title: Text(
              "HAPPY DASHAIN STATUS",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Trajan Pro'),
            ),
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Card(
                    color: Color.fromRGBO(255, 69, 0, 1),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EnglishQuotes()));
                      },
                      title: Text(
                        "ENGLISH",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Trajan Pro',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                  child: Card(
                    color: Color.fromRGBO(255, 69, 0, 1),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NepaliQuotes()));
                      },
                      title: Text(
                        "NEPALI",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Trajan Pro',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                Container(
                  child: Text(
                    "Copyright © 2023 Alivecoder",
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'poppins',
                      color: Color.fromRGBO(105, 105, 105, 2),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Developed with ❣ by Monika Uprety",
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'poppins',
                      color: Color.fromRGBO(105, 105, 105, 2),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
