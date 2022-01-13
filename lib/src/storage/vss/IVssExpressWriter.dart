// IVssExpressWriter.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../storage/vss/structs.g.dart';
import '../../storage/vss/IVssCreateExpressWriterMetadata.dart';

/// @nodoc
const IID_IVssExpressWriter = '{E33AFFDC-59C7-47B1-97D5-4266598F6235}';

/// {@category Interface}
/// {@category com}
class IVssExpressWriter extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IVssExpressWriter(Pointer<COMObject> ptr) : super(ptr);

  int CreateMetadata(
    GUID writerId,
    Pointer<Utf16> writerName,
    int usageType,
    int versionMajor,
    int versionMinor,
    int reserved,
    Pointer<Pointer<COMObject>> ppMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID writerId,
            Pointer<Utf16> writerName,
            Int32 usageType,
            Uint32 versionMajor,
            Uint32 versionMinor,
            Uint32 reserved,
            Pointer<Pointer<COMObject>> ppMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID writerId,
            Pointer<Utf16> writerName,
            int usageType,
            int versionMajor,
            int versionMinor,
            int reserved,
            Pointer<Pointer<COMObject>> ppMetadata,
          )>()(
        ptr.ref.lpVtbl,
        writerId,
        writerName,
        usageType,
        versionMajor,
        versionMinor,
        reserved,
        ppMetadata,
      );

  int LoadMetadata(
    Pointer<Utf16> metadata,
    int reserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> metadata,
            Uint32 reserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> metadata,
            int reserved,
          )>()(
        ptr.ref.lpVtbl,
        metadata,
        reserved,
      );

  int Register() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Unregister(
    GUID writerId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID writerId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID writerId,
          )>()(
        ptr.ref.lpVtbl,
        writerId,
      );
}
