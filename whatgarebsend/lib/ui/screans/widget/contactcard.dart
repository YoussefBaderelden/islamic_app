import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContactCard extends StatelessWidget {
  ContactCard(
      {super.key,
      required this.email,
      required this.name,
      required this.phone,
      required this.delete});
  String name;
  String phone;
  String email;
  final VoidCallback delete;

  @override
  Widget build(BuildContext context) {
    var screendim = MediaQuery.of(context).size;
    return Container(
      height: screendim.height * 0.3,
      width: screendim.width * 0.42,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffFFF1D4),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)),
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/096ff7fd728e880bca931a69a1417a5f.png',
                        ),
                        fit: BoxFit.cover),
                    // color: Color(0xff29384D),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: screendim.height * 0.04,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xffFFF1D4),
                    ),
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      name,
                      style: const TextStyle(
                          fontSize: 16, color: Color(0xff29384D)),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.email),
                      const SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              email,
                              style: const TextStyle(
                                fontSize: 10,
                                color: Color(0xff29384D),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      const Icon(CupertinoIcons.phone),
                      const SizedBox(
                        width: 2,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              phone,
                              style: const TextStyle(
                                fontSize: 10,
                                color: Color(0xff29384D),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 11),
                  InkWell(
                    onTap: delete,
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      height: screendim.height * 0.042,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      child: const Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.delete_rounded,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Delete',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
