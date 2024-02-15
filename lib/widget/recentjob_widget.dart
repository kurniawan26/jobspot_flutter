import 'package:flutter/material.dart';
import 'package:jobspot_flutter/screen/detailjob_screen.dart';

class RecentJobWidget extends StatelessWidget {
  const RecentJobWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Recent Job List',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const DetailJob();
            }));
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xFFE5E5E5)),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const JobLabel(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Text(
                        '\$15K',
                        style: TextStyle(
                            color: Color(
                              0xff524B6B,
                            ),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '/Mo',
                        style: TextStyle(
                            color: Color(
                              0xffAAA6B9,
                            ),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Badge(
                            text: "Senior Designer",
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Badge(
                            text: "Full Time",
                          ),
                        ],
                      ),
                      Badge(
                        text: "Apply Now",
                        color: const Color(0xffFFD3A5),
                        onPress: () {
                          print('Apply');
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class JobLabel extends StatelessWidget {
  const JobLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage('https://i.pravatar.cc/300')),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Designer',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                Row(
                  children: [
                    Text('Google inc'),
                    Text(' \u2022 '),
                    Text('California, USA'),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(child: Icon(Icons.favorite_outline))
      ],
    );
  }
}

class Badge extends StatelessWidget {
  final String text;
  final VoidCallback? onPress; // Add onPress parameter
  final Color color; // Add color parameter

  const Badge(
      {Key? key,
      required this.text,
      this.onPress,
      this.color = const Color(0xffCBC9D4)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: color,
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 12, color: Color(0xFF524B6B)),
        ),
      ),
    );
  }
}
