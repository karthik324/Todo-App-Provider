import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_provider/models/tasks_data.dart';
import 'package:todoey_provider/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TasksTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (bool? checkBoxState) {
                taskData.updateTask(task);
              },
              onLongPressed: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
