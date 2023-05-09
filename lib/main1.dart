import 'dart:developer';
import 'dart:math' as math;
import 'package:flutter/material.dart';

//stateless widget

void main() {
  runApp(const MyApp1());
}

//creating UI element that doesn't have any internal data, has no state
class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

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
          },
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Business'),
          BottomNavigationBarItem(
              icon: Icon(Icons.schedule), label: 'ScheduleHome')
        ]),
        drawer: const Drawer(
          child: Text('Hey'),
        ),

        //refactor(ctrl+period) + wrap with center
        body: Center(
          //child: Padding ...; child: SizedBox ...; child: Column
          // child: Container(
          //   margin: const EdgeInsets.all(100),
          //   padding: const EdgeInsets.all(10),
          //   color: Colors.blue,
          //   height: 100,
          //   width: 100,
          //   child: const Text('Hello'),
          //   //decoration: BoxDecoration(),
          // ),
          //row->main axis; column->cross axis
          // child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: const [
          //       Expanded(
          //         flex: 2,
          //         child: Icon(Icons.access_alarm),
          //       ),
          //       Icon(Icons.backpack),
          //       Icon(Icons.person),
          //       Icon(Icons.key),
          //     ]),

          //Scrollable widget to allow scrollable view
          // child: ListView(
          //   scrollDirection: Axis.horizontal,
          //   //garbage collect items that are no longer on the screen
          //   addAutomaticKeepAlives: false,
          //   children: [
          //     Container(
          //       color: Colors.blue,
          //       width: 5000,
          //       height: 5000,
          //     ),
          //     Container(
          //       color: Colors.green,
          //       width: 5000,
          //       height: 5000,
          //     ),
          //     Container(
          //       color: Colors.yellow,
          //       width: 5000,
          //       height: 5000,
          //     ),
          //   ],
          // ),
          //function that you define that can map a list of data to a list of widgets - means you
          //can create a scrollable list that's infintely long where the chlidren are rendered lazily
          //in the UI smooth and fast
          child: ListView.builder(itemBuilder: (_, index) {
            return Container(
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
              width: 500,
              height: 500,
            );
          }),
          //have a widget overlap another; like a button that floats on top of another UI element
          // child: Stack(
          //   children: [
          //     Container(
          //       color: Colors.purple,
          //       width: 100,
          //       height: 100,
          //       //use position to move a widget to a specific spot
          //     ),
          //     const Positioned(
          //       top: 25,
          //       left: 25,
          //       child: Icon(Icons.person),
          //     ),
          //     //modify position relative to its parent
          //     const Align(
          //       alignment: Alignment.bottomCenter,
          //       child: Icon(Icons.done),
          //     ),
          //     const Icon(Icons.verified)
          //     //const Icon(Icons.person)
          //   ],
          // ),
        ),
      ),
    );
  }
}
