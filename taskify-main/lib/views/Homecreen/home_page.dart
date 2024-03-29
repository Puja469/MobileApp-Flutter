import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../add_new_task.dart';
import 'util/main_task_grid.dart';
import 'util/subtask_tabs.dart';
import 'package:iconly/iconly.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String todayDate = DateFormat.MMMEd().format(now);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 42, 97, 238),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 78, 128, 255),
        onPressed: (() => Get.to(const AddNewTask())),
        child: const Icon(
          IconlyBold.edit,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Puja',
                        style: TextStyle(
                            color: Colors.blue.shade100, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Today is $todayDate',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromARGB(255, 78, 128, 255)),
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            //Scrollable view of Tasks
            const TaskGrid(),

            const SizedBox(
              height: 20,
            ),

            //Today's task overview
            const TaskTabs()
          ],
        ),
      ),
    );
  }
}
