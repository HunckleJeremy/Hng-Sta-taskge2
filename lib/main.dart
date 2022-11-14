import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Part(),
    );
  }
}

class Part extends StatefulWidget {
  @override
  Part2 createState() => Part2();
}

class Part2 extends State<Part> {
  final control = TextEditingController();
  String input = "Field is Blank!";

  void made() {
    setState(() {
      input = control.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hng x Zuri"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Container(
            child: Image(image: AssetImage("assets/hng.png")),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Input Username", border: OutlineInputBorder()),
              controller: control,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: made,
            child: Text("submit"),
          ),
          SizedBox(
            height: 35,
            width: 80,
          ),
          Text(input),
          Center(
              child: InkWell(
            child: Padding(
              padding: const EdgeInsets.all(150),
              child: Text(
                "Visit us",
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.teal),
              ),
            ),
            onTap: () => launch("https://hng.tech/"),
          ))
        ],
      ),
    );
  }
}
