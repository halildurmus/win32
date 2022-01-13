// IWSDMetadataExchange.dart

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
import '../../devices/webservicesondevices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWSDMetadataExchange = '{06996D57-1D67-4928-9307-3D7833FDB846}';

/// {@category Interface}
/// {@category com}
class IWSDMetadataExchange extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWSDMetadataExchange(Pointer<COMObject> ptr) : super(ptr);

  int GetMetadata(
    Pointer<Pointer<WSD_METADATA_SECTION_LIST>> MetadataOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<WSD_METADATA_SECTION_LIST>> MetadataOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<WSD_METADATA_SECTION_LIST>> MetadataOut,
          )>()(
        ptr.ref.lpVtbl,
        MetadataOut,
      );
}
