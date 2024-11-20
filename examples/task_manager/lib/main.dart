import 'package:flutter/material.dart';

import 'models.dart';
import 'task_manager.dart';

void main() {
  runApp(const TaskManagerApp());
}

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Task Manager',
    theme: ThemeData(brightness: Brightness.dark),
    home: const TaskManagerHomeScreen(),
  );
}

class TaskManagerHomeScreen extends StatefulWidget {
  const TaskManagerHomeScreen({super.key});

  @override
  TaskManagerHomeScreenState createState() => TaskManagerHomeScreenState();
}

class TaskManagerHomeScreenState extends State<TaskManagerHomeScreen> {
  var _tasks = <Task>[];
  var _filteredTasks = <Task>[];
  int? _selectedTask;
  SortBy _sortBy = SortBy.name;
  SortOrder _sortOrder = SortOrder.ascending;
  TextEditingController? _searchController;
  FocusNode? _searchFocusNode;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _searchFocusNode = FocusNode();
    loadTasks();
  }

  @override
  void dispose() {
    _searchController?.dispose();
    _searchFocusNode?.dispose();
    super.dispose();
  }

  void loadTasks() {
    setState(() {
      _tasks = TaskManager.tasks ?? [];
      _filteredTasks = List.from(_tasks);
      sortTasks();
    });
  }

  Future<void> confirmEndTask(int pid, String taskName) async {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Do you want to end $taskName?'),
        content: const Text(
          'If an open program is associated with this process, it will close '
          'and you will lose any unsaved data. If you end a system process, '
          'it might result in system instability. Are you sure you want to '
          'continue?',
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('End task'),
            onPressed: () {
              Navigator.of(context).pop();
              if (TaskManager.terminate(pid)) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Task "$taskName" ended successfully'),
                  ),
                );
                loadTasks();
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Failed to end task "$taskName"')),
                );
              }
            },
          ),
          TextButton(
            child: const Text('Cancel'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  void searchTasks(String query) {
    final filtered = _tasks
        .where(
          (task) =>
              task.name.toLowerCase().contains(query.toLowerCase()) ||
              task.description.toLowerCase().contains(query.toLowerCase()) ||
              task.pid.toString().contains(query),
        )
        .toList();

    setState(() {
      _filteredTasks = filtered;
      sortTasks();
    });
  }

  void sortTasks() {
    setState(() {
      _filteredTasks.sort((a, b) {
        final cmp = switch (_sortBy) {
          SortBy.name => a.name.compareTo(b.name),
          SortBy.pid => a.pid.compareTo(b.pid),
          SortBy.description => a.description.compareTo(b.description),
        };
        return _sortOrder == SortOrder.ascending ? cmp : -cmp;
      });
    });
  }

  Future<void> runTask(String path) async {
    final result = TaskManager.run(path);
    if (result) {
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Task "$path" started successfully')),
      );
    } else {
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: Text('Failed to run task "$path"'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Ok'),
            ),
          ],
        ),
      );
    }
  }

  Future<void> showRunTaskDialog() async {
    final taskNameController = TextEditingController();
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Run new task'),
        content: TextField(
          autofocus: true,
          onSubmitted: (_) async {
            final path = taskNameController.text;
            if (path.isNotEmpty) await runTask(path);
          },
          controller: taskNameController,
          decoration: const InputDecoration(hintText: 'Enter task name'),
        ),
        actions: [
          TextButton(
            onPressed: () async {
              final path = taskNameController.text;
              if (path.isNotEmpty) await runTask(path);
            },
            child: const Text('Run'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Task Manager'),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Tooltip(
            message: 'Type a name or PID to search',
            child: SizedBox(
              height: 40,
              width: 300,
              child: TextField(
                controller: _searchController,
                focusNode: _searchFocusNode,
                decoration: InputDecoration(
                  labelText: 'Type a name or PID to search',
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.search),
                  suffix: _searchController!.text.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            setState(() {
                              _searchController!.clear();
                              _searchFocusNode!.unfocus();
                              _tasks = TaskManager.tasks ?? [];
                              _filteredTasks = List.from(_tasks);
                              sortTasks();
                            });
                          },
                        )
                      : null,
                ),
                onChanged: searchTasks,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                _tasks = TaskManager.tasks ?? [];
                if (_searchController!.text.isNotEmpty) {
                  searchTasks(_searchController!.text);
                } else {
                  _filteredTasks = List.from(_tasks);
                  sortTasks();
                }
              });
            },
            tooltip: 'Refresh the list of tasks',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: IconButton(
            onPressed: showRunTaskDialog,
            icon: const Icon(Icons.add),
            tooltip: 'Run a new task',
          ),
        ),
      ],
    ),
    body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: _filteredTasks.isEmpty
              ? const Center(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('No tasks found'),
                  ),
                )
              : DataTable(
                  showCheckboxColumn: false,
                  columns: [
                    DataColumn(
                      label: const Text('Name'),
                      onSort: (columnIndex, ascending) {
                        setState(() {
                          _sortBy = SortBy.name;
                          _sortOrder = ascending
                              ? SortOrder.ascending
                              : SortOrder.descending;
                          sortTasks();
                        });
                      },
                    ),
                    DataColumn(
                      label: const Text('PID'),
                      numeric: true,
                      onSort: (columnIndex, ascending) {
                        setState(() {
                          _sortBy = SortBy.pid;
                          _sortOrder = ascending
                              ? SortOrder.ascending
                              : SortOrder.descending;
                          sortTasks();
                        });
                      },
                      tooltip: 'Process ID',
                    ),
                    DataColumn(
                      label: const Text('Description'),
                      onSort: (columnIndex, ascending) {
                        setState(() {
                          _sortBy = SortBy.description;
                          _sortOrder = ascending
                              ? SortOrder.ascending
                              : SortOrder.descending;
                          sortTasks();
                        });
                      },
                    ),
                    const DataColumn(label: Text('Actions')),
                  ],
                  rows: _filteredTasks
                      .map(
                        (task) => DataRow(
                          onSelectChanged: (selected) {
                            setState(() {
                              _selectedTask = (selected ?? false)
                                  ? task.pid
                                  : null;
                            });
                          },
                          selected: _selectedTask == task.pid,
                          cells: [
                            DataCell(
                              Row(
                                children: [
                                  if (task.iconAsBytes.isNotEmpty)
                                    Image.memory(
                                      task.iconAsBytes,
                                      width: 24,
                                      height: 24,
                                    )
                                  else
                                    const Icon(Icons.apps),
                                  const SizedBox(width: 8),
                                  Text(task.name),
                                ],
                              ),
                            ),
                            DataCell(Text(task.pid.toString())),
                            DataCell(Text(task.description)),
                            DataCell(
                              IconButton(
                                icon: const Icon(
                                  Icons.cancel_outlined,
                                  color: Colors.red,
                                ),
                                onPressed: () async =>
                                    confirmEndTask(task.pid, task.name),
                                tooltip: 'End the task',
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                  sortAscending: _sortOrder == SortOrder.ascending,
                  sortColumnIndex: switch (_sortBy) {
                    SortBy.name => 0,
                    SortBy.pid => 1,
                    SortBy.description => 2,
                  },
                ),
        ),
      ],
    ),
  );
}
