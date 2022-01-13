// IWMWatermarkInfo.dart

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
import '../../media/windowsmediaformat/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMWatermarkInfo = '{6F497062-F2E2-4624-8EA7-9DD40D81FC8D}';

/// {@category Interface}
/// {@category com}
class IWMWatermarkInfo extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMWatermarkInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetWatermarkEntryCount(
    int wmetType,
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 wmetType,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wmetType,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        wmetType,
        pdwCount,
      );

  int GetWatermarkEntry(
    int wmetType,
    int dwEntryNum,
    Pointer<WMT_WATERMARK_ENTRY> pEntry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 wmetType,
            Uint32 dwEntryNum,
            Pointer<WMT_WATERMARK_ENTRY> pEntry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wmetType,
            int dwEntryNum,
            Pointer<WMT_WATERMARK_ENTRY> pEntry,
          )>()(
        ptr.ref.lpVtbl,
        wmetType,
        dwEntryNum,
        pEntry,
      );
}
