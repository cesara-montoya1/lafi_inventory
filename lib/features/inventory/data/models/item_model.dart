import "package:lafi_inventory/features/inventory/domain/entities/item.dart";

class ItemModel extends InventoryItem {
  ItemModel({
    required super.id,
    required super.name,
    super.description,
    required super.locationId,
    super.imageUrl,
    required super.quantity,
    super.isConsumable,
  });

  // Convert Firestore JSON to ItemModel
  factory ItemModel.fromJson(Map<String, dynamic> json, String documentId) {
    return ItemModel(
      id: documentId,
      name: json['name'] as String,
      description: json['description'] as String? ?? "",
      locationId: json['locationId'] as String,
      imageUrl: json['imageUrl'] as String? ?? "",
      quantity: json['quantity'] as int? ?? 0,
      isConsumable: json['isConsumable'] as bool? ?? false,
    );
  }

  // Convert ItemModel to Firestore JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'locationId': locationId,
      'imageUrl': imageUrl,
      'quantity': quantity,
      'isConsumable': isConsumable,
    };
  }
}
