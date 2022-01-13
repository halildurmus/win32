// IAMPlayListItem.dart

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

/// @nodoc
const IID_IAMPlayListItem = '{56A868FF-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IAMPlayListItem extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IAMPlayListItem(Pointer<COMObject> ptr) : super(ptr);

  int GetFlags(
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
      );

  int GetSourceCount(
    Pointer<Uint32> pdwSources,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwSources,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwSources,
          )>()(
        ptr.ref.lpVtbl,
        pdwSources,
      );

  int GetSourceURL(
    int dwSourceIndex,
    Pointer<Pointer<Utf16>> pbstrURL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSourceIndex,
            Pointer<Pointer<Utf16>> pbstrURL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSourceIndex,
            Pointer<Pointer<Utf16>> pbstrURL,
          )>()(
        ptr.ref.lpVtbl,
        dwSourceIndex,
        pbstrURL,
      );

  int GetSourceStart(
    int dwSourceIndex,
    Pointer<Int64> prtStart,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSourceIndex,
            Pointer<Int64> prtStart,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSourceIndex,
            Pointer<Int64> prtStart,
          )>()(
        ptr.ref.lpVtbl,
        dwSourceIndex,
        prtStart,
      );

  int GetSourceDuration(
    int dwSourceIndex,
    Pointer<Int64> prtDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSourceIndex,
            Pointer<Int64> prtDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSourceIndex,
            Pointer<Int64> prtDuration,
          )>()(
        ptr.ref.lpVtbl,
        dwSourceIndex,
        prtDuration,
      );

  int GetSourceStartMarker(
    int dwSourceIndex,
    Pointer<Uint32> pdwMarker,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSourceIndex,
            Pointer<Uint32> pdwMarker,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSourceIndex,
            Pointer<Uint32> pdwMarker,
          )>()(
        ptr.ref.lpVtbl,
        dwSourceIndex,
        pdwMarker,
      );

  int GetSourceEndMarker(
    int dwSourceIndex,
    Pointer<Uint32> pdwMarker,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSourceIndex,
            Pointer<Uint32> pdwMarker,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSourceIndex,
            Pointer<Uint32> pdwMarker,
          )>()(
        ptr.ref.lpVtbl,
        dwSourceIndex,
        pdwMarker,
      );

  int GetSourceStartMarkerName(
    int dwSourceIndex,
    Pointer<Pointer<Utf16>> pbstrStartMarker,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSourceIndex,
            Pointer<Pointer<Utf16>> pbstrStartMarker,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSourceIndex,
            Pointer<Pointer<Utf16>> pbstrStartMarker,
          )>()(
        ptr.ref.lpVtbl,
        dwSourceIndex,
        pbstrStartMarker,
      );

  int GetSourceEndMarkerName(
    int dwSourceIndex,
    Pointer<Pointer<Utf16>> pbstrEndMarker,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSourceIndex,
            Pointer<Pointer<Utf16>> pbstrEndMarker,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSourceIndex,
            Pointer<Pointer<Utf16>> pbstrEndMarker,
          )>()(
        ptr.ref.lpVtbl,
        dwSourceIndex,
        pbstrEndMarker,
      );

  int GetLinkURL(
    Pointer<Pointer<Utf16>> pbstrURL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrURL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrURL,
          )>()(
        ptr.ref.lpVtbl,
        pbstrURL,
      );

  int GetScanDuration(
    int dwSourceIndex,
    Pointer<Int64> prtScanDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSourceIndex,
            Pointer<Int64> prtScanDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSourceIndex,
            Pointer<Int64> prtScanDuration,
          )>()(
        ptr.ref.lpVtbl,
        dwSourceIndex,
        prtScanDuration,
      );
}
