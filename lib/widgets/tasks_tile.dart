import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  TasksTile({
    Key? key,
    this.isChecked = false,
    required this.checkboxCallback,
    required this.taskTitle,
    required this.onLongPressed,
  }) : super(key: key);

  final bool isChecked;
  final String taskTitle;
  final ValueChanged<bool?> checkboxCallback;
  final VoidCallback onLongPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressed,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
