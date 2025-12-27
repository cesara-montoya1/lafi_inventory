import "package:flutter/material.dart";
import "package:lafi_inventory/features/inventory/data/models/location_model.dart";
import "package:lafi_inventory/features/inventory/data/repositories/mock_location_repository.dart";

class AddItemPage extends StatefulWidget {
  const AddItemPage({super.key});

  @override
  State<AddItemPage> createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddItemPage> {
  final MockLocationRepository _locationRepo = MockLocationRepository();
  late final List<LocationModel> _rootLocations;

  String? _selectedLocationId;
  String? _selectedSublocationId;

  @override
  void initState() {
    super.initState();
    _rootLocations = _locationRepo.getRootLocations();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("New Item")),
      body: Form(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: "Item Name"),
            ),

            // Select root location
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: "Select Location"),
              value: _selectedLocationId,
              items: _rootLocations
                  .map(
                    (loc) => DropdownMenuItem<String>(
                      value: loc.id,
                      child: Text(loc.name),
                    ),
                  )
                  .toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedLocationId = newValue;
                  _selectedSublocationId = null; // Reset sublocation selection
                });
              },
            ),

            // Select sublocation if a root location is selected
            if (_selectedLocationId != null)
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: "Select Sublocation",
                ),
                value: _selectedSublocationId,
                items: _locationRepo
                    .getChildLocations(_selectedLocationId!)
                    .map(
                      (loc) => DropdownMenuItem<String>(
                        value: loc.id,
                        child: Text(loc.name),
                      ),
                    )
                    .toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedSublocationId = newValue;
                  });
                },
              ),

            TextFormField(
              decoration: const InputDecoration(labelText: "Quantity"),
              keyboardType: TextInputType.number,
            ),

            const SizedBox(height: 32),

            ElevatedButton(onPressed: () {}, child: const Text("Save")),
          ],
        ),
      ),
    );
  }
}
