import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:trail_project/walking/WalkerDetail.dart';

class Walking extends StatelessWidget {
  const Walking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          CustomAppBar(),
          Expanded(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(68, 30, 68, 0),
                          height: 250,
                          color: Colors.white,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Container(
                                  height: 124,
                                  width: 176,
                                  color: Colors.white,
                                  child: Image(
                                    image: AssetImage('icons/dogwalk.png'),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'I need dog walking now',
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                hintText: 'Search for nearby dog walkers',
                                prefixIcon: Icon(Icons.search),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Recomended Dog Walkers\nnear you',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                                onPressed: () {}, child: Text('View More'))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                WalkerDetail()));
                                  },
                                  child: DogWalkers()),
                              SizedBox(
                                width: 10,
                              ),
                              DogWalkers(),
                              SizedBox(width: 10),
                              DogWalkers(),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 140,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image(
                          image: AssetImage('icons/manwalking.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                )),
          ),
        ]),
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
      Container(
        height: 134,
        width: 146,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Image(
          image: AssetImage('icons/nithya1.png'),
          fit: BoxFit.fill,
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

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24, top: 15),
      height: 60,
      child: Row(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image(
                  image: AssetImage('images/back.png'), width: 30, height: 30)),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Text(
              'Walking',
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
