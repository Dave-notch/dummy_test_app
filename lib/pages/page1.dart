import 'package:dummy_test_app/pages/page2.dart';
import 'package:flutter/material.dart';

class firspage extends StatelessWidget {
  const firspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('first page'),
      backgroundColor: Colors.blue,),
      body: Center(child: ElevatedButton(child: Text('go to second page'),
      onPressed: () => {
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => secondpage(),)
        )
      },
      ),
    ),
    );
  }
}