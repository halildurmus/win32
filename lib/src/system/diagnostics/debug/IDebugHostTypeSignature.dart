// IDebugHostTypeSignature.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugHostType.dart';
import '../../../system/diagnostics/debug/IDebugHostSymbolEnumerator.dart';
import '../../../system/diagnostics/debug/IDebugHostTypeSignature.dart';
import '../../../system/diagnostics/debug/structs.g.dart';

/// @nodoc
const IID_IDebugHostTypeSignature = '{3AADC353-2B14-4ABB-9893-5E03458E07EE}';

/// {@category Interface}
/// {@category com}
class IDebugHostTypeSignature extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDebugHostTypeSignature(Pointer<COMObject> ptr) : super(ptr);

  int GetHashCode(
    Pointer<Uint32> hashCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> hashCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> hashCode,
          )>()(
        ptr.ref.lpVtbl,
        hashCode,
      );

  int IsMatch(
    Pointer<COMObject> type,
    Pointer<Bool> isMatch,
    Pointer<Pointer<COMObject>> wildcardMatches,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> type,
            Pointer<Bool> isMatch,
            Pointer<Pointer<COMObject>> wildcardMatches,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> type,
            Pointer<Bool> isMatch,
            Pointer<Pointer<COMObject>> wildcardMatches,
          )>()(
        ptr.ref.lpVtbl,
        type,
        isMatch,
        wildcardMatches,
      );

  int CompareAgainst(
    Pointer<COMObject> typeSignature,
    Pointer<Int32> result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> typeSignature,
            Pointer<Int32> result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> typeSignature,
            Pointer<Int32> result,
          )>()(
        ptr.ref.lpVtbl,
        typeSignature,
        result,
      );
}
