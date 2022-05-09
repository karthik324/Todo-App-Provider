import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_provider/models/tasks_data.dart';

import 'screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => TaskData()),
      child: MaterialApp(
        home: TasksScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
