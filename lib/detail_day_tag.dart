// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'first_goals_page.dart';

class DetailDayTag extends StatelessWidget {
  const DetailDayTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(
            elevation: 0,
            toolbarHeight: 110,
            // Define a elevação para 0 para uma aparência mais plana
            backgroundColor: Color.fromARGB(255, 255, 198, 41),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            leading: Padding(
              padding: EdgeInsets.only(left: 16.0),
              // Adiciona espaço à esquerda
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios, // Ícone de voltar
                  color: Colors.white, // Cor do ícone
                  size: 32, // Tamanho do ícone
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstGoalsPage()),
                  );
                },
              ),
            ),
            title: Row(
              children: [
                SizedBox(width: 40),
                Text(
                  'Goals work today',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'RaleWay',
                  ),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 16.0),
                // Adiciona espaço à direita
                child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 32,
                  ),
                  onPressed: () {
                    // Adicione a ação desejada aqui
                  },
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 60.00, bottom: 20.00),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildDay('Mo', '8'),
                  _buildDay('Tu', '9'),
                  _buildDay('We', '10'),
                  _buildDay('Th', '11'),
                  _buildDay('Fr', '12'),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 25.00, left: 50.00),
            alignment: Alignment.bottomCenter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "WORK",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway',
                      color: Color.fromARGB(255, 255, 198, 41)),
                ),
                SizedBox(width: 12),
                Text(
                  "TO DO",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Raleway',
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.00, bottom: 10.00),
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildFinishedGoal('Wake up Early'),
                  _buildFinishedGoal('Read work of April'),
                  _buildFinishedGoal('Breakfast with John'),
                  _buildToDoGoal('Reunion'),
                  _buildToDoGoal('Write to Miley'),
                  _buildToDoGoal('E-mail'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildToDoGoal(String tag) {
  return Padding(
    padding: EdgeInsets.only(bottom: 20.0),
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(40.00),
          ),
          padding: EdgeInsets.only(left: 20.00, right: 25.00),
          child: SizedBox(
            width: 375,
            height: 40,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    tag,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'RaleWay',
                        color: Colors.white
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildFinishedGoal(String tag) {
  return Padding(
    padding: EdgeInsets.only(bottom: 20.0),
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 198, 41),
            borderRadius: BorderRadius.circular(40.00),
          ),
          padding: EdgeInsets.only(left: 20.00, right: 25.00),
          child: SizedBox(
            width: 375,
            height: 40,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    tag,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'RaleWay',
                      color: Colors.white
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: 26,
                  height: 26,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/yellow_check.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildDay(String day, String number) {
  return Column(
    children: [
      Text(
        day,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'RaleWay',
        ),
      ),
      SizedBox(height: 16),
      Text(
        number,
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'RaleWay',
        ),
      ),
    ],
  );
}
