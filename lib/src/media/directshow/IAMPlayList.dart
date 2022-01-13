// IAMPlayList.dart

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
import '../../media/directshow/IAMPlayListItem.dart';

/// @nodoc
const IID_IAMPlayList = '{56A868FE-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IAMPlayList extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IAMPlayList(Pointer<COMObject> ptr) : super(ptr);

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

  int GetItemCount(
    Pointer<Uint32> pdwItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwItems,
          )>()(
        ptr.ref.lpVtbl,
        pdwItems,
      );

  int GetItem(
    int dwItemIndex,
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwItemIndex,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwItemIndex,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        dwItemIndex,
        ppItem,
      );

  int GetNamedEvent(
    Pointer<Utf16> pwszEventName,
    int dwItemIndex,
    Pointer<Pointer<COMObject>> ppItem,
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszEventName,
            Uint32 dwItemIndex,
            Pointer<Pointer<COMObject>> ppItem,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszEventName,
            int dwItemIndex,
            Pointer<Pointer<COMObject>> ppItem,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pwszEventName,
        dwItemIndex,
        ppItem,
        pdwFlags,
      );

  int GetRepeatInfo(
    Pointer<Uint32> pdwRepeatCount,
    Pointer<Uint32> pdwRepeatStart,
    Pointer<Uint32> pdwRepeatEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwRepeatCount,
            Pointer<Uint32> pdwRepeatStart,
            Pointer<Uint32> pdwRepeatEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwRepeatCount,
            Pointer<Uint32> pdwRepeatStart,
            Pointer<Uint32> pdwRepeatEnd,
          )>()(
        ptr.ref.lpVtbl,
        pdwRepeatCount,
        pdwRepeatStart,
        pdwRepeatEnd,
      );
}
