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
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 250,
                  child: Image.network(
                      "https://media.licdn.com/dms/image/D5603AQHRTmpAnyVbRQ/profile-displayphoto-shrink_800_800/0/1664894972345?e=1677110400&v=beta&t=fD7cX8r7mL4PNk1NQVo8H5ZafhB7bol8f-0I0kHWlnw",
                      fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Clyne Fuentes",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ],
                  )
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      buildCallButton(),
                      buildTextButton(),
                      buildButton('Video', Icons.video_call, () {}),
                      buildButton('Email', Icons.email, () {}),
                      buildButton('Directions', Icons.directions, () {}),
                      buildButton('Pay', Icons.attach_money, () {}),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                mobilePhoneListTile("639-571-1585", "mobile", Icons.call,
                    hasTrail: true,
                    iconTrail: IconButton(
                      icon: Icon(Icons.message),
                      color: Colors.indigo.shade800,
                      onPressed: () {},
                    )
                ),
                const Divider(
                  color: Colors.grey,
                ),
                mobilePhoneListTile('clippefuentes@gmail.com', "email", Icons.mail),
                const Divider(
                  color: Colors.grey,
                ),
                mobilePhoneListTile('Regina, Canada', "address", Icons.location_on,
                  hasTrail: true,
                  iconTrail: IconButton(
                    icon: Icon(Icons.directions),
                    color: Colors.indigo.shade800,
                    onPressed: () {},
                  )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget buildCallButton() {
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
          Icons.call,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
      Text("Call")
    ],
  );
}

Widget buildTextButton() {
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
          Icons.message,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
      Text("Text")
    ],
  );
}

Widget buildButton(String text, IconData icon, void Function() onPress) {
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
          icon,
          color: Colors.indigo.shade800,
        ),
        onPressed: onPress,
      ),
      Text(text)
    ],
  );
}

Widget mobilePhoneListTile(String phoneNumber, String subtitle, IconData icon, {bool hasTrail = true, Widget? iconTrail }) {
  return ListTile(
    leading: Icon(icon),
    title: Text(phoneNumber),
    subtitle: Text(subtitle),
    trailing: hasTrail ? iconTrail : null,
  );
}
