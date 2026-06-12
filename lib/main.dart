import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Group List View Demo',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget buildMember(String initials, String name, Color color) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: ListTile(
        contentPadding: const EdgeInsets.all(15),
        leading: CircleAvatar(
          backgroundColor: color,
          radius: 25,
          child: Text(
            initials,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        title: Text(name, style: const TextStyle(fontSize: 20)),
        trailing: const Icon(Icons.chevron_right, size: 35, color: Colors.grey),
      ),
    );
  }

  Widget teamTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Text(
        title,
        style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Group List View Demo'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          teamTitle("Team A"),

          buildMember("KL", "Klay Lewis", Colors.pink),
          buildMember("EW", "Ehsan Woodard", Colors.purple),
          buildMember("RB", "River Bains", Colors.blueGrey),

          teamTitle("Team B"),

          buildMember("TD", "Toyah Downs", Colors.redAccent),
          buildMember("TK", "Tyla Kane", Colors.teal),

          teamTitle("Team C"),

          buildMember("MR", "Marcus Romero", Colors.orange),
          buildMember("FP", "Farrah Parkes", Colors.deepPurple),
        ],
      ),
    );
  }
}
