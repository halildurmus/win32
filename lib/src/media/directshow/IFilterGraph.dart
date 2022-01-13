// IFilterGraph.dart

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
import '../../media/directshow/IBaseFilter.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IEnumFilters.dart';
import '../../media/directshow/IPin.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IFilterGraph = '{56A8689F-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IFilterGraph extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IFilterGraph(Pointer<COMObject> ptr) : super(ptr);

  int AddFilter(
    Pointer<COMObject> pFilter,
    Pointer<Utf16> pName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFilter,
            Pointer<Utf16> pName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFilter,
            Pointer<Utf16> pName,
          )>()(
        ptr.ref.lpVtbl,
        pFilter,
        pName,
      );

  int RemoveFilter(
    Pointer<COMObject> pFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFilter,
          )>()(
        ptr.ref.lpVtbl,
        pFilter,
      );

  int EnumFilters(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int FindFilterByName(
    Pointer<Utf16> pName,
    Pointer<Pointer<COMObject>> ppFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pName,
            Pointer<Pointer<COMObject>> ppFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pName,
            Pointer<Pointer<COMObject>> ppFilter,
          )>()(
        ptr.ref.lpVtbl,
        pName,
        ppFilter,
      );

  int ConnectDirect(
    Pointer<COMObject> ppinOut,
    Pointer<COMObject> ppinIn,
    Pointer<AM_MEDIA_TYPE> pmt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ppinOut,
            Pointer<COMObject> ppinIn,
            Pointer<AM_MEDIA_TYPE> pmt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ppinOut,
            Pointer<COMObject> ppinIn,
            Pointer<AM_MEDIA_TYPE> pmt,
          )>()(
        ptr.ref.lpVtbl,
        ppinOut,
        ppinIn,
        pmt,
      );

  int Reconnect(
    Pointer<COMObject> ppin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ppin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ppin,
          )>()(
        ptr.ref.lpVtbl,
        ppin,
      );

  int Disconnect(
    Pointer<COMObject> ppin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ppin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ppin,
          )>()(
        ptr.ref.lpVtbl,
        ppin,
      );

  int SetDefaultSyncSource() => ptr.ref.lpVtbl.value
          .elementAt(10)
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
}
