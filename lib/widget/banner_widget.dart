import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: const Color(0xFF130160),
        borderRadius: BorderRadius.circular(6),
      ),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text('50% off',
                    style: TextStyle(
                        color: Color(0xFFFDFDFD),
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
                const Text('Take any Courses',
                    style: TextStyle(color: Color(0xFFFDFDFD), fontSize: 16)),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      backgroundColor: const Color(0xFFFF9228)),
                  child: const Text(
                    'Join Now',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            Image.asset(
              'images/mentor.png',
            )
          ],
        ),
      ),
    );
  }
}
