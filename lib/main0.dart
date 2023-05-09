import 'dart:developer';
import 'package:flutter/material.dart';

// statefull widget

void main() {
  runApp(const MyApp0());
}

//[changed]creating UI element that doesn't have any internal data, has no state
//refactor -> Convert to StatefulWidget
//break the widget into two different classes that keeps the widget itself immutable
// while giving us a state class where we can play with mutable data
class MyApp0 extends StatefulWidget {
  const MyApp0({super.key});

  @override
  State<MyApp0> createState() => _MyAppState();
}

//state class with mutable data
//has a build method
//can also define variables on this class and then change them by using the built-in
//setState() function somewhere else in our code
class _MyAppState extends State<MyApp0> {
  int count = 0;

  //initialize date; ex: fetch a record from a database
  //this method is called once when the widget is first initialized
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  //another lifecycle that runs when the widget is removed from the UI
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  //Above is not the only way to manage state in FLutter.There are many different approaches;
  //Ex; a package called 'provider' that allows us to share real time data throughout the entire
  //widget tree without ever needing to use a statefull widget at all
  //There are also full blown solutions such as 'Block' and 'Cubit'

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //ctrl+space to bring up all the options
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text('Test'),
          ),

          //UI elements out of the box
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              log('pressed');

              setState(() {
                count++;
              });
            },
            child: const Icon(Icons.add),
          ),

          //refactor(ctrl+period) + wrap with center
          body: Center(
            child: Text(
              '$count',
              style: TextStyle(fontSize: 60),
            ),
          )),
    );
  }
}
