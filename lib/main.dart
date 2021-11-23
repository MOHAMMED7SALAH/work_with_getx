import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_getx/getbuilder_controller.dart';
import 'package:test_getx/getx_controller.dart';
import 'package:test_getx/obx_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyGetX(),
    );
  }
}

class MyGetX extends StatelessWidget {
  MyGetX({Key? key}) : super(key: key);

  // in Obx we put dependency injection
  ObxController controller = Get.put(ObxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: GetBuilder<GetBuilderController>(
              init: GetBuilderController(),
              builder: (controller) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '${controller.counter}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          controller.increasment();
                        },
                        tooltip: 'Increment',
                        child: const Icon(Icons.add),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          controller.decreasment();
                        },
                        tooltip: 'Decreasment',
                        child: const Icon(Icons.remove),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: GetX<GetXController>(
              init: GetXController(),
              builder: (controller) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '${controller.counter.value}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          controller.increasment();
                        },
                        tooltip: 'Increment',
                        child: const Icon(Icons.add),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          controller.decreasment();
                        },
                        tooltip: 'Decreasment',
                        child: const Icon(Icons.remove),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Center(
              child: Obx(
            () => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${controller.counter.value}',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        controller.increasment();
                      },
                      tooltip: 'Increment',
                      child: const Icon(Icons.add),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        controller.decreasment();
                      },
                      tooltip: 'Decreasment',
                      child: const Icon(Icons.remove),
                    ),
                  ],
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
