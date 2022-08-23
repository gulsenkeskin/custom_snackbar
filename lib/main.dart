import 'package:custom_snackbar/screens/flash_message.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom Snackbar"),
        ),
        body: FlashMessageScreen(),
        /* floatingActionButton: FloatingActionButton(
          onPressed: (){},
          tooltip: '',
          child: const Icon(Icons.add),
        ), */
      ),
    );
  }
}
