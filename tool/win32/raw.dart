import 'shared.dart';

void main() {
  loadCsv('tool/win32/win32api.csv');
  for (final func in prototypes.keys) {
    print('Loading $func');
    loadFunction(prototypes[func]!.prototype[0]);
  }
}
