import 'package:flutter/material.dart';

import 'button.dart';

class PostTemplate extends StatelessWidget {

  final String username;
  final String videoDescription;
  final String numberoOfLikes;
  final String numberOfComments;
  final String numberOfShares;
  final userPost;

  PostTemplate({
    required this.username,
    required this.videoDescription,
    required this.numberoOfLikes,
    required this.numberOfComments,
    required this.numberOfShares,
    required this.userPost,

});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          userPost,

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(-1,1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('@'+username,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(text: videoDescription,
                        style: TextStyle(color: Colors.white)),
                        TextSpan(
                          text: '#ttt#kkkkk',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                          color: Colors.white),
                        )
                      ])),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(1,1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                    icon: Icons.favorite,
                    number: numberoOfLikes,
                  ),
                  MyButton(
                    icon: Icons.chat_bubble_outline,
                    number: numberOfComments,
                  ),
                  MyButton(
                    icon: Icons.send,
                    number: numberOfShares,
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
