// ITfLangBarItem.dart

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
import '../../ui/textservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfLangBarItem = '{73540D69-EDEB-4EE9-96C9-23AA30B25916}';

/// {@category Interface}
/// {@category com}
class ITfLangBarItem extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ITfLangBarItem(Pointer<COMObject> ptr) : super(ptr);

  int GetInfo(
    Pointer<TF_LANGBARITEMINFO> pInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TF_LANGBARITEMINFO> pInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TF_LANGBARITEMINFO> pInfo,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
      );

  int GetStatus(
    Pointer<Uint32> pdwStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
          )>()(
        ptr.ref.lpVtbl,
        pdwStatus,
      );

  int Show(
    int fShow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fShow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fShow,
          )>()(
        ptr.ref.lpVtbl,
        fShow,
      );

  int GetTooltipString(
    Pointer<Pointer<Utf16>> pbstrToolTip,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrToolTip,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrToolTip,
          )>()(
        ptr.ref.lpVtbl,
        pbstrToolTip,
      );
}
