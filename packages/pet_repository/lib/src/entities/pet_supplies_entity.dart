import 'package:pet_repository/src/entities/macros_entity.dart';
import 'package:pet_repository/src/models/macros.dart';

class ItemEntity {
  String itemId;
  String picture;
  String name;
  String description;
  int price;
  int discount;
  Macros macros;

  ItemEntity({
    required this.itemId,
    required this.picture,
    required this.name,
    required this.description,
    required this.price,
    required this.discount,
    required this.macros,
  });

  Map<String, Object?> toDocument() {
    return {
      'itemId': itemId,
      'picture': picture,
      'name': name,
      'description': description,
      'price': price,
      'discount': discount,
      'macros': macros.toEntity().toDocument(),
    };
  }

  static ItemEntity fromDocument(Map<String, dynamic> doc) {
    return ItemEntity(
        itemId: doc['itemId'],
        picture: doc['picture'],
        name: doc['name'],
        description: doc['description'],
        price: doc['price'],
        discount: doc['discount'],
        macros: Macros.fromEntity(MacrosEntity.fromDocument(doc['macros'])));
  }
}
