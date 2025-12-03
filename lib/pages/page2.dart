import 'package:dummy_test_app/pages/page1.dart';
import 'package:flutter/material.dart';

class secondpage extends StatelessWidget {
  const secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('second page'),
      backgroundColor: Colors.blue,),
      body: Center(child: ElevatedButton(child: Text('go to first page'),
      onPressed: () => {
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => firspage(),)
        )
      },
      ),
    ),
  );
  }
}