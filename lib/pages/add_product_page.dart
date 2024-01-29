import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import 'package:grocery_app/controller/home_controller.dart';
import 'package:grocery_app/widgets/drop_down_btn.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Add Products "),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(10),
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Add New Products",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.indigoAccent,
                      fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: const Text("Product Name"),
                    hintText: "Enter your product name",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: const Text("Product Description"),
                    hintText: " Enter your  Product Description",
                  ),
                  maxLines: 4,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: const Text("Image Url"),
                    hintText: "Enter your Image Url",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: const Text("Product Price"),
                    hintText: "Enter your product price",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Flexible(
                        child: DropDownBtn(
                      items: const ["Brand1", "Brand2", "Brand3"],
                      selectedItemText: 'Brand',
                      onSelected: (selectedValue) {},
                    )),
                    Flexible(
                        child: DropDownBtn(
                      items: const ["Brand1", "Brand2", "Brand3"],
                      selectedItemText: 'Brand',
                      onSelected: (selectedValue) {},
                    )),
                  ],
                ),
                const Center(
                    child: Text(
                  "Offer Products",
                  style: TextStyle(color: Colors.black),
                )),
                const SizedBox(
                  height: 10,
                ),
                const Text("Offer Products?"),
                DropDownBtn(
                  items: const ["true", "false"],
                  selectedItemText: 'Offers ?',
                  onSelected: (selecteValue) {},
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigoAccent,
                        foregroundColor: Colors.white),
                    onPressed: () {},
                    child: const Text("Add products"))
              ],
            ),
          ),
        ),
      );
    });
  }
}
