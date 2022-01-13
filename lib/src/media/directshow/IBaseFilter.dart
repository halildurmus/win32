// IBaseFilter.dart

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

import '../../media/directshow/IMediaFilter.dart';
import '../../media/directshow/IEnumPins.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IPin.dart';
import '../../media/directshow/structs.g.dart';
import '../../media/directshow/IFilterGraph.dart';

/// @nodoc
const IID_IBaseFilter = '{56A86895-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IBaseFilter extends IMediaFilter {
  // vtable begins at 10, is 5 entries long.
  IBaseFilter(Pointer<COMObject> ptr) : super(ptr);

  int EnumPins(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int FindPin(
    Pointer<Utf16> Id,
    Pointer<Pointer<COMObject>> ppPin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Id,
            Pointer<Pointer<COMObject>> ppPin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Id,
            Pointer<Pointer<COMObject>> ppPin,
          )>()(
        ptr.ref.lpVtbl,
        Id,
        ppPin,
      );

  int QueryFilterInfo(
    Pointer<FILTER_INFO> pInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FILTER_INFO> pInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FILTER_INFO> pInfo,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
      );

  int JoinFilterGraph(
    Pointer<COMObject> pGraph,
    Pointer<Utf16> pName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pGraph,
            Pointer<Utf16> pName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pGraph,
            Pointer<Utf16> pName,
          )>()(
        ptr.ref.lpVtbl,
        pGraph,
        pName,
      );

  int QueryVendorInfo(
    Pointer<Pointer<Utf16>> pVendorInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVendorInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVendorInfo,
          )>()(
        ptr.ref.lpVtbl,
        pVendorInfo,
      );
}
