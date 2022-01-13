// IEnumACString.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IEnumString.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IEnumACString = '{8E74C210-CF9D-4EAF-A403-7356428F0A5A}';

/// {@category Interface}
/// {@category com}
class IEnumACString extends IEnumString {
  // vtable begins at 7, is 3 entries long.
  IEnumACString(Pointer<COMObject> ptr) : super(ptr);

  int NextItem(
    Pointer<Utf16> pszUrl,
    int cchMax,
    Pointer<Uint32> pulSortIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszUrl,
            Uint32 cchMax,
            Pointer<Uint32> pulSortIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszUrl,
            int cchMax,
            Pointer<Uint32> pulSortIndex,
          )>()(
        ptr.ref.lpVtbl,
        pszUrl,
        cchMax,
        pulSortIndex,
      );

  int SetEnumOptions(
    int dwOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOptions,
          )>()(
        ptr.ref.lpVtbl,
        dwOptions,
      );

  int GetEnumOptions(
    Pointer<Uint32> pdwOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwOptions,
          )>()(
        ptr.ref.lpVtbl,
        pdwOptions,
      );
}
