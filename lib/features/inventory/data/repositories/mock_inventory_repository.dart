import "package:lafi_inventory/features/inventory/data/models/item_model.dart";

class MockInventoryRepository {
  static final List<ItemModel> _mockItems = [
    ItemModel(
      id: "1",
      name: "Oscilloscope",
      description: "High-precision oscilloscope for signal analysis.",
      locationId: "lab_18-305_shelf-a",
      imageUrl: "",
      quantity: 1,
      isConsumable: false,
    ),
    ItemModel(
      id: "2",
      name: "Fiber Patchcord SC/APC-SC/APC",
      description: "Durable fiber patchcord for network connections.",
      locationId: "lab_18-305_shelf-b",
      imageUrl: "",
      quantity: 12,
      isConsumable: false,
    ),
    ItemModel(
      id: "3",
      name: "Thermoshrink Tubing",
      description: "Versatile thermoshrink tubing for insulation.",
      locationId: "lab_18-305_shelf-c",
      imageUrl: "",
      quantity: 32,
      isConsumable: true,
    ),
    ItemModel(
      id: "4",
      name: "Fiber cleaning pen SC/FC",
      description: "Effective fiber cleaning pen for maintenance.",
      locationId: "lab_18-305_shelf-b",
      imageUrl: "",
      quantity: 2,
      isConsumable: true,
    ),
  ];

  List<ItemModel> getMockItems() => _mockItems;

  void addItem(ItemModel item) {
    _mockItems.add(item);
  }
}
