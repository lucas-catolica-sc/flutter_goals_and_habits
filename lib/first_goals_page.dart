// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'detail_day_tag.dart';
import 'login_page.dart';

class FirstGoalsPage extends StatelessWidget {
  const FirstGoalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            AppBar(
              elevation: 0,
              toolbarHeight: 110,// Define a elevação para 0 para uma aparência mais plana
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
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                ),
              ),
              title: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profile_picture.jpg'),
                    radius: 30,
                  ),
                  SizedBox(width: 16),
                  Text(
                    'Hi, Lucas!',
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
                  padding: EdgeInsets.only(right: 16.0), // Adiciona espaço à direita
                  child: IconButton(
                    icon: Icon(Icons.menu, color: Colors.white, size: 32,),
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
              padding: EdgeInsets.only(top: 30.00, bottom: 10.00),
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildGoalTag('Health', context),
                    _buildGoalTag('Work', context),
                    _buildGoalTag('Education', context),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 25.00, left: 50.00),
              alignment: Alignment.topLeft,
              child: Text(
                "MONTH GOALS",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Raleway'),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20.00, bottom: 10.00),
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildGoal('Eat healthy'),
                    _buildGoal('Do sports'),
                    _buildGoal('Learn french'),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
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

Widget _buildGoalTag(String tag, BuildContext context) {
  return Column(
    children: [
      Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 198, 41),
          borderRadius: BorderRadius.circular(30.00),
        ),
        padding: EdgeInsets.only(top: 5.00, bottom: 5.00, left: 40.00, right: 40.00),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailDayTag()),
            );
          },
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      tag,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: 'RaleWay',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

Widget _buildGoal(String tag) {
  return Padding(
    padding: EdgeInsets.only(bottom: 20.0),
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40.00),
            border: Border.all(
              color: Color.fromARGB(255, 255, 198, 41), // Cor da borda
              width: 1.0, // Largura da borda
            ),
          ),
          padding: EdgeInsets.only(left: 20.00, right: 25.00),
          child: SizedBox(
            width: 375,
            height: 73,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    tag,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RaleWay',
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: 36,
                  height: 36,
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
