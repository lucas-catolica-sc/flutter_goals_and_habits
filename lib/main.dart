// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'login_page.dart';
import 'first_goals_page.dart';
import 'detail_day_tag.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    routes: {
      '/home': (context) => HomePage(),
      '/login': (context) => LoginPage(),
      '/goals': (context) => FirstGoalsPage()
    },
    debugShowCheckedModeBanner: false,
  )
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/happy-female-athlete-enjoying-morning-while-listening-music-with-eyes-closed-nature.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            // Add other widgets on top of the background image here
            // Centered Text
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Text
                  Padding(
                    padding: EdgeInsets.only(top: 250.00, left: 200.00),
                    child: Column(
                      children: const [
                        Text(
                          'Goals',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 46.0,
                            fontFamily: 'BebasNeue',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'And',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 46.0,
                            fontFamily: 'BebasNeue',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Habits!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 46.0,
                            fontFamily: 'BebasNeue',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ], // Children
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 200.00),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.white),
                      ),
                      child: Text(
                        '   Start   ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 36.0,
                          fontFamily: 'BebasNeue',
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}