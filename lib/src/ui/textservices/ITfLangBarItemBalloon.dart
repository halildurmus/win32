// ITfLangBarItemBalloon.dart

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

import '../../ui/textservices/ITfLangBarItem.dart';
import '../../ui/textservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfLangBarItemBalloon = '{01C2D285-D3C7-4B7B-B5B5-D97411D0C283}';

/// {@category Interface}
/// {@category com}
class ITfLangBarItemBalloon extends ITfLangBarItem {
  // vtable begins at 7, is 3 entries long.
  ITfLangBarItemBalloon(Pointer<COMObject> ptr) : super(ptr);

  int OnClick(
    int click,
    POINT pt,
    Pointer<RECT> prcArea,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 click,
            POINT pt,
            Pointer<RECT> prcArea,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int click,
            POINT pt,
            Pointer<RECT> prcArea,
          )>()(
        ptr.ref.lpVtbl,
        click,
        pt,
        prcArea,
      );

  int GetPreferredSize(
    Pointer<SIZE> pszDefault,
    Pointer<SIZE> psz,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SIZE> pszDefault,
            Pointer<SIZE> psz,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SIZE> pszDefault,
            Pointer<SIZE> psz,
          )>()(
        ptr.ref.lpVtbl,
        pszDefault,
        psz,
      );

  int GetBalloonInfo(
    Pointer<TF_LBBALLOONINFO> pInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TF_LBBALLOONINFO> pInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TF_LBBALLOONINFO> pInfo,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
      );
}
