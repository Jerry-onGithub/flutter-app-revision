import 'package:flutter/material.dart';

// NAVIGATION from one screen to another
//[Flutter has Navigator 1.0 (Imperative Simple) anf Navigator 2.0 (Declarative Complex)]
//Here, we'll see Navigator 1.0
//Also, Hero widget - automatic animation -> can animate elements from one screen to another
void main() {
  runApp(const MyHome());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHome()
//     );
//   }
// }

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //ctrl+space to bring up all the options
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text('Test'),
          ),
          body: IconButton(
            //icon: Image.network('https://picsum.photos/250?image=9'),
            //using Hero
            icon: Hero(
              tag: 'https://picsum.photos/250?image=9',
              child: Image.network('https://picsum.photos/250?image=9'),
            ),
            iconSize: 50,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => AboutScreen()));
            },
          ),
          // body: ElevatedButton(
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (_) => AboutScreen(),
          //         ),
          //       );
          //     },
          //     child: Text('Navigate')),
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About'),
        ),
        body: //Image.network('https://picsum.photos/250?image=9'),
            //usig Hero
            Hero(
          tag: 'https://picsum.photos/250?image=9',
          child: Image.network('https://picsum.photos/250?image=9'),
        ));
  }
}
