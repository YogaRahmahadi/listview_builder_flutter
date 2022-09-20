import 'package:flutter/material.dart';

class ListViewBody extends StatelessWidget {
  ListViewBody({
    Key? key,
  }) : super(key: key);

  final titles = [
    "Apple Watch 7",
    "Canon EOS 200D",
    "JBL GO 2",
    "Rexux Daxa M71 Pro",
    "Logitech Pro X",
    "Razer Deathadder",
    "Razer Deathadder",
    "Razer Deathadder",
  ];
  final subtitles = [
    "USD 159.99",
    "USD 599.99",
    "USD 129.99",
    "USD 99.99",
    "USD 139.99",
    "USD 79.99",
    "USD 79.99",
    "USD 79.99",
  ];
  final image = [
    "assets/images/apple_watch_7.jpg",
    "assets/images/canon_eos_200d.jpg",
    "assets/images/jbl_go_2.jpg",
    "assets/images/rexus_daxa_m71_pro.jpg",
    "assets/images/logitech_pro_x.jpg",
    "assets/images/razer_deathadder.jpg",
    "assets/images/razer_deathadder.jpg",
    "assets/images/razer_deathadder.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(16),
        shrinkWrap: true,
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 90,
            child: Card(
                margin: const EdgeInsets.all(8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
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
                    width: 90,
                  ),
                )),
          );
        });
  }
}
