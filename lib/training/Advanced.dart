import 'package:flutter/material.dart';

import 'package:trail_project/training/Training_Appointment.dart';

class Advanced extends StatelessWidget {
  const Advanced({Key? key}) : super(key: key);

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
                  image: AssetImage("images/Tadvanced.png"),
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
                  "Advanced Obedience Training",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
              indent: 80,
              endIndent: 80,
            ),
            Text(
              'Wish that your dog understood better?\nBuild a strong foundation of love & trust with\nyour dog with our basic obedience training\npackage.',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(23.0, 12.0, 0, 0),
              child: Text(
                "What we cover",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TrainingList(
                      title: 'Heel',
                    ),
                    TrainingList(
                      title: 'Sit',
                    ),
                    TrainingList(
                      title: 'Down',
                    ),
                    TrainingList(
                      title: 'Sleep',
                    ),
                    TrainingList(
                      title: 'Up',
                    ),
                    TrainingList(title: 'Come'),
                  ],
                ),
                SizedBox(
                  width: 70,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TrainingList(
                      title: 'Fetch',
                    ),
                    TrainingList(
                      title: 'Drop',
                    ),
                    TrainingList(
                      title: 'Tack it',
                    ),
                    TrainingList(
                      title: 'Shack Hand',
                    ),
                    TrainingList(
                      title: 'Stay',
                    ),
                    TrainingList(title: 'Come'),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 28, 30),
              child: SizedBox(
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TrainingAppointment()));
                  },
                  child: Text(
                    "Enroll Now",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                ),
              ),
            ),
          ]),
        ]),
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
