import 'package:flutter/material.dart';
import 'package:trail_project/Home.dart';

class GroomingAppointment extends StatefulWidget {
  const GroomingAppointment({Key? key}) : super(key: key);

  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<GroomingAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                padding: const EdgeInsets.only(left: 0, top: 10, bottom: 10),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
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
              child: Image(
                image: AssetImage("images/cart.png"),
                width: 30,
                height: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Image(
                image: AssetImage("images/profile.png"),
                width: 30,
                height: 30,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
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
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      "Grooming",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Column(children: [
              Text("Thanks for Booking",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Text("Your Pet is in our hands",
                  style: TextStyle(
                    fontSize: 16,
                  )),
            ]),
            SizedBox(
              height: 9,
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('images/appointment.gif'),
                      fit: BoxFit.cover)),
              //child: Image(
              //image: AssetImage("images/appointment.gif"),
              //fit: BoxFit.fill,
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  'You booked the appointment for',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text('"posh Paws Bath"',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 24,
              ),
              child: Text(
                "Appointment Details :",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Divider(
              color: Colors.black,
              height: 10,
              thickness: 1.6,
              indent: 0,
              endIndent: 140,
            ),
            SizedBox(
              height: 10,
            ),
            AppointmentDetails(
              title: 'Pet Name                     : ',
              value: ' Tomy',
            ),
            AppointmentDetails(
              title: 'Pet Id                            :',
              value: '  SVDC22',
            ),
            AppointmentDetails(
              title: 'Care Tacker                 :',
              value: '  Srinath',
            ),
            AppointmentDetails(
              title: 'Boarding Time            :',
              value: '  8:30',
            ),
            AppointmentDetails(
              title: 'Boarding Place           :',
              value: '  Googlemaps Link',
            ),
            AppointmentDetails(
              title: 'Boading fee                 :',
              value: '  800/-',
            ),
            AppointmentDetails(
              title: 'Boarding Fee Status  :',
              value: '  Paid',
            ),
          ]),
        ),
      ),
    );
  }
}

class AppointmentDetails extends StatelessWidget {
  final String title;
  final String value;
  const AppointmentDetails({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              Text(value,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
            ],
          ),
        ),
      ],
    );
  }
}
