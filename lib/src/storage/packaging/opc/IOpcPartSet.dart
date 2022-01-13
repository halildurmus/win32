// IOpcPartSet.dart

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
import '../../../storage/packaging/opc/IOpcPartUri.dart';
import '../../../storage/packaging/opc/IOpcPart.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/opc/structs.g.dart';
import '../../../storage/packaging/opc/IOpcPartEnumerator.dart';

/// @nodoc
const IID_IOpcPartSet = '{42195949-3B79-4FC8-89C6-FC7FB979EE73}';

/// {@category Interface}
/// {@category com}
class IOpcPartSet extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IOpcPartSet(Pointer<COMObject> ptr) : super(ptr);

  int GetPart(
    Pointer<COMObject> name,
    Pointer<Pointer<COMObject>> part,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> name,
            Pointer<Pointer<COMObject>> part,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> name,
            Pointer<Pointer<COMObject>> part,
          )>()(
        ptr.ref.lpVtbl,
        name,
        part,
      );

  int CreatePart(
    Pointer<COMObject> name,
    Pointer<Utf16> contentType,
    int compressionOptions,
    Pointer<Pointer<COMObject>> part,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> name,
            Pointer<Utf16> contentType,
            Int32 compressionOptions,
            Pointer<Pointer<COMObject>> part,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> name,
            Pointer<Utf16> contentType,
            int compressionOptions,
            Pointer<Pointer<COMObject>> part,
          )>()(
        ptr.ref.lpVtbl,
        name,
        contentType,
        compressionOptions,
        part,
      );

  int DeletePart(
    Pointer<COMObject> name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> name,
          )>()(
        ptr.ref.lpVtbl,
        name,
      );

  int PartExists(
    Pointer<COMObject> name,
    Pointer<Int32> partExists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> name,
            Pointer<Int32> partExists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> name,
            Pointer<Int32> partExists,
          )>()(
        ptr.ref.lpVtbl,
        name,
        partExists,
      );

  int GetEnumerator(
    Pointer<Pointer<COMObject>> partEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> partEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> partEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        partEnumerator,
      );
}
