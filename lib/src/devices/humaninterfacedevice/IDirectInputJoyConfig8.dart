// IDirectInputJoyConfig8.dart

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
import '../../devices/humaninterfacedevice/callbacks.g.dart';
import '../../devices/humaninterfacedevice/structs.g.dart';
import '../../system/registry/structs.g.dart';

/// @nodoc
const IID_IDirectInputJoyConfig8 = '{EB0D7DFA-1990-4F27-B4D6-EDF2EEC4A44C}';

/// {@category Interface}
/// {@category com}
class IDirectInputJoyConfig8 extends IUnknown {
  // vtable begins at 3, is 16 entries long.
  IDirectInputJoyConfig8(Pointer<COMObject> ptr) : super(ptr);

  int Acquire() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int Unacquire() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int SetCooperativeLevel(
    int param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr param0,
            Uint32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int SendNotify() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int EnumTypes(
    Pointer<NativeFunction<LPDIJOYTYPECALLBACK>> param0,
    Pointer param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<NativeFunction<LPDIJOYTYPECALLBACK>> param0,
            Pointer param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<NativeFunction<LPDIJOYTYPECALLBACK>> param0,
            Pointer param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int GetTypeInfo(
    Pointer<Utf16> param0,
    Pointer<DIJOYTYPEINFO> param1,
    int param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> param0,
            Pointer<DIJOYTYPEINFO> param1,
            Uint32 param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> param0,
            Pointer<DIJOYTYPEINFO> param1,
            int param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int SetTypeInfo(
    Pointer<Utf16> param0,
    Pointer<DIJOYTYPEINFO> param1,
    int param2,
    Pointer<Utf16> param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> param0,
            Pointer<DIJOYTYPEINFO> param1,
            Uint32 param2,
            Pointer<Utf16> param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> param0,
            Pointer<DIJOYTYPEINFO> param1,
            int param2,
            Pointer<Utf16> param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );

  int DeleteType(
    Pointer<Utf16> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int GetConfig(
    int param0,
    Pointer<DIJOYCONFIG> param1,
    int param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<DIJOYCONFIG> param1,
            Uint32 param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<DIJOYCONFIG> param1,
            int param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int SetConfig(
    int param0,
    Pointer<DIJOYCONFIG> param1,
    int param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<DIJOYCONFIG> param1,
            Uint32 param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<DIJOYCONFIG> param1,
            int param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int DeleteConfig(
    int param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int GetUserValues(
    Pointer<DIJOYUSERVALUES> param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DIJOYUSERVALUES> param0,
            Uint32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DIJOYUSERVALUES> param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int SetUserValues(
    Pointer<DIJOYUSERVALUES> param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DIJOYUSERVALUES> param0,
            Uint32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DIJOYUSERVALUES> param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int AddNewHardware(
    int param0,
    Pointer<GUID> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr param0,
            Pointer<GUID> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<GUID> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int OpenTypeKey(
    Pointer<Utf16> param0,
    int param1,
    Pointer<IntPtr> param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> param0,
            Uint32 param1,
            Pointer<IntPtr> param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> param0,
            int param1,
            Pointer<IntPtr> param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int OpenAppStatusKey(
    Pointer<IntPtr> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );
}
