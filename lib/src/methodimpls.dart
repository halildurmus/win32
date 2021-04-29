import 'com/constants.dart';

/// Code type of contained code.
enum CodeType { IL, native, optIL, runtime }

/// Contains values that describe method implementation features.
class MethodImplementationFeatures {
  final int _implFlags;

  const MethodImplementationFeatures(this._implFlags);

  /// Returns information about the code type used in implementing the method.
  CodeType get codeType =>
      CodeType.values[_implFlags & CorMethodImpl.miCodeTypeMask];

  /// Returns true if the method implementation is managed.
  bool get isManaged =>
      _implFlags & CorMethodImpl.miManagedMask == CorMethodImpl.miManaged;

  /// Returns true if the method is defined. This flag is used primarily in
  /// merge scenarios.
  bool get isForwardRef =>
      _implFlags & CorMethodImpl.miForwardRef == CorMethodImpl.miForwardRef;

  /// Returns true if the method signature cannot be mangled for an HRESULT
  /// conversion.
  bool get isPreserveSig =>
      _implFlags & CorMethodImpl.miPreserveSig == CorMethodImpl.miPreserveSig;

  /// Returns true if the method is single-threaded through its body.
  bool get isSynchronized =>
      _implFlags & CorMethodImpl.miSynchronized == CorMethodImpl.miSynchronized;

  /// Returns true if the method cannot be inlined.
  bool get isNoInlining =>
      _implFlags & CorMethodImpl.miNoInlining == CorMethodImpl.miNoInlining;

  /// Returns true if the method should be inlined if possible.
  bool get isAggressiveInlining =>
      _implFlags & CorMethodImpl.miAggressiveInlining ==
      CorMethodImpl.miAggressiveInlining;

  /// Returns true if the method should not be optimized.
  bool get isNoOptimization =>
      _implFlags & CorMethodImpl.miNoOptimization ==
      CorMethodImpl.miNoOptimization;
}
