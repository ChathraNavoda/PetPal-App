import 'package:pet_repository/src/entities/pet_supplies_entity.dart';
import 'package:pet_repository/src/models/macros.dart';

class Item {
  String itemId;
  String picture;

  String name;
  String description;
  int price;
  int discount;
  Macros macros;

  Item({
    required this.itemId,
    required this.picture,
    required this.name,
    required this.description,
    required this.price,
    required this.discount,
    required this.macros,
  });

  ItemEntity toEntity() {
    return ItemEntity(
      itemId: itemId,
      picture: picture,
      name: name,
      description: description,
      price: price,
      discount: discount,
      macros: macros,
    );
  }

  static Item fromEntity(ItemEntity entity) {
    return Item(
      itemId: entity.itemId,
      picture: entity.picture,
      name: entity.name,
      description: entity.description,
      price: entity.price,
      discount: entity.discount,
      macros: entity.macros,
    );
  }
}
