import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MainPage(),
    ),
  );
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Flluter Grid View Example!')),
        body: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 8.0,
            children: List.generate(choices.length, (index) {
              return SelectCard(choice: choices[index]);
            })),
      ),
    );
  }
}

class Choice {
  final String title;
  final IconData icon;
  const Choice({required this.title, required this.icon});
}

List<Choice> choices = [
  const Choice(title: 'Home', icon: Icons.home),
  const Choice(title: 'Contact', icon: Icons.contacts),
  const Choice(title: 'Map', icon: Icons.map),
  const Choice(title: 'Phone', icon: Icons.phone),
  const Choice(title: 'Camera', icon: Icons.camera_alt),
  const Choice(title: 'Settings', icon: Icons.settings),
  const Choice(title: 'Album', icon: Icons.photo_album),
  const Choice(title: 'Wifi', icon: Icons.wifi),
];

class SelectCard extends StatelessWidget {
  SelectCard({Key? key, required this.choice}) : super(key: key);
  late Choice choice;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Icon(
              choice.icon,
              size: 45.0,
            ),
          ),
          Text(choice.title)
        ],
      ),
    );
  }
}
