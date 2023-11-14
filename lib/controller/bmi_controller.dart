import 'package:flutter_riverpod/flutter_riverpod.dart';

final BmiWeight = StateProvider<int>((ref) {
  return 50;
});
final BmiAge = StateProvider<int>((ref) {
  return 20;
});

final BmiHeight = StateProvider<double>((ref) {
  return 100;
});

final BmiTotal = StateProvider<double>((ref) {
  return 0;
});
