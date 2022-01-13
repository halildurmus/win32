// IWICFastMetadataEncoder.dart

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
import '../../graphics/imaging/IWICMetadataQueryWriter.dart';

/// @nodoc
const IID_IWICFastMetadataEncoder = '{B84E2C09-78C9-4AC4-8BD3-524AE1663A2F}';

/// {@category Interface}
/// {@category com}
class IWICFastMetadataEncoder extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWICFastMetadataEncoder(Pointer<COMObject> ptr) : super(ptr);

  int Commit() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetMetadataQueryWriter(
    Pointer<Pointer<COMObject>> ppIMetadataQueryWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIMetadataQueryWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIMetadataQueryWriter,
          )>()(
        ptr.ref.lpVtbl,
        ppIMetadataQueryWriter,
      );
}
