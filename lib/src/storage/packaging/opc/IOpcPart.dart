// IOpcPart.dart

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
import '../../../storage/packaging/opc/IOpcRelationshipSet.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/IStream.dart';
import '../../../storage/packaging/opc/IOpcPartUri.dart';
import '../../../storage/packaging/opc/structs.g.dart';

/// @nodoc
const IID_IOpcPart = '{42195949-3B79-4FC8-89C6-FC7FB979EE71}';

/// {@category Interface}
/// {@category com}
class IOpcPart extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IOpcPart(Pointer<COMObject> ptr) : super(ptr);

  int GetRelationshipSet(
    Pointer<Pointer<COMObject>> relationshipSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> relationshipSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> relationshipSet,
          )>()(
        ptr.ref.lpVtbl,
        relationshipSet,
      );

  int GetContentStream(
    Pointer<Pointer<COMObject>> stream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> stream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> stream,
          )>()(
        ptr.ref.lpVtbl,
        stream,
      );

  int GetName(
    Pointer<Pointer<COMObject>> name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> name,
          )>()(
        ptr.ref.lpVtbl,
        name,
      );

  int GetContentType(
    Pointer<Pointer<Utf16>> contentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> contentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> contentType,
          )>()(
        ptr.ref.lpVtbl,
        contentType,
      );

  int GetCompressionOptions(
    Pointer<Int32> compressionOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> compressionOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> compressionOptions,
          )>()(
        ptr.ref.lpVtbl,
        compressionOptions,
      );
}
