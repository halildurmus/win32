// ICodecAPI.dart

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
import '../../specialTypes.dart';
import '../../system/com/IStream.dart';

/// @nodoc
const IID_ICodecAPI = '{901DB4C7-31CE-41A2-85DC-8FA0BF41B8DA}';

/// {@category Interface}
/// {@category com}
class ICodecAPI extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  ICodecAPI(Pointer<COMObject> ptr) : super(ptr);

  int IsSupported(
    Pointer<GUID> Api,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Api,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Api,
          )>()(
        ptr.ref.lpVtbl,
        Api,
      );

  int IsModifiable(
    Pointer<GUID> Api,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Api,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Api,
          )>()(
        ptr.ref.lpVtbl,
        Api,
      );

  int GetParameterRange(
    Pointer<GUID> Api,
    Pointer<VARIANT> ValueMin,
    Pointer<VARIANT> ValueMax,
    Pointer<VARIANT> SteppingDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<VARIANT> ValueMin,
            Pointer<VARIANT> ValueMax,
            Pointer<VARIANT> SteppingDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<VARIANT> ValueMin,
            Pointer<VARIANT> ValueMax,
            Pointer<VARIANT> SteppingDelta,
          )>()(
        ptr.ref.lpVtbl,
        Api,
        ValueMin,
        ValueMax,
        SteppingDelta,
      );

  int GetParameterValues(
    Pointer<GUID> Api,
    Pointer<Pointer<VARIANT>> Values,
    Pointer<Uint32> ValuesCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<Pointer<VARIANT>> Values,
            Pointer<Uint32> ValuesCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<Pointer<VARIANT>> Values,
            Pointer<Uint32> ValuesCount,
          )>()(
        ptr.ref.lpVtbl,
        Api,
        Values,
        ValuesCount,
      );

  int GetDefaultValue(
    Pointer<GUID> Api,
    Pointer<VARIANT> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<VARIANT> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<VARIANT> Value,
          )>()(
        ptr.ref.lpVtbl,
        Api,
        Value,
      );

  int GetValue(
    Pointer<GUID> Api,
    Pointer<VARIANT> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<VARIANT> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<VARIANT> Value,
          )>()(
        ptr.ref.lpVtbl,
        Api,
        Value,
      );

  int SetValue(
    Pointer<GUID> Api,
    Pointer<VARIANT> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<VARIANT> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<VARIANT> Value,
          )>()(
        ptr.ref.lpVtbl,
        Api,
        Value,
      );

  int RegisterForEvent(
    Pointer<GUID> Api,
    int userData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Api,
            IntPtr userData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Api,
            int userData,
          )>()(
        ptr.ref.lpVtbl,
        Api,
        userData,
      );

  int UnregisterForEvent(
    Pointer<GUID> Api,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Api,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Api,
          )>()(
        ptr.ref.lpVtbl,
        Api,
      );

  int SetAllDefaults() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int SetValueWithNotify(
    Pointer<GUID> Api,
    Pointer<VARIANT> Value,
    Pointer<Pointer<GUID>> ChangedParam,
    Pointer<Uint32> ChangedParamCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<VARIANT> Value,
            Pointer<Pointer<GUID>> ChangedParam,
            Pointer<Uint32> ChangedParamCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<VARIANT> Value,
            Pointer<Pointer<GUID>> ChangedParam,
            Pointer<Uint32> ChangedParamCount,
          )>()(
        ptr.ref.lpVtbl,
        Api,
        Value,
        ChangedParam,
        ChangedParamCount,
      );

  int SetAllDefaultsWithNotify(
    Pointer<Pointer<GUID>> ChangedParam,
    Pointer<Uint32> ChangedParamCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<GUID>> ChangedParam,
            Pointer<Uint32> ChangedParamCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<GUID>> ChangedParam,
            Pointer<Uint32> ChangedParamCount,
          )>()(
        ptr.ref.lpVtbl,
        ChangedParam,
        ChangedParamCount,
      );

  int GetAllSettings(
    Pointer<COMObject> MIDL__ICodecAPI0000,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> MIDL__ICodecAPI0000,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> MIDL__ICodecAPI0000,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__ICodecAPI0000,
      );

  int SetAllSettings(
    Pointer<COMObject> MIDL__ICodecAPI0001,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> MIDL__ICodecAPI0001,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> MIDL__ICodecAPI0001,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__ICodecAPI0001,
      );

  int SetAllSettingsWithNotify(
    Pointer<COMObject> MIDL__ICodecAPI0002,
    Pointer<Pointer<GUID>> ChangedParam,
    Pointer<Uint32> ChangedParamCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> MIDL__ICodecAPI0002,
            Pointer<Pointer<GUID>> ChangedParam,
            Pointer<Uint32> ChangedParamCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> MIDL__ICodecAPI0002,
            Pointer<Pointer<GUID>> ChangedParam,
            Pointer<Uint32> ChangedParamCount,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__ICodecAPI0002,
        ChangedParam,
        ChangedParamCount,
      );
}
