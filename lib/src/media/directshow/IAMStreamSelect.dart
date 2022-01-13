// IAMStreamSelect.dart

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
import '../../media/directshow/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IAMStreamSelect = '{C1960960-17F5-11D1-ABE1-00A0C905F375}';

/// {@category Interface}
/// {@category com}
class IAMStreamSelect extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAMStreamSelect(Pointer<COMObject> ptr) : super(ptr);

  int Count(
    Pointer<Uint32> pcStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcStreams,
          )>()(
        ptr.ref.lpVtbl,
        pcStreams,
      );

  int Info(
    int lIndex,
    Pointer<Pointer<AM_MEDIA_TYPE>> ppmt,
    Pointer<Uint32> pdwFlags,
    Pointer<Uint32> plcid,
    Pointer<Uint32> pdwGroup,
    Pointer<Pointer<Utf16>> ppszName,
    Pointer<Pointer<COMObject>> ppObject,
    Pointer<Pointer<COMObject>> ppUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Pointer<Pointer<AM_MEDIA_TYPE>> ppmt,
            Pointer<Uint32> pdwFlags,
            Pointer<Uint32> plcid,
            Pointer<Uint32> pdwGroup,
            Pointer<Pointer<Utf16>> ppszName,
            Pointer<Pointer<COMObject>> ppObject,
            Pointer<Pointer<COMObject>> ppUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            Pointer<Pointer<AM_MEDIA_TYPE>> ppmt,
            Pointer<Uint32> pdwFlags,
            Pointer<Uint32> plcid,
            Pointer<Uint32> pdwGroup,
            Pointer<Pointer<Utf16>> ppszName,
            Pointer<Pointer<COMObject>> ppObject,
            Pointer<Pointer<COMObject>> ppUnk,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        ppmt,
        pdwFlags,
        plcid,
        pdwGroup,
        ppszName,
        ppObject,
        ppUnk,
      );

  int Enable(
    int lIndex,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        dwFlags,
      );
}
