import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(
          width: 155,
          child: Text('Hello Fauzi',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87)),
        ),
        CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage('https://i.pravatar.cc/300'))
      ],
    );
  }
}
