import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<MyHomePage>createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context,value,child) =>Scaffold(
        appBar:AppBar(),
        body: Column(
          children: [
            //heading
            const Padding(
              padding:const EdgeInsets.all(25.0),
              child: Text('vocabuary ',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),

            //list of notes 
            CupertinoListSection(
              children: [CupertinoListTile(title:Text('lol'))],
            ),
          ],
        ),
      ),
      
    );
    
  }
}
