import 'package:flutter/material.dart';
import 'package:todoye_flutter/modal/task_data.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) =>TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
       home:TaskScreen(),
      ),
    );
  }
}

