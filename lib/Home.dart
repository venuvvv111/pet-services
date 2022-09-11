import 'package:flutter/material.dart';
import 'package:trail_project/Boarding.dart';
import 'package:trail_project/training/Training.dart';
import 'package:trail_project/grooming/grooming.dart';
import 'package:trail_project/walking/WalkerDetail.dart';

import 'package:trail_project/walking/walking.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                //Navigator.push(
                //    context, MaterialPageRoute(builder: (context) => Burger()));
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 0,
                  top: 10,
                  bottom: 10,
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image(
                        image: AssetImage("images/Home.png"),
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: GestureDetector(
                onTap: () {},
                child: Image(
                  image: AssetImage("images/cart.png"),
                  width: 30,
                  height: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: GestureDetector(
                onTap: () {},
                child: Image(
                  image: AssetImage("images/profile.png"),
                  width: 30,
                  height: 30,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Welcome to Royal Pet",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Your pet our care",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("images/mask.png"),
                            fit: BoxFit.fill)),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      top: 20,
                    ),
                    child: Text(
                      "Available Services :",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Boarding()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: CategoryList(
                        title: 'Boarding ',
                        before: Icons.navigate_next_sharp,
                        image: 'images/bording.png',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Walking()));
                    },
                    child: CategoryList(
                      title: "Walking ",
                      before: Icons.navigate_next,
                      image: "images/walking.png",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Grooming()));
                    },
                    child: CategoryList(
                      title: "Grooming",
                      before: Icons.navigate_next_sharp,
                      image: 'images/groming.png',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    focusColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Training()));
                    },
                    child: CategoryList(
                      title: "Training",
                      before: Icons.navigate_next_sharp,
                      image: 'images/training.png',
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 0, top: 20, bottom: 20),
                    child: Text(
                      "Nearby Dog Walkers :",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  CareCard(
                    image: '',
                    title1: 'Nithyami',
                    subtitle: '2Kms Away',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CareCard(
                    image: '',
                    title1: 'Corinarin',
                    subtitle: '2Kms Away',
                  ),
                  SizedBox(height: 10),
                  CareCard(
                    image: '',
                    subtitle: '2Kms Away',
                    title1: 'Camerao',
                  ),
                ],
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}

class CareCard extends StatelessWidget {
  final String title1;
  final String subtitle;
  final String image;

  const CareCard({
    Key? key,
    required this.title1,
    required this.subtitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => WalkerDetail()));
      },
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        height: 102,
        decoration: BoxDecoration(
            color: Colors.pink.shade200,
            borderRadius: BorderRadius.circular(23)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: Container(
              height: 70,
              width: 70,
              child: Image(image: AssetImage('images/profile.png')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 33, right: 30),
            child: Column(
              children: [
                Text(
                  title1,
                  style: TextStyle(fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Text(
                    subtitle,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Book")),
          Icon(
            Icons.favorite_border,
            color: Colors.white,
            size: 30,
          )
        ]),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  final String title;
  final IconData before;
  final String image;

  const CategoryList({
    Key? key,
    required this.title,
    required this.before,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
              color: Colors.black, style: BorderStyle.solid, width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 0, 11),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 20,
          ),
          child: Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(50)),
            child: Icon(
              before,
              color: Colors.white,
            ),
          ),
        ),
      ]),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
        padding: EdgeInsets.only(left: 8, right: 0),
        height: 50,
        child: Row(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {},
                  child: Image(
                    image: AssetImage(
                      "icons/Menu.png",
                    ),
                    height: 30,
                    width: 30,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 85),
              child: Text(
                "Royal Pet",
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}


// ignore: must_be_immutable
