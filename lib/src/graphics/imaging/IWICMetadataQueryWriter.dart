// IWICMetadataQueryWriter.dart

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

import '../../graphics/imaging/IWICMetadataQueryReader.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IWICMetadataQueryWriter = '{A721791A-0DEF-4D06-BD91-2118BF1DB10B}';

/// {@category Interface}
/// {@category com}
class IWICMetadataQueryWriter extends IWICMetadataQueryReader {
  // vtable begins at 7, is 2 entries long.
  IWICMetadataQueryWriter(Pointer<COMObject> ptr) : super(ptr);

  int SetMetadataByName(
    Pointer<Utf16> wzName,
    Pointer<PROPVARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wzName,
            Pointer<PROPVARIANT> pvarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wzName,
            Pointer<PROPVARIANT> pvarValue,
          )>()(
        ptr.ref.lpVtbl,
        wzName,
        pvarValue,
      );

  int RemoveMetadataByName(
    Pointer<Utf16> wzName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wzName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wzName,
          )>()(
        ptr.ref.lpVtbl,
        wzName,
      );
}
