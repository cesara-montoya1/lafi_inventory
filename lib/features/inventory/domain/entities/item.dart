class InventoryItem {
  final String id;
  final String name;
  final String description;
  final String locationId;
  final String? imageUrl;
  final int quantity;
  final bool isConsumable;

  InventoryItem({
    required this.id,
    required this.name,
    this.description = "",
    required this.locationId,
    this.imageUrl,
    this.quantity = 0,
    this.isConsumable = false,
  });
}
