class Option {
  final String option;
  final bool device; // Will be true if the option is a device, not a directory

  Option({
    required this.option,
    required this.device,
  });
}
