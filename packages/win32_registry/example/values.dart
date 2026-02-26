import 'package:win32_registry/win32_registry.dart';

void main() {
  const subkeyPath = r'Software\Win32Registry';
  final key = CURRENT_USER.create(subkeyPath)
    ..setValue('DWORD', const .dword(0xFACEFEED))
    ..setValue('QWORD', const .qword(0x0123456789ABCDEF))
    ..setValue(
      'String',
      const .string(
        'The human race has one really effective weapon, and that is laughter.',
      ),
    )
    ..setValue('MultiString', const .multiString(['One', 'Two', 'Three']))
    ..setValue(
      'UnexpandedString',
      const .unexpandedString(r'%SystemRoot%\System32'),
    )
    ..setValue('Binary', .binary(.fromList([0xFF, 0x33, 0x77, 0xAA])));

  final dword = key.getInt('DWORD');
  final qword = key.getInt('QWORD');
  final string = key.getString('String');
  final multiString = key.getMultiString('MultiString');
  final unexpandedString = key.getUnexpandedString('UnexpandedString');
  final expandedString = key.getUnexpandedString(
    'UnexpandedString',
    expandPaths: true,
  );
  final binary = key.getBinary('Binary');

  print('DWORD: $dword');
  print('QWORD: $qword');
  print('String: $string');
  print('MultiString: $multiString');
  print('UnexpandedString: $unexpandedString');
  print('ExpandedString: $expandedString');
  print('Binary: $binary');

  key.close();
  CURRENT_USER.removeSubkey(subkeyPath);
}
