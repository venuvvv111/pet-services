import 'package:flutter/material.dart';

class TrainingAppointment extends StatefulWidget {
  const TrainingAppointment({Key? key}) : super(key: key);

  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<TrainingAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: Text(
                      "Training",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 31, bottom: 30),
              child: Container(
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
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "You're Successfully enrolled for \n Advanced Obedience Training ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 24,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              height: 242,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.pink),
                  borderRadius: BorderRadius.circular(10)),
              child: ListView(
                children: [
                  Text(
                    'Order Details',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    thickness: 1,
                    indent: 120,
                    endIndent: 120,
                    color: Colors.black,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Order(
                            title: 'Order ID:',
                          ),
                          Order(
                            title: 'Training Name :',
                          ),
                          Order(
                            title: 'Training Starts on :',
                          ),
                          Order(
                            title: 'Training Ends on :',
                          ),
                          Order(
                            title: 'Training Centre :',
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          OrderValue(
                            value: '#4A-CE-B',
                          ),
                          OrderValue(
                            value: 'AOT',
                          ),
                          OrderValue(
                            value: '22-02-2022',
                          ),
                          OrderValue(
                            value: '24-03-2022',
                          ),
                          OrderValue(
                            value: 'Google maps link',
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class OrderValue extends StatelessWidget {
  final String value;
  const OrderValue({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
      child: Text(
        value,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

class Order extends StatelessWidget {
  final String title;
  const Order({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
