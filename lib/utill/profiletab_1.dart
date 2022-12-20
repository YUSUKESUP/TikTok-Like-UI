import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3),
        itemCount: 10,
        itemBuilder:(context,index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              height: 30,
                width: 30,
                color: Colors.grey[200],
          ));
        });
  }
}
