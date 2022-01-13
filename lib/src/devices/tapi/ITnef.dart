// ITnef.dart

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
import '../../system/addressbook/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../devices/tapi/structs.g.dart';
import '../../system/addressbook/IMessage.dart';
import '../../system/com/IStream.dart';
import '../../system/addressbook/IMAPITable.dart';

/// @nodoc
const IID_ITnef = 'null';

/// {@category Interface}
/// {@category com}
class ITnef extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ITnef(Pointer<COMObject> ptr) : super(ptr);

  int AddProps(
    int ulFlags,
    int ulElemID,
    Pointer lpvData,
    Pointer<SPropTagArray> lpPropList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Uint32 ulElemID,
            Pointer lpvData,
            Pointer<SPropTagArray> lpPropList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            int ulElemID,
            Pointer lpvData,
            Pointer<SPropTagArray> lpPropList,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        ulElemID,
        lpvData,
        lpPropList,
      );

  int ExtractProps(
    int ulFlags,
    Pointer<SPropTagArray> lpPropList,
    Pointer<Pointer<STnefProblemArray>> lpProblems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Pointer<SPropTagArray> lpPropList,
            Pointer<Pointer<STnefProblemArray>> lpProblems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            Pointer<SPropTagArray> lpPropList,
            Pointer<Pointer<STnefProblemArray>> lpProblems,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        lpPropList,
        lpProblems,
      );

  int Finish(
    int ulFlags,
    Pointer<Uint16> lpKey,
    Pointer<Pointer<STnefProblemArray>> lpProblems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Pointer<Uint16> lpKey,
            Pointer<Pointer<STnefProblemArray>> lpProblems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            Pointer<Uint16> lpKey,
            Pointer<Pointer<STnefProblemArray>> lpProblems,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        lpKey,
        lpProblems,
      );

  int OpenTaggedBody(
    Pointer<COMObject> lpMessage,
    int ulFlags,
    Pointer<Pointer<COMObject>> lppStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpMessage,
            Uint32 ulFlags,
            Pointer<Pointer<COMObject>> lppStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpMessage,
            int ulFlags,
            Pointer<Pointer<COMObject>> lppStream,
          )>()(
        ptr.ref.lpVtbl,
        lpMessage,
        ulFlags,
        lppStream,
      );

  int SetProps(
    int ulFlags,
    int ulElemID,
    int cValues,
    Pointer<SPropValue> lpProps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Uint32 ulElemID,
            Uint32 cValues,
            Pointer<SPropValue> lpProps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            int ulElemID,
            int cValues,
            Pointer<SPropValue> lpProps,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        ulElemID,
        cValues,
        lpProps,
      );

  int EncodeRecips(
    int ulFlags,
    Pointer<COMObject> lpRecipientTable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Pointer<COMObject> lpRecipientTable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            Pointer<COMObject> lpRecipientTable,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        lpRecipientTable,
      );

  int FinishComponent(
    int ulFlags,
    int ulComponentID,
    Pointer<SPropTagArray> lpCustomPropList,
    Pointer<SPropValue> lpCustomProps,
    Pointer<SPropTagArray> lpPropList,
    Pointer<Pointer<STnefProblemArray>> lpProblems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Uint32 ulComponentID,
            Pointer<SPropTagArray> lpCustomPropList,
            Pointer<SPropValue> lpCustomProps,
            Pointer<SPropTagArray> lpPropList,
            Pointer<Pointer<STnefProblemArray>> lpProblems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            int ulComponentID,
            Pointer<SPropTagArray> lpCustomPropList,
            Pointer<SPropValue> lpCustomProps,
            Pointer<SPropTagArray> lpPropList,
            Pointer<Pointer<STnefProblemArray>> lpProblems,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        ulComponentID,
        lpCustomPropList,
        lpCustomProps,
        lpPropList,
        lpProblems,
      );
}
