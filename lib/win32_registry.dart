/// The registry is a system-defined Windows database in which applications and
/// system components store and retrieve configuration data. The data stored in
/// the registry varies according to the version of Microsoft Windows.
/// Applications use the registry API to retrieve, modify, or delete registry
/// data.
///
/// This library provides support for querying and accessing the registry from
/// Dart, with idiomatic classes and collections of objects that facilitate
/// reading and writing values.
library win32_registry;

export 'src/access_rights.dart';
export 'src/registry.dart';
export 'src/registry_hive.dart';
export 'src/registry_key.dart';
export 'src/registry_key_info.dart';
export 'src/registry_value.dart';
export 'src/registry_value_type.dart';
