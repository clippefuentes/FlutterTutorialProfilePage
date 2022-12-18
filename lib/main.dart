import 'package:flutter/material.dart';

void main() {
  runApp(ContactProfilePage());
}

class ContactProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.star_border),
                color: Colors.black,
                onPressed: () {
                  print("Contact is starred");
                },
            )
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
