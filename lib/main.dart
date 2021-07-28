import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int mynumber = 25;

  Color btncolor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            foregroundColor: Colors.amber,
            hoverColor: Colors.black,
            onPressed: () {},
            child: Icon(
              Icons.add,
              size: 30,
            ),
          ),
          body: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          print('fdsfsdfsfs');
                        },
                        child: Image(
                          image: AssetImage('images/one.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  '$mynumber',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 75.0,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      btncolor = Colors.pink;
                      mynumber++;
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    color: btncolor,
                    size: 50.0,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
