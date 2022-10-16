import 'package:flutter/material.dart';

class SelectCarPage extends StatelessWidget {
  const SelectCarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Введите номер транспортного средства', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),),
            const TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'номер транспортного средства'),),
            Container(width: 200,
            decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(8)
            ),
            child: TextButton(
              onPressed: () => Navigator.pushReplacementNamed(context, '/home'),
              child: const Text('Войти', style: TextStyle(color: Colors.black, fontSize: 16), textAlign: TextAlign.center,),
            ),),
          ],
        ),
      )
    );
  }
}
