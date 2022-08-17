import 'package:get/get.dart';
import 'package:getx_demo/app/data/todo.dart';
import 'package:getx_demo/app/services/todo.service.dart';
import 'package:getx_demo/app/view/create.todo/create.todo.controller.dart';
import 'package:getx_demo/app/view/home/home.controller.dart';

Future<void> configDependencies() async {
  await _initServices(); // ! toujours enregistrer les services avant les controlleurs

  _initControllers();
}

Future<void> _initServices() async {
  // ! enregistrer les services dans l'ordre de dépendence
  await Get.putAsync(() => TodoService().init());
}

void _initControllers() {
  Get.put(
      HomeController()); // enregistre la classe dans le conteneur des dépendences
  Get.put(CreateTodoController());
}
// jare des dépendences
