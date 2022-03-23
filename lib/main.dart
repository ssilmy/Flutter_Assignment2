import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = 'SECOND ASSIGNMENT';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    List<String> elementsList = [
      "FIRST ELEMENT",
      "SECOND ELEMENT",
      "THIRED ELEMENT",
      "FORTH ELEMENT",
      "FIFTH ELEMENT"
    ];

    // portrait mode
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return Scaffold(
        appBar: AppBar(title: Text(title)),
        backgroundColor: Colors.red,
        drawer: Theme(
            //to change background color of the drawer
            data: Theme.of(context)
                .copyWith(canvasColor: Color.fromRGBO(255, 204, 204, 0.7)),

            //children
            child: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    child: Text(' '),
                  ),
                  ListTile(
                    title: const Text('FIRST ELEMENT'),
                  ),
                  ListTile(
                    title: const Text('SECOND ELEMENT'),
                  ),
                  ListTile(
                    title: const Text('THIRRD ELEMENT'),
                  ),
                  ListTile(
                    title: const Text('FORTH ELEMENT'),
                  ),
                  ListTile(
                    title: const Text('FIFTH ELEMENT'),
                  ),
                ],
              ),
            )),
      );
    } else {
      // LandScape mode
      return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(title: Text(title)),
        body: Container(
          color: Colors.white,
          //give the list .5 width of Scaffold width
          width: MediaQuery.of(context).size.width / 2,
          child: ListView.builder(
              itemCount: elementsList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(title: Text('${elementsList[index]}'));
              }),
        ),
      );
    }
  }
}
