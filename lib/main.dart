import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ContactApp(),
  ));
}

class ContactApp extends StatefulWidget {
  const ContactApp({Key? key}) : super(key: key);

  @override
  State<ContactApp> createState() => _ContactAppState();
}

class _ContactAppState extends State<ContactApp> {
  TextEditingController txtIsmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: txtIsmController,
              decoration: InputDecoration(
                  label: Text("Ism yoz..."), border: OutlineInputBorder()),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {},
            child: Text("Saqlash"),
            color: Colors.blue,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context,index){
              return Container(
                height: 50,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue
                ),
                child: Center(child: Text("Alisher")),
              );
            }),
          )
        ],
      ),
    );
  }
}
