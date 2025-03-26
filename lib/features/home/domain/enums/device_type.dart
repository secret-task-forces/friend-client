// ignore_for_file: constant_identifier_names

enum DeviceType {
  SPEC,
  BUDGET,
  UNKNOWN;

  factory DeviceType.fromString(String value) {
    return switch (value.toLowerCase()) {
      'spec' => DeviceType.SPEC,
      'budget' => DeviceType.BUDGET,
      _ => DeviceType.UNKNOWN,
    };
  }
}
