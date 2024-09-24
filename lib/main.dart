import 'package:dicoding_flutter/another_screen.dart';
import 'package:dicoding_flutter/first_screen.dart';
import 'package:dicoding_flutter/replacement_screen.dart';
import 'package:dicoding_flutter/return_data_screen.dart';
import 'package:dicoding_flutter/second_screen.dart';
import 'package:dicoding_flutter/second_screen_with_data.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/' :(context) => const FirstScreen(),
        '/secondScreen' : (context) => const SecondScreen(),
        '/secondScreenWithData' :(context) {
          final args = ModalRoute.of(context)?.settings.arguments as String?;
          return SecondScreenWithData(data: args ?? 'Default Value');
        },
        '/returnDataScreen':(context) => const ReturnDataScreens(),
        '/replacementScreen':(context) => const ReplacementScreen(),
        '/anotherScreen':(context) => const AnotherScreen()
      },
    );
  }
}