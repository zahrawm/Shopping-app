import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:grocery_app/controller/home_controller.dart';
import 'package:grocery_app/pages/add_product_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Footwear Admin"),
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                title: const Text("Title"),
                subtitle: const Text("Price: 100"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete),
                ),
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(AddProductPage());
          },
          child: const Icon(Icons.add),
        ),
      );
    });
  }
}
