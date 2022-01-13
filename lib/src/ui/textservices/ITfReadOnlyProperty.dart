// ITfReadOnlyProperty.dart

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
import '../../ui/textservices/IEnumTfRanges.dart';
import '../../ui/textservices/ITfRange.dart';
import '../../specialTypes.dart';
import '../../ui/textservices/ITfContext.dart';

/// @nodoc
const IID_ITfReadOnlyProperty = '{17D49A3D-F8B8-4B2F-B254-52319DD64C53}';

/// {@category Interface}
/// {@category com}
class ITfReadOnlyProperty extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ITfReadOnlyProperty(Pointer<COMObject> ptr) : super(ptr);

  int GetType(
    Pointer<GUID> pguid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguid,
          )>()(
        ptr.ref.lpVtbl,
        pguid,
      );

  int EnumRanges(
    int ec,
    Pointer<Pointer<COMObject>> ppEnum,
    Pointer<COMObject> pTargetRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Pointer<Pointer<COMObject>> ppEnum,
            Pointer<COMObject> pTargetRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<Pointer<COMObject>> ppEnum,
            Pointer<COMObject> pTargetRange,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        ppEnum,
        pTargetRange,
      );

  int GetValue(
    int ec,
    Pointer<COMObject> pRange,
    Pointer<VARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Pointer<COMObject> pRange,
            Pointer<VARIANT> pvarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<COMObject> pRange,
            Pointer<VARIANT> pvarValue,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        pRange,
        pvarValue,
      );

  int GetContext(
    Pointer<Pointer<COMObject>> ppContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppContext,
          )>()(
        ptr.ref.lpVtbl,
        ppContext,
      );
}
