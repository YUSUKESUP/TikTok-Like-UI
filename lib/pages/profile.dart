import 'package:flutter/material.dart';

import '../utill/profiletab_1.dart';
import '../utill/profiletab_2.dart';
import '../utill/profiletab_3.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('YUSUKEEEEEEE',style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.person_add,color: Colors.black,),
          actions: [Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.menu,color: Colors.black,),
          )],
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('aseets/hengao_mabuta_uragaesu.png')
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('@YUSUKEEEEE',
              style: TextStyle(
                  color: Colors.black,fontSize: 20),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,

                    child: Column(
                      children: [
                        Text('37',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                        fontSize: 24)
                          ),
                      SizedBox(height: 5,),
                      Text('Following',
                      style: TextStyle(color: Colors.grey,fontSize: 15),
                    ),
                    ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(


                    child: Column(
                      children: [
                        Text('1M',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24)
                        ),
                        Text('Followers',
                          style: TextStyle(color: Colors.grey,fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,

                    child: Column(
                      children: [
                        Text('56',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24)
                        ),
                        SizedBox(height: 5,),
                        Text('Likes ',
                          style: TextStyle(color: Colors.grey,fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                  child:
                  Text('Edit profile',style: TextStyle(color: Colors.black,fontSize: 20),),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child:
                    Icon(Icons.camera_alt,color: Colors.grey[800]),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child:
                  Icon(Icons.bookmark_border,color: Colors.grey[800],),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(5),),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Text('bio here',
            style: TextStyle(
              color: Colors.grey[700],
            ),),
            TabBar(
                tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3,color: Colors.black,),),
                Tab(
                  icon: Icon(Icons.favorite,color: Colors.black,),
                ),
              Tab(
                icon: Icon(Icons.lock_outline_rounded,color: Colors.black,),)
              ]
              ),
            Expanded(
                child: TabBarView(
              children: [
                FirstTab(),
                SecondTab(),
                ThirdTab(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
