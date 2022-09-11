import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WalkerDetail extends StatefulWidget {
  const WalkerDetail({Key? key}) : super(key: key);

  @override
  _WalkerDetailState createState() => _WalkerDetailState();
}

class _WalkerDetailState extends State<WalkerDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 24, right: 24),
        height: 90,
        width: double.infinity,
        color: Colors.pink.shade300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('800/- per walk',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        size: 25,
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
              width: 146,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Contact Now',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 0, right: 0, top: 10, bottom: 0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Walkers(
                          image: 'icons/walking.png',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Walkers(
                          image: 'icons/dog1.png',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Walkers(
                          image: 'icons/dog2.png',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Walkers(image: 'icons/dog3.png')
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 24,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image(
                              image: AssetImage('icons/nithya.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nithya',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '(3 reviews)',
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Row(
                        children: [
                          Verification(
                            image: 'icons/mobile.png',
                            title: 'Number\nVerified',
                          ),
                          Verification(
                            image: 'icons/mail.png',
                            title: '   Mail\n Verified',
                          ),
                          Verification(
                            image: 'icons/acount.png',
                            title: '  \t  IDs\n  Verified',
                          ),
                          Verification(
                            image: 'icons/book.png',
                            title: '  Sitting test\n   Passed',
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'Listing Summary',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          'Lorem ipsum dolor sit amet,consectetur\nadipiscing elit. Nulla At viverra dolor .Mauris nunc\nsem,Pelletesque sed tristique non,dapibus non\nurna.Suspendisse porttitor diam arcu.Nullum\nfinibus magna ut justo faucibus,quis bibendum\nfelis porta.Phasellus et teluus pretium,finibus\nlectus nec,posure arcu.',
                          style: TextStyle(
                            fontSize: 16,
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Distance willing to travel to visit your home',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage('icons/distance.png'),
                      width: 40,
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        '5-7KM',
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2, bottom: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('The length of each walk',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image(
                        image: AssetImage('icons/length.png'),
                        width: 60,
                        height: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        '1 hour',
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 2,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Similar suggested dog walkers',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 0, right: 24, top: 10, bottom: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        DogWalkers(),
                        SizedBox(
                          width: 10,
                        ),
                        DogWalkers(),
                        SizedBox(
                          width: 10,
                        ),
                        DogWalkers()
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}

class Verification extends StatelessWidget {
  final String title;
  final String image;

  const Verification({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(0),
            height: 60,
            width: 60,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image(
              image: AssetImage(image),
            ),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  Color firtstcolor = Colors.black;
  void changecolor() {
    setState(() {
      changecolor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
        padding: EdgeInsets.only(left: 0, right: 0),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 30,
                width: 30,
                child: Image(
                  image: AssetImage('images/back.png'),
                ),
              ),
            ),
            Text(
              'Walking',
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            IconButton(
                onPressed: () => changecolor(),
                icon: Icon(
                  Icons.favorite_border_outlined,
                  size: 30,
                  color: Colors.black,
                )),
          ],
        ),
      ),
    );
  }
}

class DogWalkers extends StatelessWidget {
  const DogWalkers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => WalkerDetail()));
        },
        child: Container(
          height: 134,
          width: 146,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Image(
            image: AssetImage('icons/nithya1.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
              padding: const EdgeInsets.only(right: 0, left: 110, top: 13),
              child: Icon(
                Icons.favorite_border_sharp,
              )),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 60,
            ),
            child: Text(
              "Nithya",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  size: 9,
                  color: Colors.white,
                ),
                Icon(
                  Icons.star,
                  size: 9,
                  color: Colors.white,
                ),
                Icon(
                  Icons.star,
                  size: 9,
                  color: Colors.white,
                ),
                Icon(
                  Icons.star,
                  size: 9,
                  color: Colors.white,
                ),
                Icon(
                  Icons.star_border_outlined,
                  size: 9,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      )
    ]);
  }
}

class Walkers extends StatelessWidget {
  final String image;
  const Walkers({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 300,
        width: 370,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
    ]);
  }
}
