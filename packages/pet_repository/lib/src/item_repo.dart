import 'models/models.dart';

abstract class ItemRepo {
  Future<List<Item>> getItems();
}
