import 'package:flutter/material.dart';
import '../util/subtask_tile.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          TaskTile(
            taskName: 'Meeting about group project',
            endTime: DateTime(2024, 7, 23, 8, 00),
          ),
          TaskTile(
            taskName: 'Meeting with Scrum Master',
            endTime: DateTime(2024, 7, 23, 10, 00),
          ),
          TaskTile(
            taskName: 'Assignment of Mobile App',
            endTime: DateTime(2024, 2, 25, 15, 00),
          ),
          TaskTile(
            taskName: 'Assignment of Web',
            endTime: DateTime(2023, 2, 25, 15, 00),
          ),
          TaskTile(
            taskName: 'deadline of Web',
            endTime: DateTime(2024, 2, 25, 15, 00),
          ),
          //TaskOverviewCard(),
        ],
      ),
    );
  }
}
