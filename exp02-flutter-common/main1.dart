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
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final bool _isAlwaysShown = true;

  final bool _showTrackOnHover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scrollbar Demo'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Scrollbar(
              isAlwaysShown: _isAlwaysShown,
              showTrackOnHover: _showTrackOnHover,
              hoverThickness: 30.0,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) => MyItem(index),
              ),
            ),
          ),
          const Divider(height: 1),
        ],
      ),
    );
  }
}

class MyItem extends StatelessWidget {
  final int index;

  const MyItem(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Colors.primaries[index % Colors.primaries.length];
    final hexRgb = color.shade500.toString().substring(10, 16).toUpperCase();
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      leading: AspectRatio(
          aspectRatio: 1,
          child: Container(color: color)),
      title: Text('Material Color #${index + 1}'),
      subtitle: Text('#$hexRgb'),
    );
  }
}
