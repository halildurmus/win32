// ignore_for_file: constant_identifier_names

/// Represents a fully-qualified type name, combining both the namespace and
/// the name of the type.
///
/// This is useful for referencing types in Win32 or .NET metadata where types
/// are typically represented by a namespace-qualified name.
///
/// Example:
/// ```dart
/// final typeName = TypeName.parse('Windows.Win32.Foundation.HRESULT');
/// print(typeName.namespace); // 'Windows.Win32.Foundation'
/// print(typeName.name);      // 'HRESULT'
/// ```
extension type const TypeName((String namespace, String name) _) {
  /// Parses a fully-qualified type name into a [TypeName].
  ///
  /// Example:
  /// ```dart
  /// final typeName = TypeName.parse('System.Guid');
  /// print(typeName.namespace); // 'System'
  /// print(typeName.name);      // 'Guid'
  /// ```
  factory TypeName.parse(String fullName) {
    final index = fullName.lastIndexOf('.');
    if (index == -1) {
      throw ArgumentError.value(
        fullName,
        'fullName',
        'Expected a fully-qualified type name (e.g., '
            '`Windows.Win32.Foundation.HRESULT`)',
      );
    }
    return TypeName((
      fullName.substring(0, index),
      fullName.substring(index + 1),
    ));
  }

  // Common .NET types.

  static const GUID = TypeName(('System', 'Guid'));

  // Common Win32 types.

  static const BOOL = TypeName(('Windows.Win32.Foundation', 'BOOL'));
  static const BOOLEAN = TypeName(('Windows.Win32.Foundation', 'BOOLEAN'));
  static const BSTR = TypeName(('Windows.Win32.Foundation', 'BSTR'));
  static const DEVPROPKEY = TypeName((
    'Windows.Win32.Foundation',
    'DEVPROPKEY',
  ));
  static const HRESULT = TypeName(('Windows.Win32.Foundation', 'HRESULT'));
  static const HSTRING = TypeName(('Windows.Win32.System.WinRT', 'HSTRING'));
  static const IInspectable = TypeName((
    'Windows.Win32.System.WinRT',
    'IInspectable',
  ));
  static const IUnknown = TypeName(('Windows.Win32.System.Com', 'IUnknown'));
  static const NTSTATUS = TypeName(('Windows.Win32.Foundation', 'NTSTATUS'));
  static const PROPERTYKEY = TypeName((
    'Windows.Win32.Foundation',
    'PROPERTYKEY',
  ));
  static const PROPVARIANT = TypeName((
    'Windows.Win32.System.Com.StructuredStorage',
    'PROPVARIANT',
  ));
  static const PSTR = TypeName(('Windows.Win32.Foundation', 'PSTR'));
  static const PWSTR = TypeName(('Windows.Win32.Foundation', 'PWSTR'));
  static const SID_IDENTIFIER_AUTHORITY = TypeName((
    'Windows.Win32.Security',
    'SID_IDENTIFIER_AUTHORITY',
  ));
  static const VARIANT = TypeName(('Windows.Win32.System.Variant', 'VARIANT'));
  static const VARIANT_BOOL = TypeName((
    'Windows.Win32.Foundation',
    'VARIANT_BOOL',
  ));
  static const WIN32_ERROR = TypeName((
    'Windows.Win32.Foundation',
    'WIN32_ERROR',
  ));

  /// The namespace of the type.
  String get namespace => _.$1;

  /// The name of the type.
  String get name => _.$2;

  /// The fully-qualified name of the type.
  String get fullName => '$namespace.$name';
}
