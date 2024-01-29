import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference productCollection;

  @override
  void onInit() {
    productCollection = firestore.collection("products");
    super.onInit();
  }

  addProducts() {
    DocumentReference doc = productCollection.doc();
  }
}
