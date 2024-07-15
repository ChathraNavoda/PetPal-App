import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pet_repository/pet_supplies_repository.dart';

class FirebasePetRepo implements ItemRepo {
  final itemsCollection = FirebaseFirestore.instance.collection("items");

  Future<List<Item>> getPizzas() async {
    try {
      return await itemsCollection.get().then((value) => value.docs
          .map((e) => Item.fromEntity(ItemEntity.fromDocument(e.data())))
          .toList());
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
