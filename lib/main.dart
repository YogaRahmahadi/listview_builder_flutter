import 'package:flutter/material.dart';
import 'partials/Header.dart';
import 'partials/ListViewBody.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                height: 150,
                child: const Header(),
              ),
              Container(
                padding: const EdgeInsets.all(24),
                color: const Color.fromARGB(255, 213, 213, 213),
                height: 500,
                child: ListViewBody(),
              ),
            ],
          ),
        ));
  }
}
