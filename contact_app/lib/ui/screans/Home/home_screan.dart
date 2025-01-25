import 'package:flutter/material.dart';

class HomeScrean extends StatefulWidget {
  static const String routeName = 'Home';

  const HomeScrean({super.key});

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Color(0xff29384D),
            context: context,
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (context) {
              return Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              border: Border.all(color: Color(0xffFFF1D4))),
                          child: Image.asset(
                              'assets/images/image-not-preview-SKnaSYA7Kx.png'),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 16),
                                child: Text(
                                  'User Name',
                                  style: TextStyle(
                                      color: Color(0xffFFF1D4),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(16),
                                height: 2,
                                width: double.infinity,
                                decoration:
                                    BoxDecoration(color: Color(0xffFFF1D4)),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 16),
                                child: Text(
                                  'example@email.com',
                                  style: TextStyle(
                                      color: Color(0xffFFF1D4),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(16),
                                height: 2,
                                width: double.infinity,
                                decoration:
                                    BoxDecoration(color: Color(0xffFFF1D4)),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 16),
                                child: Text(
                                  '+200000000000',
                                  style: TextStyle(
                                      color: Color(0xffFFF1D4),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    TextField(
                      cursorColor: Color(0xffFFF1D4),
                      decoration: InputDecoration(

                        labelText: 'Enter User Name',
                        labelStyle: TextStyle(
                          color: Color(0xffFFF1D4),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color:Color(0xffFFF1D4)),
                          borderRadius: BorderRadius.circular(16)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color:Color(0xffFFF1D4)),
                            borderRadius: BorderRadius.circular(16)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color:Color(0xffFFF1D4)),
                            borderRadius: BorderRadius.circular(16)
                        ),
                      ),

                    ),
                    SizedBox(height: 10),
                    TextField(cursorColor: Color(0xffFFF1D4),
                      decoration: InputDecoration(
                        labelText: 'Enter User Email ',
                        labelStyle: TextStyle(
                          color: Color(0xffFFF1D4),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color:Color(0xffFFF1D4)),
                            borderRadius: BorderRadius.circular(16)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color:Color(0xffFFF1D4)),
                            borderRadius: BorderRadius.circular(16)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color:Color(0xffFFF1D4)),
                            borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      cursorColor: Color(0xffFFF1D4),
                      decoration: InputDecoration(
                        labelText: 'Enter User Phone',
                        labelStyle: TextStyle(
                          color: Color(0xffFFF1D4),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color:Color(0xffFFF1D4)),
                            borderRadius: BorderRadius.circular(16)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color:Color(0xffFFF1D4)),
                            borderRadius: BorderRadius.circular(16)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color:Color(0xffFFF1D4)),
                            borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                      },
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color(0xffFFF1D4),
                            borderRadius: BorderRadius.circular(16)),
                        child: Center(
                          child: Text(
                            'Enter user',
                            style: TextStyle(
                                color: Colors.black,

                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
        backgroundColor: Color(0xffFFF1D4),
        child: Icon(Icons.add),
      ),
      backgroundColor: Color(0xff29384D),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/Group 6.png'),
              Container(
                  margin: EdgeInsets.only(top: 160, left: 16),
                  child: Image.asset(
                    'assets/images/list-purple-Xetxuqguwn.png',
                    width: double.infinity,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'There is No Contacts Added Here',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFFF1D4)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
