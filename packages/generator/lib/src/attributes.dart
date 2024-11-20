// This file defines the attributes that are used when generating Dart
// projections of the Win32 API.

/// Attributes from the `System` namespace.
abstract class SystemAttribute {
  /// Specifies that an enumeration can be treated as a bit field.
  static const flags = 'FlagsAttribute';

  /// Indicates that a program element as obsolete.
  static const obsolete = 'ObsoleteAttribute';

  /// Indicates that a parameter is optional.
  static const optional = 'OptionalAttribute';
}

/// Attributes from the `Windows.Win32.Foundation.Metadata` namespace.
abstract class Win32Attribute {
  /// Indicates that a string is ANSI.
  static const ansi = 'AnsiAttribute';

  /// Associates an enumeration with a property, field, or method parameter.
  static const associatedEnum = 'AssociatedEnumAttribute';

  /// Specifies that a method can return multiple success values.
  static const canReturnMultipleSuccessValues =
      'CanReturnMultipleSuccessValuesAttribute';

  /// Indicates that a pointer is a COM output pointer.
  static const comOutPtr = 'ComOutPtrAttribute';

  /// Specifies that a parameter is constant.
  static const const$ = 'ConstAttribute';

  /// Specifies that a field or property represents a constant value.
  static const constant = 'ConstantAttribute';

  /// Provides documentation for a member.
  static const documentation = 'DocumentationAttribute';

  /// Indicates that a handle is unowned and should not be closed.
  static const doNotRelease = 'DoNotReleaseAttribute';

  /// Indicates that a field represents a flexible array.
  static const flexibleArray = 'FlexibleArrayAttribute';

  /// Specifies the function or method that frees a memory allocation.
  static const freeWith = 'FreeWithAttribute';

  /// Associates a GUID with a class or interface.
  static const guid = 'GuidAttribute';

  /// Specifies an invalid handle value for a resource.
  static const invalidHandleValue = 'InvalidHandleValueAttribute';

  /// Specifies the memory size required for a field or parameter.
  static const memorySize = 'MemorySizeAttribute';

  /// Indicates that a typedef represents metadata.
  static const metadataTypedef = 'MetadataTypedefAttribute';

  /// Provides information about a native array.
  static const nativeArrayInfo = 'NativeArrayInfoAttribute';

  /// Defines the layout of a bit field as it was used in the native signature.
  static const nativeBitfield = 'NativeBitfieldAttribute';

  /// Defines the encoding of a string as it was defined in the native signature.
  static const nativeEncoding = 'NativeEncodingAttribute';

  /// Indicates that a typedef is a native type.
  static const nativeTypedef = 'NativeTypedefAttribute';

  /// Specifies that a method is an overload of another method.
  static const overload = 'OverloadAttribute';

  /// Specifies the function or method that frees a handle.
  static const raiiFree = 'RAIIFreeAttribute';

  /// Indicates that a field is reserved.
  static const reserved = 'ReservedAttribute';

  /// Marks a parameter as the return value.
  static const retVal = 'RetValAttribute';

  /// Specifies that an enumeration is scoped.
  static const scopedEnum = 'ScopedEnumAttribute';

  /// Indicates the size of a struct.
  static const structSize = 'StructSizeFieldAttribute';

  /// Indicates that a string is Unicode.
  static const unicode = 'UnicodeAttribute';
}
