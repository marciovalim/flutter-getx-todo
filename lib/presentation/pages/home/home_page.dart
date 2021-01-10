import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_with_getx/presentation/pages/done_tasks/done_tasks_page.dart';
import 'package:todo_with_getx/presentation/pages/home/controllers/home_controller.dart';
import 'package:todo_with_getx/presentation/widgets/controllers/search_field_controller.dart';
import 'package:todo_with_getx/presentation/widgets/search_field.dart';
import 'package:todo_with_getx/presentation/widgets/task_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  final _searchFieldController = SearchFieldController();
  final _controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SearchField(controller: _searchFieldController),
        actions: [
          IconButton(
            icon: Icon(Icons.done),
            onPressed: () => Get.to(DoneTasksPage()),
          )
        ],
      ),
      body: Obx(() {
        final filteredTasks =
            _controller.filterTasks(_searchFieldController.searchText);
        return ListView.builder(
          itemCount: filteredTasks.length,
          itemBuilder: (context, index) {
            final task = filteredTasks[index];
            return TaskWidget(task);
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: _controller.openAddTaskDialog,
        child: Icon(Icons.add),
      ),
    );
  }
}
