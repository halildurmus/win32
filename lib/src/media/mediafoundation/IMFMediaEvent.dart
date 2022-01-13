// IMFMediaEvent.dart

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

import '../../media/mediafoundation/IMFAttributes.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IMFMediaEvent = '{DF598932-F10C-4E39-BBA2-C308F101DAA3}';

/// {@category Interface}
/// {@category com}
class IMFMediaEvent extends IMFAttributes {
  // vtable begins at 33, is 4 entries long.
  IMFMediaEvent(Pointer<COMObject> ptr) : super(ptr);

  int GetType(
    Pointer<Uint32> pmet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pmet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pmet,
          )>()(
        ptr.ref.lpVtbl,
        pmet,
      );

  int GetExtendedType(
    Pointer<GUID> pguidExtendedType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidExtendedType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidExtendedType,
          )>()(
        ptr.ref.lpVtbl,
        pguidExtendedType,
      );

  int GetStatus(
    Pointer<Int32> phrStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> phrStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> phrStatus,
          )>()(
        ptr.ref.lpVtbl,
        phrStatus,
      );

  int GetValue(
    Pointer<PROPVARIANT> pvValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPVARIANT> pvValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPVARIANT> pvValue,
          )>()(
        ptr.ref.lpVtbl,
        pvValue,
      );
}
