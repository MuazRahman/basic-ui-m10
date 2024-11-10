import 'package:flutter/material.dart';
import 'MyProfile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // This MyProfile method will show the profile screen
      home: MyProfile(),
    );
  }
}
