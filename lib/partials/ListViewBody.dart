import 'package:flutter/material.dart';

class ListViewBody extends StatelessWidget {
  ListViewBody({
    Key? key,
  }) : super(key: key);

  final titles = [
    "List 1",
    "List 2",
    "List 3",
    "List 4",
    "List 5",
  ];
  final subtitles = [
    "Here is list 1 subtitle",
    "Here is list 2 subtitle",
    "Here is list 3 subtitle",
    "Here is list 4 subtitle",
    "Here is list 5 subtitle",
  ];
  final image = [
    "assets/images/apple_watch_7.jpg",
    "assets/images/canon_eos_200d.jpg",
    "assets/images/jbl_go_2.jpg",
    "assets/images/rexus_daxa_m71_pro.jpg",
    "assets/images/logitech_pro_x.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(16),
        shrinkWrap: true,
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(
              titles[index],
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              subtitles[index],
              style: const TextStyle(
                fontFamily: 'Poppins',
                color: Color.fromARGB(255, 122, 20, 255),
              ),
            ),
            leading: Image.asset(
              image[index],
              width: 80,
            ),
          ));
        });
  }
}
