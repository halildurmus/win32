// This file defines the attributes that are used when generating Dart
// projections of the Win32 API.

/// Attributes from the `System` namespace.
abstract class SystemAttribute {
  /// Specifies that an enumeration can be treated as a bit field.
  static const flags = 'System.FlagsAttribute';

  /// Indicates that a program element as obsolete.
  static const obsolete = 'System.ObsoleteAttribute';

  /// Indicates that a parameter is optional.
  static const optional = 'System.Runtime.InteropServices.OptionalAttribute';
}

/// Attributes from the `Windows.Win32.Foundation.Metadata` namespace.
abstract class Win32Attribute {
  static const _namespace = 'Windows.Win32.Foundation.Metadata';

  /// Indicates that a string is ANSI.
  static const ansi = '$_namespace.AnsiAttribute';

  /// Associates an enumeration with a property, field, or method parameter.
  static const associatedEnum = '$_namespace.AssociatedEnumAttribute';

  /// Specifies that a method can return multiple success values.
  static const canReturnMultipleSuccessValues =
      '$_namespace.CanReturnMultipleSuccessValuesAttribute';

  /// Indicates that a pointer is a COM output pointer.
  static const comOutPtr = '$_namespace.ComOutPtrAttribute';

  /// Specifies that a parameter is constant.
  static const const$ = '$_namespace.ConstAttribute';

  /// Specifies that a field or property represents a constant value.
  static const constant = '$_namespace.ConstantAttribute';

  /// Provides documentation for a member.
  static const documentation = '$_namespace.DocumentationAttribute';

  /// Indicates that a handle is unowned and should not be closed.
  static const doNotRelease = '$_namespace.DoNotReleaseAttribute';

  /// Indicates that a field represents a flexible array.
  static const flexibleArray = '$_namespace.FlexibleArrayAttribute';

  /// Specifies the function or method that frees a memory allocation.
  static const freeWith = '$_namespace.FreeWithAttribute';

  /// Associates a GUID with a class or interface.
  static const guid = '$_namespace.GuidAttribute';

  /// Specifies an invalid handle value for a resource.
  static const invalidHandleValue = '$_namespace.InvalidHandleValueAttribute';

  /// Specifies the memory size required for a field or parameter.
  static const memorySize = '$_namespace.MemorySizeAttribute';

  /// Indicates that a typedef represents metadata.
  static const metadataTypedef = '$_namespace.MetadataTypedefAttribute';

  /// Provides information about a native array.
  static const nativeArrayInfo = '$_namespace.NativeArrayInfoAttribute';

  /// Defines the layout of a bit field as it was used in the native signature.
  static const nativeBitfield = '$_namespace.NativeBitfieldAttribute';

  /// Defines the encoding of a string as it was defined in the native signature.
  static const nativeEncoding = '$_namespace.NativeEncodingAttribute';

  /// Indicates that a typedef is a native type.
  static const nativeTypedef = '$_namespace.NativeTypedefAttribute';

  /// Specifies that a method is an overload of another method.
  static const overload = '$_namespace.OverloadAttribute';

  /// Specifies the function or method that frees a handle.
  static const raiiFree = '$_namespace.RAIIFreeAttribute';

  /// Indicates that a field is reserved.
  static const reserved = '$_namespace.ReservedAttribute';

  /// Marks a parameter as the return value.
  static const retVal = '$_namespace.RetValAttribute';

  /// Specifies that an enumeration is scoped.
  static const scopedEnum = '$_namespace.ScopedEnumAttribute';

  /// Indicates the size of a struct.
  static const structSize = '$_namespace.StructSizeFieldAttribute';

  /// Indicates that a string is Unicode.
  static const unicode = '$_namespace.UnicodeAttribute';
}
