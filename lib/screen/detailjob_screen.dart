import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class DetailJob extends StatelessWidget {
  const DetailJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: null,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              JobLogoInformation(),
              SizedBox(
                height: 20,
              ),
              JobDescription(),
              SizedBox(
                height: 20,
              ),
              JobRequirements(),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Location',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'California, USA',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.primary,
                  ),
                  iconSize: MaterialStateProperty.all(30),
                ),
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline)),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff130160),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'APPLY NOW',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class JobRequirements extends StatelessWidget {
  const JobRequirements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Requirements',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        UnorderedList(
          [
            '3+ years of experience in UI/UX design',
            'Portfolio of design projects',
            'Knowledge of wireframe tools (e.g. Wireframe.cc and InVision)',
            'Up-to-date knowledge of design software like Adobe Illustrator and Photoshop',
            'Team spirit; strong communication skills to collaborate with various stakeholders',
            'Good time-management skills',
          ],
        ),
      ],
    );
  }
}

class JobLogoInformation extends StatelessWidget {
  const JobLogoInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('images/headhunting.png'),
        ),
        Center(
          child: Text(
            'UI/UX Designer',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Google inc'),
            Text(' \u2022 '),
            Text('California, USA'),
          ],
        ),
      ]),
    );
  }
}

class JobDescription extends StatelessWidget {
  const JobDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Job Description',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'We are looking for a UI/UX Designer to turn our software into easy-to-use products for our clients.',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black54,
          ),
        ),
        // add pressable text here to show more
        GestureDetector(
          onTap: () {},
          child: const Text(
            'Show More',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}

class UnorderedList extends StatelessWidget {
  const UnorderedList(this.texts, {super.key});
  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for (var text in texts) {
      // Add list item
      widgetList.add(UnorderedListItem(text));
      // Add space between items
      widgetList.add(const SizedBox(height: 5.0));
    }

    return Column(children: widgetList);
  }
}

class UnorderedListItem extends StatelessWidget {
  const UnorderedListItem(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text("• "),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}
