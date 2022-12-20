import 'package:flutter/material.dart';
import 'package:tiktok_like_ui/utill/post_template.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'createdbykoko',
      videoDescription: 'tiktok ui tutorial',
      numberoOfLikes: '1.2M',
      numberOfComments: '1232',
      numberOfShares: '122',
      userPost: Expanded(
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
