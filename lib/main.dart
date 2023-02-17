import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:layout/component/category.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffd4d4d4),
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('asset/img/5.jpg'),
                  )
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(8),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  gradient: LinearGradient(colors: [Colors.black, Colors.grey]),
                ),
                child: Text(
                  'Rate your game',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Recent Games',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    catogry(),
                    catogry(),
                    catogry(),
                    catogry(),
                    catogry(),
                  ],
                ),
              ),
              Text(
                'Played this week',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8))),
                    height: 250,
                    width: 180,
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('asset/img/5.jpg'),
                          width: double.infinity,
                        ),
                        ListTile(
                          title: Text('cat'),
                          subtitle: Text(
                              'Lorem ipsum is simply dummy text of the game'),
                        ),
                        Text('played 50%')
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8))),
                    height: 250,
                    width: 100,
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('asset/img/5.jpg'),
                          width: double.infinity,
                        ),
                        ListTile(
                          title: Text('cat'),
                          subtitle: Text(
                              'Lorem ipsum is simply dummy text of the game'),
                        ),
                        Text('played 30%')
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8))),
                    height: 250,
                    width: 80,
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('asset/img/5.jpg'),
                          width: double.infinity,
                        ),
                        ListTile(
                          title: Text('cat'),
                          subtitle:
                              Text('Lorem ipsum is simply dummy text of the'),
                        ),
                        Text('played 20%')
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
