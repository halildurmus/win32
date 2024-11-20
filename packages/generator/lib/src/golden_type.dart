import 'package:meta/meta.dart';

@internal
enum GoldenType {
  callback('callback'),
  constant('constant'),
  dynamicLibrary('dynamic_library'),
  dynamicLibraryTest('dynamic_library_test'),
  enum_('enum'),
  function('function'),
  interface('interface'),
  method('method'),
  property('property'),
  struct('struct');

  const GoldenType(this.directoryName);

  final String directoryName;

  static GoldenType fromDirectoryName(String directoryName) =>
      GoldenType.values.firstWhere(
        (type) => type.directoryName == directoryName,
        orElse: () => throw ArgumentError.value(
          directoryName,
          'directoryName',
          'Invalid directory name. Supported values: '
              '${GoldenType.values.map((e) => e.directoryName).join(', ')}',
        ),
      );

  @override
  String toString() => directoryName;
}
