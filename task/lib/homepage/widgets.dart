import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'doc.dart';
import 'notifaction.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 45,
        bottom: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Find your desire',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  'health solution',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationPage(),
                ),
              );
            },
            backgroundColor: Colors.white10,
            elevation: 0,
            heroTag: 'btn1',
            child: SvgPicture.asset(
              'Assets/image/Screenshot-2024-11-24-115050.svg', // Replace with the path to your SVG file.
              width: 50.0, // Adjust size as needed.
              height: 50.0,
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomizedButton extends StatelessWidget {
  CustomizedButton(
      {super.key,
      required this.image,
      this.text,
      required this.wid,
      required this.tagKey});
  String image;
  String? text;
  Widget wid;
  String tagKey;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => wid,
              ),
            );
          },
          backgroundColor: const Color(0xffFFFFFF),
          elevation: 0,
          heroTag: tagKey,
          child: Image.asset(
            image, // Replace with the path to your SVG file.
            width: 50.0, // Adjust size as needed.
            height: 50.0,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text ?? '',
          style: const TextStyle(
            color: Color(0xffADADAD),
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

class MidWid extends StatelessWidget {
  const MidWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
      child: Container(
        height: 135,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: const Color(0xffE8F3F1),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
              top: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Early protection for',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'your family health',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(0, 0),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DocPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 29,
                    width: 97,
                    decoration: BoxDecoration(
                        color: const Color(0xff199A8E),
                        borderRadius: BorderRadius.circular(200)),
                    child: const Center(
                      child: Text(
                        'Learn more',
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 4,
            ),
            child: Container(
              height: 135,
              width: 121,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: const DecorationImage(
                  image: AssetImage(
                      'Assets/image/Screenshot 2024-11-24 154002.png'),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

// ignore: must_be_immutable
//
class DoctorCard extends StatelessWidget {
  final String doctorName;
  final String specialization;
  final double rating;
  final String distance;
  final String imageUrl;

  const DoctorCard({
    super.key,
    required this.doctorName,
    required this.specialization,
    required this.rating,
    required this.distance,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DocPage(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 173,
          width: 123,
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 8.0,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                    50.0), // Circular shape for the image.
                child: Image.asset(
                  imageUrl,
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 12.0),
              Text(
                doctorName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4.0),
              Text(
                specialization,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 6.0,
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.teal.shade100),
                    child: Row(
                      children: [
                        const Icon(Icons.star,
                            color: Color(0xff199A8E), size: 10.0),
                        const SizedBox(width: 4.0),
                        Text(
                          rating.toString(),
                          style: const TextStyle(fontSize: 8.0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Row(
                    children: [
                      const Icon(Icons.location_on,
                          color: Colors.grey, size: 10.0),
                      const SizedBox(width: 4.0),
                      Text(
                        distance,
                        style: const TextStyle(fontSize: 8.0),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
