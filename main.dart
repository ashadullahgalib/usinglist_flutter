import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Using List in Flutter',
      home: MyList(),
    );
  }
}

// Define a custom Form widget.
class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyListState extends State<MyList> {
// Create a text controller and use it to retrieve the current value
// of the TextField.
  final myController = TextEditingController();
  final List<String> names = <String>[
    'Apple',
    'Orange',
    'Rambutan',
    'BlackBerry',
    'Mango',
  ];


  @override
  void dispose() {
// Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Using List in Flutter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextField(
          controller: myController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter any number between 1-5",
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {

          var x = int.parse(myController.text)-1;
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('${names[x]}'),
                );
              }
              );

        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}