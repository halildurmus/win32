// IQueueCommand.dart

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
import '../../media/directshow/IDeferredCommand.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IQueueCommand = '{56A868B7-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IQueueCommand extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IQueueCommand(Pointer<COMObject> ptr) : super(ptr);

  int InvokeAtStreamTime(
    Pointer<Pointer<COMObject>> pCmd,
    double time,
    Pointer<GUID> iid,
    int dispidMethod,
    int wFlags,
    int cArgs,
    Pointer<VARIANT> pDispParams,
    Pointer<VARIANT> pvarResult,
    Pointer<Int16> puArgErr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pCmd,
            Double time,
            Pointer<GUID> iid,
            Int32 dispidMethod,
            Int16 wFlags,
            Int32 cArgs,
            Pointer<VARIANT> pDispParams,
            Pointer<VARIANT> pvarResult,
            Pointer<Int16> puArgErr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pCmd,
            double time,
            Pointer<GUID> iid,
            int dispidMethod,
            int wFlags,
            int cArgs,
            Pointer<VARIANT> pDispParams,
            Pointer<VARIANT> pvarResult,
            Pointer<Int16> puArgErr,
          )>()(
        ptr.ref.lpVtbl,
        pCmd,
        time,
        iid,
        dispidMethod,
        wFlags,
        cArgs,
        pDispParams,
        pvarResult,
        puArgErr,
      );

  int InvokeAtPresentationTime(
    Pointer<Pointer<COMObject>> pCmd,
    double time,
    Pointer<GUID> iid,
    int dispidMethod,
    int wFlags,
    int cArgs,
    Pointer<VARIANT> pDispParams,
    Pointer<VARIANT> pvarResult,
    Pointer<Int16> puArgErr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pCmd,
            Double time,
            Pointer<GUID> iid,
            Int32 dispidMethod,
            Int16 wFlags,
            Int32 cArgs,
            Pointer<VARIANT> pDispParams,
            Pointer<VARIANT> pvarResult,
            Pointer<Int16> puArgErr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pCmd,
            double time,
            Pointer<GUID> iid,
            int dispidMethod,
            int wFlags,
            int cArgs,
            Pointer<VARIANT> pDispParams,
            Pointer<VARIANT> pvarResult,
            Pointer<Int16> puArgErr,
          )>()(
        ptr.ref.lpVtbl,
        pCmd,
        time,
        iid,
        dispidMethod,
        wFlags,
        cArgs,
        pDispParams,
        pvarResult,
        puArgErr,
      );
}
