import "package:flutter/material.dart";
import "package:lafi_inventory/features/inventory/presentation/pages/inventory_screen.dart";

void main() => runApp(const LabInventoryApp());

class LabInventoryApp extends StatelessWidget {
  const LabInventoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LAFI Inventory',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.amber),
      home: InventoryScreen(),
    );
  }
}
