import 'dart:typed_data';

/// Specifies the field by which to sort the tasks.
enum SortBy {
  /// Sort by task name.
  name,

  /// Sort by task PID (Process ID).
  pid,

  /// Sort by task description.
  description,
}

/// Specifies the order in which to sort the tasks.
enum SortOrder {
  /// Sort in ascending order.
  ascending,

  /// Sort in descending order.
  descending,
}

/// A Windows task with its icon, name, PID, and description.
class Task {
  const Task({
    required this.iconAsBytes,
    required this.name,
    required this.pid,
    required this.description,
  });

  /// The icon of the task.
  final Uint8List iconAsBytes;

  /// The name of the task.
  final String name;

  /// The PID (Process ID) of the task.
  final int pid;

  /// The description of the task.
  final String description;
}
