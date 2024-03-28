import 'package:button_type_widget/ui_helper/util.dart';
import 'package:button_type_widget/widgets/rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        textTheme: const TextTheme(
            displayLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            titleMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void callBack() {
    print("callBack");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Flutter Widgets"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 50,
              child: RoundedButton(
                btnName: "Play",
                icon: Icon(Icons.play_arrow),
                callBack: () {
                  print("Loggin");
                },
                textStyle: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              height: 20,
            ),
            Container(
              width: 200,
              height: 50,
              child: RoundedButton(
                btnName: "Play",
                callBack: () {
                  print("Loggin");
                },
                textStyle: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              height: 20,
            ),
            Container(
              width: 200,
              height: 50,
              child: RoundedButton(
                btnName: "Play",
                icon: Icon(Icons.play_arrow),
                callBack: () {
                  print("Loggin");
                },
                textStyle: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
