class Feature {
  final String feature;
  final String
      type; // 'string' | 'number' | 'list' | 'list<number>' | 'list<string>'
  final String value;

  Feature({
    required this.feature,
    required this.type,
    required this.value,
  });
}
