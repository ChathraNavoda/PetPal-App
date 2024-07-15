class MacrosEntity {
  int weight;
  int length;
  int width;

  MacrosEntity({
    required this.weight,
    required this.length,
    required this.width,
  });

  Map<String, Object?> toDocument() {
    return {
      'weight': weight,
      'length': length,
      'width': width,
    };
  }

  static MacrosEntity fromDocument(Map<String, dynamic> doc) {
    return MacrosEntity(
      weight: doc['weight'],
      length: doc['length'],
      width: doc['width'],
    );
  }
}
