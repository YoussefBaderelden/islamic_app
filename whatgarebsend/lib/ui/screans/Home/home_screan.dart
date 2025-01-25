import 'package:contact_app/ui/screans/widget/contactcard.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class HomeScrean extends StatefulWidget {
  static const String routeName = 'Home';

  const HomeScrean({
    super.key,
  });

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  List<String> username = [];
  List<String> useremail = [];
  List<String> userphone = [];
  int rightnowindex = 0;

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController useremailController = TextEditingController();
  final TextEditingController userphoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadingData();
  }

  void loadingData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getStringList('username') ?? [];
      useremail = prefs.getStringList('useremail') ?? [];
      userphone = prefs.getStringList('userphone') ?? [];
    });
  }

  void savedata() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('username', username);
    await prefs.setStringList('useremail', useremail);
    await prefs.setStringList('userphone', userphone);
  }

  void deleteAllofContact() {
    setState(() {
      username.clear();
      useremail.clear();
      userphone.clear();
    });
    rightnowindex = 0;
    savedata();
  }

  @override
  Widget build(BuildContext context) {
    bool isListEmpty = username.isEmpty;
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          isListEmpty
              ? const SizedBox()
              : FloatingActionButton(
                  backgroundColor: Colors.red,
                  heroTag: 'btns-1',
                  onPressed: deleteAllofContact,
                  child: const Icon(
                    Icons.delete,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: const Color(0xff29384D),
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
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
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28),
                                    border: Border.all(
                                        color: const Color(0xffFFF1D4))),
                                child: Image.asset(
                                    'assets/images/image-not-preview-SKnaSYA7Kx.png'),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 16),
                                    child: const Text(
                                      'User Name',
                                      style: TextStyle(
                                          color: Color(0xffFFF1D4),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(16),
                                    height: 2,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                        color: Color(0xffFFF1D4)),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 16),
                                    child: const Text(
                                      'example@email.com',
                                      style: TextStyle(
                                          color: Color(0xffFFF1D4),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(16),
                                    height: 2,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                        color: Color(0xffFFF1D4)),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 16),
                                    child: const Text(
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
                        const SizedBox(height: 20),
                        TextField(
                          style: const TextStyle(
                              color: Color(0xffFFF1D4), fontSize: 12),
                          controller: usernameController,
                          cursorColor: const Color(0xffFFF1D4),
                          decoration: InputDecoration(
                            labelText: 'Enter the name',
                            labelStyle: const TextStyle(
                              color: Color(0xffFFF1D4),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xffFFF1D4)),
                                borderRadius: BorderRadius.circular(16)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xffFFF1D4)),
                                borderRadius: BorderRadius.circular(16)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xffFFF1D4)),
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          style: const TextStyle(
                              color: Color(0xffFFF1D4), fontSize: 12),
                          controller: useremailController,
                          cursorColor: const Color(0xffFFF1D4),
                          decoration: InputDecoration(
                            labelText: 'Enter the email',
                            labelStyle: const TextStyle(
                              color: Color(0xffFFF1D4),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xffFFF1D4)),
                                borderRadius: BorderRadius.circular(16)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xffFFF1D4)),
                                borderRadius: BorderRadius.circular(16)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xffFFF1D4)),
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          style: const TextStyle(
                              color: Color(0xffFFF1D4), fontSize: 16),
                          controller: userphoneController,
                          cursorColor: const Color(0xffFFF1D4),
                          decoration: InputDecoration(
                            labelText: 'Enter the phone number',
                            labelStyle: const TextStyle(
                              color: Color(0xffFFF1D4),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xffFFF1D4)),
                                borderRadius: BorderRadius.circular(16)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xffFFF1D4)),
                                borderRadius: BorderRadius.circular(16)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xffFFF1D4)),
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                        const SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            if (usernameController.text.isEmpty &&
                                useremailController.text.isEmpty &&
                                userphoneController.text.isEmpty) {
                              Navigator.pop(context);
                              return;
                            }
                            setState(() {
                              username.add(usernameController.text);
                              useremail.add(useremailController.text);
                              userphone.add(userphoneController.text);
                            });
                            savedata();
                            usernameController.clear();
                            useremailController.clear();
                            userphoneController.clear();
                            rightnowindex = ++rightnowindex;
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                                color: const Color(0xffFFF1D4),
                                borderRadius: BorderRadius.circular(16)),
                            child: const Center(
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
            backgroundColor: const Color(0xffFFF1D4),
            child: const Icon(Icons.add),
          ),
        ],
      ),
      backgroundColor: const Color(0xff29384D),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/Group 6.png'),
                    const SizedBox(
                      height: 10,
                    ),
                    isListEmpty
                        ? Column(children: [
                            Container(
                                margin:
                                    const EdgeInsets.only(top: 160, left: 16),
                                child: Image.asset(
                                  'assets/images/list-purple-Xetxuqguwn.png',
                                  width: double.infinity,
                                )),
                            const Row(
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
                          ])
                        : GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    childAspectRatio: 0.60),
                            itemCount: username.length,
                            itemBuilder: (context, index) {
                              return ContactCard(
                                delete: () {
                                  rightnowindex = index;
                                  setState(() {
                                    username.removeAt(rightnowindex);
                                    useremail.removeAt(rightnowindex);
                                    userphone.removeAt(rightnowindex);
                                  });

                                  savedata();
                                },
                                name: username[index],
                                email: useremail[index],
                                phone: userphone[index],
                              );
                              // );
                            },
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
