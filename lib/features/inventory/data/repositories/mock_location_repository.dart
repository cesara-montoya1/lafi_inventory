import "package:lafi_inventory/features/inventory/data/models/location_model.dart";

class MockLocationRepository {
  static final List<LocationModel> _mockLocations = [
    LocationModel(
      id: "lab_18-305",
      name: "Laboratory of Integrated Applied Photonics (LAFI, 18-305)",
    ),
    LocationModel(
      id: "lab_18-305_shelf-a",
      name: "Shelf A",
      parentId: "lab_18-305",
    ),
    LocationModel(
      id: "lab_18-305_shelf-b",
      name: "Shelf B",
      parentId: "lab_18-305",
    ),
    LocationModel(
      id: "lab_18-305_shelf-c",
      name: "Shelf C",
      parentId: "lab_18-305",
    ),
  ];

  // Get root locations
  List<LocationModel> getRootLocations() {
    return _mockLocations.where((loc) => loc.parentId == null).toList();
  }

  // Get children of a location
  List<LocationModel> getChildLocations(String parentId) {
    return _mockLocations
        .where((LocationModel loc) => loc.parentId == parentId)
        .toList();
  }
}
