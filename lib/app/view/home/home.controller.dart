import 'package:get/get.dart';
import 'package:getx_demo/app/data/todo.dart';
import 'package:getx_demo/app/services/todo.service.dart';

class HomeController extends GetxController {
  final todoService = Get.find<TodoService>();
  final pageTitle = "Home";
  final userFullName = "Taas Ekpaye";
  final counter = 0.obs;
  final counterInstring = "0".obs;
  final todo = Todo(id: 0, content: "N", isDone: false).obs;
  @override
  void onInit() {
    print("Hello user");
    super.onInit();
  }

  void incrementCounter() {
    counter.value++;
  }

  void alterTodo(Todo newTodo) {
    todo.value = newTodo;
  }

  Future<void> handleNewTodo(Todo newTodo) async {
    await todoService.createNewTodo(todo: newTodo);
  }
}
