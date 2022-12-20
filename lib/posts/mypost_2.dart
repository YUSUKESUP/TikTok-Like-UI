import 'package:flutter/material.dart';
import 'package:tiktok_like_ui/utill/post_template.dart';

class MyPost2 extends StatelessWidget {
  const MyPost2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'yusike9999999',
      videoDescription: 'いえーーい',
      numberoOfLikes: '1.2M',
      numberOfComments: '232',
      numberOfShares: '122',
      userPost:  Expanded(
        child: Container(
          height: 1000,
          width: 500,
          child:FittedBox(
            fit: BoxFit.fill,
            child: Image.asset('aseets/tiktok-icon2.png'),

          ),
        ),
      ),
    );
  }
}
