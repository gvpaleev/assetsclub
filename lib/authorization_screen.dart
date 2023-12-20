import 'package:flutter/material.dart';

class AuthorizationScreen extends StatelessWidget {
  const AuthorizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Assets Club'))),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              width: 300,
              height: 40,
              child: TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                  onPressed: () {},
                  child: const Text('Log in'))),
          SizedBox(
            width: 300,
            height: 40,
            child: TextButton(
                style: TextButton.styleFrom(
                  // backgroundColor: Colors.transparent,
                  foregroundColor: Colors.white,
                  // padding: EdgeInsets
                ),
                onPressed: () {},
                child: const Text('Join the club')),
          ),
        ],
      )),
    );
  }
}
