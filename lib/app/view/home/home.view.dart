import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    controller.counter.value;
    return Scaffold(
      appBar: AppBar(title: Text(controller.pageTitle)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(
              () => Text(
                controller.counter.value.toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Obx(
              () => Text(
                controller.counterInstring.value,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.incrementCounter(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
