// ISpProperties.dart

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

/// @nodoc
const IID_ISpProperties = '{5B4FB971-B115-4DE1-AD97-E482E3BF6EE4}';

/// {@category Interface}
/// {@category com}
class ISpProperties extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISpProperties(Pointer<COMObject> ptr) : super(ptr);

  int SetPropertyNum(
    Pointer<Utf16> pName,
    int lValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pName,
            Int32 lValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pName,
            int lValue,
          )>()(
        ptr.ref.lpVtbl,
        pName,
        lValue,
      );

  int GetPropertyNum(
    Pointer<Utf16> pName,
    Pointer<Int32> plValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pName,
            Pointer<Int32> plValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pName,
            Pointer<Int32> plValue,
          )>()(
        ptr.ref.lpVtbl,
        pName,
        plValue,
      );

  int SetPropertyString(
    Pointer<Utf16> pName,
    Pointer<Utf16> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pName,
            Pointer<Utf16> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pName,
            Pointer<Utf16> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pName,
        pValue,
      );

  int GetPropertyString(
    Pointer<Utf16> pName,
    Pointer<Pointer<Utf16>> ppCoMemValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pName,
            Pointer<Pointer<Utf16>> ppCoMemValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pName,
            Pointer<Pointer<Utf16>> ppCoMemValue,
          )>()(
        ptr.ref.lpVtbl,
        pName,
        ppCoMemValue,
      );
}
