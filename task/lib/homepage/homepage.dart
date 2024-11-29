import 'package:flutter/material.dart';
import 'package:mainpage/homepage/ambulanceloca.dart';
import 'package:mainpage/homepage/calender.dart';
import 'package:mainpage/homepage/doc.dart';
import 'package:mainpage/homepage/host.dart';
import 'package:mainpage/homepage/notifaction.dart';
import 'package:mainpage/homepage/pharmcies.dart';
import 'package:mainpage/homepage/profile.dart';

import 'package:mainpage/homepage/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCFCFC),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                const TopWidget(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search doctores,drugs,articales...',
                      labelStyle:
                          TextStyle(color: Color(0xffADADAD), fontSize: 10),
                      hintText: 'type something...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      ),
                      prefixIcon: Icon(Icons.search_rounded),
                      prefixIconColor: Color(0xffADADAD),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomizedButton(
                        image: 'Assets/image/Screenshot 2024-11-24 131931.png',
                        text: 'Doctor',
                        wid: const DocPage(),
                        tagKey: 'btn-doc',
                      ),
                      CustomizedButton(
                        image: 'Assets/image/Screenshot 2024-11-24 131919.png',
                        text: 'Pharmacy',
                        wid: const PharmciesPage(),
                        tagKey: 'btn-pharmacy',
                      ),
                      CustomizedButton(
                        image: 'Assets/image/Screenshot 2024-11-24 131833.png',
                        text: 'Hospital',
                        wid: const HostPage(),
                        tagKey: 'btn-host',
                      ),
                      CustomizedButton(
                        image: 'Assets/image/Screenshot 2024-11-24 131250.png',
                        text: 'Ambulance',
                        wid: const AmbLocation(),
                        tagKey: 'btn-amb',
                      ),
                    ],
                  ),
                ),
                const MidWid(),
                // const SizedBox(
                //   height: ,
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Top Doctors',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DocPage(),
                                ),
                              );
                            },
                            child: const Text(
                              'see all',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal),
                            ),
                          )
                        ],
                      ),
                      const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            DoctorCard(
                              doctorName: "Dr. Marcus Horizon",
                              specialization: "Cardiologist",
                              rating: 4.7,
                              distance: "800m away",
                              imageUrl: 'Assets/image/OIP.png',
                            ),
                            SizedBox(width: 16.0),
                            DoctorCard(
                              doctorName: "Dr. Maria Elena",
                              specialization: "Psychologist",
                              rating: 4.9,
                              distance: "1.5km away",
                              imageUrl: 'Assets/image/OIP (1).png',
                            ),
                            SizedBox(width: 16.0),
                            DoctorCard(
                              doctorName: "Dr. Stevi Jessica",
                              specialization: "Orthopedist",
                              rating: 4.8,
                              distance: "2km away",
                              imageUrl: 'Assets/image/OIF.png',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Health articales',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DocPage(),
                                ),
                              );
                            },
                            child: const Text(
                              'see all',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal),
                            ),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              height: 80,
                              width: 80,
                              child: Image.asset('Assets/image/R.png'),
                            ),
                            SizedBox(width: 16.0),
                            const Text(
                              'Sever sideffects of drugs',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomizedButton(
                image: 'Assets/image/Screenshot 2024-11-25 180058.png',
                wid: const HomePage(),
                tagKey: 'btn3',
              ),
              CustomizedButton(
                  image: 'Assets/image/Screenshot 2024-11-25 180219.png',
                  wid: NotificationPage(),
                  tagKey: 'btn4'),
              CustomizedButton(
                  image: 'Assets/image/Screenshot 2024-11-25 180309.png',
                  wid: const Calender(),
                  tagKey: 'btn5'),
              CustomizedButton(
                  image: 'Assets/image/Screenshot 2024-11-25 180348.png',
                  wid: const Profile(),
                  tagKey: 'btn6'),
            ],
          )
        ],
      ),
    );
  }
}
