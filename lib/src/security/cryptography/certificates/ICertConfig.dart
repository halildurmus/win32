// ICertConfig.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IDispatch.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICertConfig = '{372FCE34-4324-11D0-8810-00A0C903B83C}';

/// {@category Interface}
/// {@category com}
class ICertConfig extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  ICertConfig(Pointer<COMObject> ptr) : super(ptr);

  int Reset(
    int Index,
    Pointer<Int32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Pointer<Int32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Int32> pCount,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        pCount,
      );

  int Next(
    Pointer<Int32> pIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pIndex,
          )>()(
        ptr.ref.lpVtbl,
        pIndex,
      );

  int GetField(
    Pointer<Utf16> strFieldName,
    Pointer<Pointer<Utf16>> pstrOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strFieldName,
            Pointer<Pointer<Utf16>> pstrOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strFieldName,
            Pointer<Pointer<Utf16>> pstrOut,
          )>()(
        ptr.ref.lpVtbl,
        strFieldName,
        pstrOut,
      );

  int GetConfig(
    int Flags,
    Pointer<Pointer<Utf16>> pstrOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<Pointer<Utf16>> pstrOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Pointer<Utf16>> pstrOut,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        pstrOut,
      );
}
