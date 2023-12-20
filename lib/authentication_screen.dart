import 'package:flutter/material.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text('Assets Club'))),
        body: Container(
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Enter Passcode')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('* * * * *')],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ButtonPasscode(body: '1'),
                      ButtonPasscode(body: '2', footer: 'ABC'),
                      ButtonPasscode(
                        body: '3',
                        footer: 'DEF',
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ButtonPasscode(body: '4', footer: 'GHI'),
                      ButtonPasscode(body: '5', footer: 'JKL'),
                      ButtonPasscode(
                        body: '6',
                        footer: 'MNO',
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ButtonPasscode(body: '7', footer: 'PQRS'),
                      ButtonPasscode(body: '8', footer: 'TUV'),
                      ButtonPasscode(
                        body: '9',
                        footer: 'WXYZ',
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Text(' '), ButtonPasscode(body: '0'), Text('<')],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class ButtonPasscode extends StatelessWidget {
  final String body;
  final String footer;
  const ButtonPasscode({
    required this.body,
    this.footer = '',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 75,
        height: 75,
        child: ElevatedButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    body),
                Text(
                    style: TextStyle(fontSize: 9.2, color: Colors.white),
                    footer),
              ],
            )));
  }
}
