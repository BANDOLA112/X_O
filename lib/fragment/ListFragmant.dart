import 'package:flutter/material.dart';
import 'package:to_do_app/fragment/TaskContainer.dart';
import 'calendar.dart';

class ListFragment extends StatefulWidget {
  final List<Taskcontainer> tasks; // Use proper naming conventions for variables

  ListFragment({required this.tasks});

  @override
  State<ListFragment> createState() => _ListFragmentState();
}

class _ListFragmentState extends State<ListFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          Calendar(),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: widget.tasks.length, // Use the actual task count
                itemBuilder: (context, index) {
                  return widget.tasks[index]; // Render each task by its index
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
