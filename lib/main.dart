import 'package:flutter/material.dart';
import 'package:movies_app/todo_model.dart';
import 'movies_overview screen.dart';
import 'package:provider/provider.dart';
import 'movies.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: ChangeNotifierProvider(
        create: (context) => TodoModel(),
        child: MoviesOverviewScreen(),
      ),
    );
  }
}

