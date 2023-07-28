import 'package:flutter/material.dart';
import 'package:paynav_task_app/provider/homepageProvider.dart';
import 'package:paynav_task_app/screens/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomePageProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PayNav Task App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
