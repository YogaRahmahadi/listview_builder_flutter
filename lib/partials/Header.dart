import 'package:flutter/material.dart';

// ignore: camel_case_types
class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
          child: const Text(
            'Buyings',
            style: TextStyle(
              fontFamily: 'Poppins-SemiBold',
              fontSize: 30,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 122, 20, 255),
              ),
              child: const Text(
                'Featured Items',
                style: TextStyle(
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: const Text(
                'Most Recent',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: const Text(
                'New Items',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
