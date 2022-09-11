import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:trail_project/grooming/Posh.dart';

class Grooming extends StatelessWidget {
  const Grooming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
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
                    SizedBox(
                      width: 90,
                    ),
                    Text("Grooming",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 26,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text("Services under grooming :",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 0, bottom: 10),
                child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: Image(
                      image: AssetImage('images/offer.png'),
                      fit: BoxFit.fill,
                    )),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Posh()));
                },
                child: ServicesList(
                  title: 'Posh Paws Bath',
                  value: '\$899',
                ),
              ),
              ServicesList(
                title: 'Clip-n-Fluff',
                value: '\$1299',
              ),
              ServicesList(
                title: 'Wash & Wag Spa',
                value: '\$1999',
              ),
              ServicesList(
                title: 'No Ticks Pleez',
                value: '\$4299',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServicesList extends StatelessWidget {
  final String title;
  final String value;

  const ServicesList({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: Container(
        padding: EdgeInsets.fromLTRB(18, 15, 18, 7),
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.pink.shade300,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      value,
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                    )),
              ],
            ),
            Divider(
              color: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    Icons.check,
                    size: 12,
                  ),
                ),
                Text(
                  'Pawscure',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    Icons.check,
                    size: 12,
                  ),
                ),
                Text(
                  'Blow Drying',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                Text(
                  "+5 Services",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'view Details',
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
