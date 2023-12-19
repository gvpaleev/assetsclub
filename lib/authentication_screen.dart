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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('data')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('data'), Text('data'), Text('data')],
                  ),
                  Column(
                    children: [Text('data'), Text('data'), Text('data')],
                  ),
                  Column(
                    children: [Text('data'), Text('data'), Text('data')],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
