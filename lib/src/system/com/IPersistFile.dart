// IPersistFile.dart

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

import '../../system/com/IPersist.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPersistFile = '{0000010B-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IPersistFile extends IPersist {
  // vtable begins at 4, is 5 entries long.
  IPersistFile(Pointer<COMObject> ptr) : super(ptr);

  int IsDirty() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Load(
    Pointer<Utf16> pszFileName,
    int dwMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFileName,
            Uint32 dwMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFileName,
            int dwMode,
          )>()(
        ptr.ref.lpVtbl,
        pszFileName,
        dwMode,
      );

  int Save(
    Pointer<Utf16> pszFileName,
    int fRemember,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFileName,
            Int32 fRemember,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFileName,
            int fRemember,
          )>()(
        ptr.ref.lpVtbl,
        pszFileName,
        fRemember,
      );

  int SaveCompleted(
    Pointer<Utf16> pszFileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFileName,
          )>()(
        ptr.ref.lpVtbl,
        pszFileName,
      );

  int GetCurFile(
    Pointer<Pointer<Utf16>> ppszFileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszFileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszFileName,
          )>()(
        ptr.ref.lpVtbl,
        ppszFileName,
      );
}
