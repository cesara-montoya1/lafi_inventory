class LocationModel {
  final String id;
  final String name;
  final String? parentId; // Nullable for top-level locations

  LocationModel({required this.id, required this.name, this.parentId});
}
