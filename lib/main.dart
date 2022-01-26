import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var bottonbarindex = 1;

  List item = [
    {"item": 'Ice Choclet Mocha', 'prix': '120', 'image': 'img/ice.png'},
    {"item": 'Coffee Americano', 'prix': '50', 'image': 'img/coffea.png'},
    {"item": 'Coffee Cappuccino', 'prix': '80', 'image': 'img/kapo.png'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Color(0xff00704A),
                )),
            Row(
              children: const [
                Icon(
                  Icons.location_on_outlined,
                  color: Color(0xff00704A),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Location\nMaadi, Road 11',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Color(0xff00704A), fontSize: 14),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  color: Color(0xff00704A),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person_outlined,
                color: Color(0xff00704A),
              ),
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            Text(
              'Good morning,',
              style: TextStyle(
                  color: Color(0xff00704A), fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Get coffee, buy time!',
              style: TextStyle(
                  color: Color(0xff00704A),
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'what are you looking for?',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: TextStyle(fontSize: 24, color: Colors.grey.shade800),
                ),
                Row(
                  children: [
                    Text(
                      'See All',
                      style: TextStyle(
                        color: Color(0xff00704A),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xff00704A),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 270,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: item.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 130,
                          decoration: BoxDecoration(
                              color: Color(0xff00704A),
                              borderRadius: BorderRadius.circular(50)),
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Image(
                                image: AssetImage(item[index]['image']),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Container(
                            height: 100,
                            width: 130,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  item[index]['item'],
                                  style: TextStyle(
                                      color: Color(0xff00704A),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey.shade600,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey.shade600,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey.shade600,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey.shade600,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey.shade400,
                                      size: 12,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item[index]['prix'],
                                      style: TextStyle(
                                          color: Colors.brown.shade300,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      ' DZ',
                                      style: TextStyle(
                                          color: Colors.brown.shade200,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 12),
                                    )
                                  ],
                                )
                              ],
                            ))
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Today's Offers!",
              style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff00704A),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30, top: 15),
                  width: double.infinity,
                  height: 110,
                  decoration: BoxDecoration(
                      color: Color(0xff00704A),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Buy Two,',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      Text(
                        'Get a Free Cookie!',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        'order now',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  
                  child: Container(
                    margin: EdgeInsets.only(right: 25),
                    height: 100,
                    width: 110,
                    child: Image(
                      image: AssetImage('img/pp.png'),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    bottonbarindex = 1;
                  });
                },
                child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: bottonbarindex == 1
                            ? Color(0xff00704A)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.home_outlined,
                      color:
                          bottonbarindex == 1 ? Colors.white : Colors.black45,
                    ))),
            GestureDetector(
                onTap: () {
                  setState(() {
                    bottonbarindex = 2;
                  });
                },
                child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: bottonbarindex == 2
                            ? Color(0xff00704A)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.category_outlined,
                      color:
                          bottonbarindex == 2 ? Colors.white : Colors.black45,
                    ))),
            GestureDetector(
                onTap: () {
                  setState(() {
                    bottonbarindex = 3;
                  });
                },
                child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: bottonbarindex == 3
                            ? Color(0xff00704A)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.favorite_outline,
                      color:
                          bottonbarindex == 3 ? Colors.white : Colors.black45,
                    ))),
            GestureDetector(
                onTap: () {
                  setState(() {
                    bottonbarindex = 4;
                  });
                },
                child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: bottonbarindex == 4
                            ? Color(0xff00704A)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.card_giftcard_outlined,
                      color:
                          bottonbarindex == 4 ? Colors.white : Colors.black45,
                    ))),
          ],
        ),
      ),
    );
  }
}
