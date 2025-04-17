// lib/cubit/task_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/task.dart';

class TaskCubit extends Cubit<List<Task>> {
  TaskCubit() : super([]);

  void addTask(String title) {
    final newTask = Task(title: title);
    emit([...state, newTask]);
  }

  void removeTask(Task task) {
    emit(state.where((t) => t != task).toList());
  }
}
