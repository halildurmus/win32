import 'package:winmd/winmd.dart';

void main() {
  final packages = LocalStorage.packages;
  if (packages.isEmpty) {
    print('No packages found in local storage.');
    return;
  }

  print('Found ${packages.length} package(s) in local storage:');
  for (final package in LocalStorage.packages) {
    print(' - $package');
  }
}
