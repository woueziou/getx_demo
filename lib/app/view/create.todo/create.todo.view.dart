import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'create.todo.controller.dart';

class CreateTodoPage extends GetView<CreateTodoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('CreateTodoPage')),
        body: SafeArea(child: Text('CreateTodoController')));
  }
}
