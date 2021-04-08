import 'constants.dart';

/// Code type of contained code.
enum CodeType { IL, Native, OptIL, Runtime }

/// Contains values that describe method implementation features.
class MethodImplementationFeatures {
  final int implFlags;

  /// Returns information about the code type used in implementing the method.
  CodeType get codeType =>
      CodeType.values[implFlags & CorMethodImpl.miCodeTypeMask];

  /// Returns true if the method implementation is managed.
  bool get isManaged =>
      implFlags & CorMethodImpl.miManagedMask == CorMethodImpl.miManaged;

  /// Returns true if the method is defined. This flag is used primarily in
  /// merge scenarios.
  bool get isForwardRef =>
      implFlags & CorMethodImpl.miForwardRef == CorMethodImpl.miForwardRef;

  /// Returns true if the method signature cannot be mangled for an HRESULT
  /// conversion.
  bool get isPreserveSig =>
      implFlags & CorMethodImpl.miPreserveSig == CorMethodImpl.miPreserveSig;

  /// Returns true if the method is single-threaded through its body.
  bool get isSynchronized =>
      implFlags & CorMethodImpl.miSynchronized == CorMethodImpl.miSynchronized;

  /// Returns true if the method cannot be inlined.
  bool get isNoInlining =>
      implFlags & CorMethodImpl.miNoInlining == CorMethodImpl.miNoInlining;

  /// Returns true if the method should be inlined if possible.
  bool get isAggressiveInlining =>
      implFlags & CorMethodImpl.miAggressiveInlining ==
      CorMethodImpl.miAggressiveInlining;

  /// Returns true if the method should not be optimized.
  bool get isNoOptimization =>
      implFlags & CorMethodImpl.miNoOptimization ==
      CorMethodImpl.miNoOptimization;

  const MethodImplementationFeatures(this.implFlags);
}
