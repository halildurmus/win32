import 'constants.dart';

/// Code type of contained code.
enum CodeType { IL, Native, OptIL, Runtime }

/// Contains values that describe method implementation features.
class MethodImplementationFeatures {
  final int implFlags;

  CodeType get codeType =>
      CodeType.values[implFlags & CorMethodImpl.miCodeTypeMask];

  bool get isManaged =>
      implFlags & CorMethodImpl.miManagedMask == CorMethodImpl.miManaged;

  bool get isForwardRef =>
      implFlags & CorMethodImpl.miForwardRef == CorMethodImpl.miForwardRef;

  bool get isPreserveSig =>
      implFlags & CorMethodImpl.miPreserveSig == CorMethodImpl.miPreserveSig;

  bool get isSynchronized =>
      implFlags & CorMethodImpl.miSynchronized == CorMethodImpl.miSynchronized;

  bool get isNoInlining =>
      implFlags & CorMethodImpl.miNoInlining == CorMethodImpl.miNoInlining;

  bool get isAggressiveInlining =>
      implFlags & CorMethodImpl.miAggressiveInlining ==
      CorMethodImpl.miAggressiveInlining;

  bool get isNoOptimization =>
      implFlags & CorMethodImpl.miNoOptimization ==
      CorMethodImpl.miNoOptimization;

  const MethodImplementationFeatures(this.implFlags);
}
