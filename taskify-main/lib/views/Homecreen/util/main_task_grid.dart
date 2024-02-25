import 'package:flutter/material.dart';
import 'main_task_card.dart';

class TaskGrid extends StatelessWidget {
  const TaskGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: Row(
          children: [
            TaskCard(
                taskTag: "High Priority",
                taskTitle: "Daily Scrum Meeting",
                taskDescription:
                    "Daily Scrum meetings occur every working day, typically at the same time and place.",
                percentage: 50,
                dueDate: "April 20, 2024",
                startTime: "10:00 AM"),
            const SizedBox(
              width: 15,
            ),
            TaskCard(
                taskTag: "High Priority",
                taskTitle: "High Level Meeting",
                taskDescription:
                    "A day filled with high-level meetings is a whirlwind of intellectual exchange and strategic decision-making. The day starts with participants gathering in a well-appointed boardroom, ready to engage in discussions that shape the future of their organization. Eminent leaders and experts share their insights, backed by carefully prepared presentations and data-driven analyses. Focused conversations unravel, ideas clash, and consensus emerges. Each meeting is a platform to address critical challenges, make crucial decisions, and set ambitious goals. The day concludes with a sense of accomplishment, as minds converge and paths forward are charted. High-level meetings are a crucible of knowledge, collaboration, and progress.",
                percentage: 20,
                dueDate: "February 20, 2024",
                startTime: "12:00 AM")
          ],
        ),
      ),
    );
  }
}
