import 'package:get/get.dart';
import 'package:getx_demo/app/data/todo.dart';
import 'package:getx_demo/app/services/todo.service.dart';

class CreateTodoController extends GetxController {
  final todoService = Get.find<TodoService>();

  Future<void> handleCreateButton(Todo todo) async {
    await todoService.createNewTodo(todo: todo);
  }
}
