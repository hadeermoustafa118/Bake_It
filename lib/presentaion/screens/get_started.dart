import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              'assets/images/started.png',
              width: double.infinity,
              fit: BoxFit.fill,
            ),
           const SizedBox(
              height: 25,
            ),
           const Text(
              'Bake It.',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(183, 98, 29, 1)),
            ),const SizedBox(
              height: 10,
            ),
            Text('''Where all your favourite bakery 
            stuff are available.''', style:TextStyle(fontSize: 16) ,),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(183, 98, 29, 1),
                  fixedSize: const Size(250, 50)),
              child: const Text('Get Started', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
            ),
          ],
        ),
      ),
    );
  }
}
