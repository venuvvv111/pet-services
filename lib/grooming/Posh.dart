import 'package:flutter/material.dart';

import 'package:trail_project/grooming/grooming_appointment.dart';

class Posh extends StatelessWidget {
  const Posh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          ListView(children: [
            Stack(children: [
              Container(
                height: 237,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF5CE88),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Image(
                  image: AssetImage("images/poshpaws.png"),
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 24),
                child: GestureDetector(
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
              )
            ]),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 24.0, 0, 0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Posh Paws Bath",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
              indent: 120,
              endIndent: 120,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(23.0, 12.0, 0, 0),
              child: Text(
                "Services are provides in our kennel",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            BoardingList(
              title: 'Pawdicure',
            ),
            BoardingList(
              title: 'Teeth Brushing /Dental Spray',
            ),
            BoardingList(
              title: 'Bath with Shampoo',
            ),
            BoardingList(
              title: 'Nail Clipping/ Grinding',
            ),
            BoardingList(
              title: 'Ear Cleaning',
            ),
            BoardingList(title: 'Combing / Brushing'),
            Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 20.0, 0, 0),
              child: Text(
                "Available Timings",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        width: 85,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("8:30"))),
                    SizedBox(
                        width: 85,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("9:30"))),
                    SizedBox(
                        width: 85,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("10:30"))),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          width: 85,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text("11:30"))),
                      SizedBox(
                          width: 85,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text("3:30"))),
                      SizedBox(
                          width: 85,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text("4:30"))),
                    ],
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 28, 30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GroomingAppointment()));
                },
                child: Text(
                  "Book Now",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}

class BoardingList extends StatelessWidget {
  final String title;
  const BoardingList({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(44, 20, 0, 0),
      child: Row(
        children: [
          Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
                color: Colors.purple.shade200,
                borderRadius: BorderRadius.circular(50)),
            child: Icon(
              Icons.check,
              size: 15,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
