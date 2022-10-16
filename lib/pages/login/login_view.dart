import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InputDecoration textFieldDecoration = const InputDecoration(
      border: OutlineInputBorder(),
    );

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('polus', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(decoration: textFieldDecoration.copyWith(labelText: 'login')),
                TextField(decoration: textFieldDecoration.copyWith(labelText: 'password'), obscureText: true,),
              ],
            ),
          ),
          Container(

            width: 100,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(8)
            ),
            child: TextButton(
              onPressed: () => Navigator.pushNamed(context, '/home'),
              child: const Text('Войти', style: TextStyle(color: Colors.black, fontSize: 24),),
            ),
          )
        ],
      ),
    );
  }
}
