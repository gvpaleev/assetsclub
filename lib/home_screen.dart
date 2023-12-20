import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(title: const Center(child: Text('Assets Club'))),
    // );
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text('Assets Club'))),
        extendBody: true,
        body: BodyMain(),
        bottomNavigationBar: Container(
          height: 82,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(95, 255, 255, 255),
                spreadRadius: 0,
                blurRadius: 10,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            child: BottomNavigationBar(
                selectedItemColor:
                    Color.fromARGB(255, 255, 255, 255), // Цвет выбранных иконок
                unselectedItemColor: Color.fromARGB(255, 158, 158, 158), //
                // backgroundColor: Color.fromARGB(255, 255, 255, 255),
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.school), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.query_stats), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.credit_card), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.notifications), label: ''),
                  BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
                ]),
          ),
        ));
  }
}

class BodyMain extends StatelessWidget {
  const BodyMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: [
        Container(
          height: 250,
          // color: const Color.fromARGB(16, 255, 255, 255),
          child: Card(),
        )
      ],
    ));
  }
}

class Card extends StatelessWidget {
  const Card({super.key});
  final addres = 'TEeGvJ jjq5sx y35kdt C4NbVq K7cuT4 AUwA';
  final balance = '\$ 5.555,22';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 243, 33, 33),
                Color.fromARGB(255, 4, 0, 255)
              ], // Цвета для градиента
            ),
            borderRadius: BorderRadius.circular(20), // Закругленные углы
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(style: TextStyle(fontSize: 20), 'USDT'),
                      Text(style: TextStyle(fontSize: 10), 'Tron')
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(style: TextStyle(fontSize: 25), '$balance'),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                ],
              ),
              Expanded(
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15.5),
                      '$addres'),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('22/24'),
                  SizedBox(
                    width: 24,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          )),
    );
  }
}
