import 'package:flutter/material.dart';

class Homescrean extends StatelessWidget {
  const Homescrean({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> navigationBar = [
      'assets/images/Home.png',
      'assets/images/watch.png',
      'assets/images/Store.png',
      'assets/images/profile.png',
      'assets/images/Notification.png',
      'assets/images/Ellipse 1.png'
    ];
    List<String> storis = [
      'assets/images/story11.jpeg',
      'assets/images/story21.jpeg',
      'assets/images/story11.jpeg',
      'assets/images/story21.jpeg',
      'assets/images/story11.jpeg',
      'assets/images/story21.jpeg',
    ];
    List<String> profileStoris = [
      'assets/images/profilestory1.png',
      'assets/images/profilestory2.png',
      'assets/images/profilestory1.png',
      'assets/images/profilestory2.png',
      'assets/images/profilestory1.png',
      'assets/images/profilestory2.png',
    ];

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 18, left: 11),
                  child: Text(
                    'Facebook',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff1877F2)),
                  ),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/VectorPLUS.png')),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/Search.png')),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/Messenger.png')),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: IconButton(
                      onPressed: () {}, icon: Image.asset(navigationBar[0])),
                ),
                Expanded(
                  child: IconButton(
                      onPressed: () {}, icon: Image.asset(navigationBar[1])),
                ),
                Expanded(
                  child: IconButton(
                      onPressed: () {}, icon: Image.asset(navigationBar[2])),
                ),
                Expanded(
                  child: IconButton(
                      onPressed: () {}, icon: Image.asset(navigationBar[3])),
                ),
                Expanded(
                  child: IconButton(
                      onPressed: () {}, icon: Image.asset(navigationBar[4])),
                ),
                Expanded(
                    child: InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 15,
                    child: Image.asset(
                      navigationBar[5],
                    ),
                  ),
                )),
              ],
            ),
            Container(
              width: double.infinity,
              height: 2,
              color: Color(0xff898F9C),
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: 18, right: 11, left: 11, bottom: 24),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/Ellipse 2.png'))),
                Text(
                  'What’s in Your Mind?',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff898F9C),
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/Photos.png')),
                )
              ],
            ),
            Container(
              width: double.infinity,
              height: 2,
              color: Color(0xff898F9C),
            ),
            Expanded(
              flex: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: storis.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 12),
                          child: Row(
                            children: [
                              index == 0
                                  ? InkWell(
                                      child: Container(
                                        margin: EdgeInsets.only(right: 18),
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: Container(
                                              margin: EdgeInsets.only(left: 5),
                                              width: 130,
                                              height: 160,
                                              child: Image.asset(
                                                'assets/images/Group 7.png',
                                                fit: BoxFit.fill,
                                              ),
                                            )),
                                      ),
                                    )
                                  : Container(
                                      width: 0,
                                    ),
                              Stack(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Container(
                                        width: 130,
                                        height: 160,
                                        child: Image.asset(
                                          storis[index],
                                          fit: BoxFit.fill,
                                        ),
                                      )),
                                  Positioned(
                                    top: 6,
                                    left: 6,
                                    child: CircleAvatar(
                                      child: Image.asset(profileStoris[index]),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 70,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 12,
                itemBuilder: (context, index) => Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            child: Image.asset('assets/images/Ellipse 6.png'),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Route',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '8h .',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xff898F9C)),
                                    ),
                                    Image.asset('assets/images/Vector (4).png'),
                                    Spacer(),
                                    Container(
                                        margin: EdgeInsets.all(8),
                                        child: Image.asset(
                                            'assets/images/Group 10.png')),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 2,
                        color: Color(0xff898F9C),
                      ),
                      Container(
                          width: double.infinity,
                          child: Image.asset('assets/images/Rectangle 10.png')),
                      Container(
                        width: double.infinity,
                        height: 2,
                        color: Color(0xff898F9C),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                                margin: EdgeInsets.only(
                                    top: 16, bottom: 16, right: 16, left: 8),
                                child:
                                    Image.asset('assets/images/heart-2.png')),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                                margin: EdgeInsets.only(
                                    top: 16, bottom: 16, right: 8, left: 8),
                                child:
                                    Image.asset('assets/images/Vector7.png')),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                                margin: EdgeInsets.only(
                                    top: 16, bottom: 16, right: 8, left: 8),
                                child:
                                    Image.asset('assets/images/Vector8.png')),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {},
                            child: Container(
                                margin: EdgeInsets.all(16),
                                child: Image.asset(
                                    'assets/images/Icon Frame.png')),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
