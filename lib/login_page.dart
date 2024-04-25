// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'first_goals_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 60.0),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/profile_picture.jpg'),
                        radius: 70,
                      ),
                    ),
                    SizedBox(
                      width: 260,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 255, 198, 41)),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(fontSize: 20),
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 260,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 255, 198, 41)),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Senha',
                            hintStyle: TextStyle(fontSize: 20),
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                          ),
                          obscureText: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 175,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FirstGoalsPage(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 255, 198,
                                  41)), // Define a cor de fundo do botão
                        ),
                        child: Text(
                          'Entrar',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Raleway',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
