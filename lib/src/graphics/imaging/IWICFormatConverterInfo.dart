// IWICFormatConverterInfo.dart

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

import '../../graphics/imaging/IWICComponentInfo.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/IWICFormatConverter.dart';

/// @nodoc
const IID_IWICFormatConverterInfo = '{9F34FB65-13F4-4F15-BC57-3726B5E53D9F}';

/// {@category Interface}
/// {@category com}
class IWICFormatConverterInfo extends IWICComponentInfo {
  // vtable begins at 11, is 2 entries long.
  IWICFormatConverterInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetPixelFormats(
    int cFormats,
    Pointer<GUID> pPixelFormatGUIDs,
    Pointer<Uint32> pcActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cFormats,
            Pointer<GUID> pPixelFormatGUIDs,
            Pointer<Uint32> pcActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cFormats,
            Pointer<GUID> pPixelFormatGUIDs,
            Pointer<Uint32> pcActual,
          )>()(
        ptr.ref.lpVtbl,
        cFormats,
        pPixelFormatGUIDs,
        pcActual,
      );

  int CreateInstance(
    Pointer<Pointer<COMObject>> ppIConverter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIConverter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIConverter,
          )>()(
        ptr.ref.lpVtbl,
        ppIConverter,
      );
}
