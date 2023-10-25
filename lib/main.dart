import 'package:flutter/material.dart';
import 'package:myapp/model/note_data.dart';
import 'package:myapp/page/myHome_Page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> NoteData(),
      builder: (context, child)=> const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
      );
  }
}
