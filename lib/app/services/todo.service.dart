import 'package:get/get.dart';
import 'package:getx_demo/app/data/todo.dart';

class TodoService extends GetxService {
  Future<TodoService> init() async {
    // renvoie la position géographique de l'utilisateur
    return this;
  }

  @override
  void onClose() {
    // renvoyer l'heure à laquelle le service a été fermé
    super.onClose();
  }

  Future<void> createNewTodo({required Todo todo}) async {
    // logic de création
    lbeforeCreate(todo);
  }

  Future<void> modifyTodo({required Todo tod}) async {
    // logic de modification
  }
  Future<void> deleteTodo({required Todo todo}) async {
    logDeletedTodo(todo);
    // logic de modification
  }

  Future<void> setTodoAsdone({required int todoId}) async {
    // logic de modification
  }
  Future<List<Todo>> getTodoList() async {
    // logic de récupération de liste
    return <Todo>[];
  }

  void logDeletedTodo(Todo todo) {}

  void lbeforeCreate(Todo todo) {
    print(todo.content);
    // logique de traitement avant la création;
  }
}
