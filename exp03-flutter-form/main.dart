import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'contact'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.save), onPressed: () {})
        ],
      ),
      body: Column(
        children: const <Widget>[
          ListTile(
            leading: Icon(Icons.person),
            title: TextField(
              decoration: InputDecoration(
                hintText: "Name",
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: TextField(
              decoration: InputDecoration(
                hintText: "Phone",
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: TextField(
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
          ),
          Divider(
            height: 1.0,
          ),
          ListTile(
            leading: Icon(Icons.label),
            title: Text('BVCOE - IT'),
            subtitle: Text('None'),
          ),
          ListTile(
            leading: Icon(Icons.today),
            title: Text('Birthday'),
            subtitle: Text('February 20, 2001'),
            trailing: Icon(
              Icons.check_circle,
              color: Colors.green,
            ),
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('Contact group'),
            subtitle: Text('Friends'),
          )
        ],
      ),
    );
  }
}
