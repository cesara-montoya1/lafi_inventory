import "package:flutter/material.dart";
import "package:lafi_inventory/features/inventory/data/repositories/mock_inventory_repository.dart";
import "package:lafi_inventory/features/inventory/domain/entities/item.dart";
import "add_item_page.dart";

class InventoryScreen extends StatelessWidget {
  InventoryScreen({super.key});

  final List<InventoryItem> items = MockInventoryRepository().getMockItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("LAFI Inventory")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            leading: Icon(item.isConsumable ? Icons.biotech : Icons.devices),
            title: Text(item.name),
            subtitle: Text(item.description),
            trailing: Text("Qty: ${item.quantity}"),
          );
        },
      ),
      // Floating action button to add new items
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const AddItemPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
