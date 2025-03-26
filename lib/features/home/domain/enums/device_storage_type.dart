// ignore_for_file: constant_identifier_names

enum DeviceStorageType {
  S32GB,
  S64GB,
  S128GB,
  S256GB,
  S512GB,
  S1TB,
  ;

  factory DeviceStorageType.fromString(String value) {
    return switch (value.toLowerCase()) {
      's32gb' => DeviceStorageType.S32GB,
      's64gb' => DeviceStorageType.S64GB,
      's128gb' => DeviceStorageType.S128GB,
      's256gb' => DeviceStorageType.S256GB,
      's512gb' => DeviceStorageType.S512GB,
      's1tb' => DeviceStorageType.S1TB,
      _ => throw Exception('Invalid device storage type'),
    };
  }
}
