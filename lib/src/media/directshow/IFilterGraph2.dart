// IFilterGraph2.dart

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

import '../../media/directshow/IGraphBuilder.dart';
import '../../system/com/IMoniker.dart';
import '../../system/com/IBindCtx.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IBaseFilter.dart';
import '../../media/directshow/IPin.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IFilterGraph2 = '{36B73882-C2C8-11CF-8B46-00805F6CEF60}';

/// {@category Interface}
/// {@category com}
class IFilterGraph2 extends IGraphBuilder {
  // vtable begins at 18, is 3 entries long.
  IFilterGraph2(Pointer<COMObject> ptr) : super(ptr);

  int AddSourceFilterForMoniker(
    Pointer<COMObject> pMoniker,
    Pointer<COMObject> pCtx,
    Pointer<Utf16> lpcwstrFilterName,
    Pointer<Pointer<COMObject>> ppFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pMoniker,
            Pointer<COMObject> pCtx,
            Pointer<Utf16> lpcwstrFilterName,
            Pointer<Pointer<COMObject>> ppFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pMoniker,
            Pointer<COMObject> pCtx,
            Pointer<Utf16> lpcwstrFilterName,
            Pointer<Pointer<COMObject>> ppFilter,
          )>()(
        ptr.ref.lpVtbl,
        pMoniker,
        pCtx,
        lpcwstrFilterName,
        ppFilter,
      );

  int ReconnectEx(
    Pointer<COMObject> ppin,
    Pointer<AM_MEDIA_TYPE> pmt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ppin,
            Pointer<AM_MEDIA_TYPE> pmt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ppin,
            Pointer<AM_MEDIA_TYPE> pmt,
          )>()(
        ptr.ref.lpVtbl,
        ppin,
        pmt,
      );

  int RenderEx(
    Pointer<COMObject> pPinOut,
    int dwFlags,
    Pointer<Uint32> pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPinOut,
            Uint32 dwFlags,
            Pointer<Uint32> pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPinOut,
            int dwFlags,
            Pointer<Uint32> pvContext,
          )>()(
        ptr.ref.lpVtbl,
        pPinOut,
        dwFlags,
        pvContext,
      );
}
