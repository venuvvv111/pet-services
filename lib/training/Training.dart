import 'package:flutter/material.dart';
import 'package:trail_project/training/Advanced.dart';
import 'package:trail_project/training/Training_Appointment.dart';

class Training extends StatelessWidget {
  const Training({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 24),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Text(
                        'Training',
                        style: TextStyle(
                            color: Colors.pink,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 31, 24, 0),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('images/Tbanner.png'),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, top: 30),
                  child: Text(
                    'Packages we provide',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TrainingList(
                        title: 'Advanced Obedience Training',
                      ),
                      TrainingList(
                        title: 'Basic Obedience Training',
                      ),
                      TrainingList(
                        title: 'Basic+Advanced\n Obedience Training',
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class TrainingList extends StatelessWidget {
  final String title;

  const TrainingList({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
      child: Container(
        height: 420,
        width: 370,
        decoration: BoxDecoration(
            color: Colors.pink.shade300,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(21, 33, 22, 0),
          child: ListView(
            children: [
              Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Divider(
                    thickness: 2,
                    indent: 50,
                    endIndent: 50,
                    height: 10,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Text(
                      'Wish that your dog understood better?\nBuild a strong foundation of love & trust with\nyour dog with our basic obedience training\npackage.',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Text(
                    'Home Visit Sessions:22 \nDay Care Session:22\nBoarding Duration:30',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 24, 0, 20),
                    child: Row(
                      children: [
                        Text(
                          'Assessment Fee :  ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        Text(
                          '699/-',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                      width: 200,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.black.withOpacity(
                              0.9,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        TrainingAppointment()));
                          },
                          child: Text(
                            'Enroll Now',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "Click here to ",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Advanced()));
                            },
                            child: Text(
                              'Know more',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
