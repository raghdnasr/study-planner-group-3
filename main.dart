import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// STATIC: Main application widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Study Planner',

      // STATIC: Home screen
      home: const StudyPlannerScreen(),
    );
  }
}

// STATIC: Study Planner screen
class StudyPlannerScreen extends StatelessWidget {
  const StudyPlannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // STATIC: App bar
      appBar: AppBar(
        title: const Text('My Study Planner'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      // STATIC: Main screen content
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // STATIC: Heading
            const Text(
              'My Study Goals',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            // STATIC: First goal card
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.menu_book,
                  color: Colors.blue,
                ),
                title: const Text('Mathematics'),
                subtitle: const Text('Study time'),
                trailing: const Text('3 Hours'),
              ),
            ),

            // STATIC: Second goal card
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.computer,
                  color: Colors.green,
                ),
                title: const Text('Programming'),
                subtitle: const Text('Study time'),
                trailing: const Text('2 Hours'),
              ),
            ),

            // STATIC: Third goal card
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.science,
                  color: Colors.orange,
                ),
                title: const Text('Database'),
                subtitle: const Text('Study time'),
                trailing: const Text('4 Hours'),
              ),
            ),
          ],
        ),
      ),

      // STATIC: Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}