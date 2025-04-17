import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'pages/task_page.dart';
import 'cubit/task_cubit.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => TaskCubit(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do Bloc Cubit',
      home: const TaskPage(),
    );
  }
}
