import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pet Grooming'),
        ),
        body: PetList(),
      ),
    );
  }
}

class PetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Elodie'),
          subtitle: Text('Anggora'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PetDetail()),
            );
          },
        ),
        ListTile(
          title: Text('Morrie'),
          subtitle: Text('Netherland Dwarf'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PetDetail()),
            );
          },
        ),
      ],
    );
  }
}

class PetDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Details'),
      ),
      body: Center(
        child: Text('This is where the pet details will be displayed.'),
      ),
    );
  }
}
