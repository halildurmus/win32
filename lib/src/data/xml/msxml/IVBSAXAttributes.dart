// IVBSAXAttributes.dart

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
const IID_IVBSAXAttributes = '{10DC0586-132B-4CAC-8BB3-DB00AC8B7EE0}';

/// {@category Interface}
/// {@category com}
class IVBSAXAttributes extends IDispatch {
  // vtable begins at 7, is 12 entries long.
  IVBSAXAttributes(Pointer<COMObject> ptr) : super(ptr);

  int get length {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> nLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> nLength,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getURI(
    int nIndex,
    Pointer<Pointer<Utf16>> strURI,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nIndex,
            Pointer<Pointer<Utf16>> strURI,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Pointer<Utf16>> strURI,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        strURI,
      );

  int getLocalName(
    int nIndex,
    Pointer<Pointer<Utf16>> strLocalName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nIndex,
            Pointer<Pointer<Utf16>> strLocalName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Pointer<Utf16>> strLocalName,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        strLocalName,
      );

  int getQName(
    int nIndex,
    Pointer<Pointer<Utf16>> strQName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nIndex,
            Pointer<Pointer<Utf16>> strQName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Pointer<Utf16>> strQName,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        strQName,
      );

  int getIndexFromName(
    Pointer<Utf16> strURI,
    Pointer<Utf16> strLocalName,
    Pointer<Int32> nIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strURI,
            Pointer<Utf16> strLocalName,
            Pointer<Int32> nIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strURI,
            Pointer<Utf16> strLocalName,
            Pointer<Int32> nIndex,
          )>()(
        ptr.ref.lpVtbl,
        strURI,
        strLocalName,
        nIndex,
      );

  int getIndexFromQName(
    Pointer<Utf16> strQName,
    Pointer<Int32> nIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strQName,
            Pointer<Int32> nIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strQName,
            Pointer<Int32> nIndex,
          )>()(
        ptr.ref.lpVtbl,
        strQName,
        nIndex,
      );

  int getType(
    int nIndex,
    Pointer<Pointer<Utf16>> strType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nIndex,
            Pointer<Pointer<Utf16>> strType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Pointer<Utf16>> strType,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        strType,
      );

  int getTypeFromName(
    Pointer<Utf16> strURI,
    Pointer<Utf16> strLocalName,
    Pointer<Pointer<Utf16>> strType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strURI,
            Pointer<Utf16> strLocalName,
            Pointer<Pointer<Utf16>> strType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strURI,
            Pointer<Utf16> strLocalName,
            Pointer<Pointer<Utf16>> strType,
          )>()(
        ptr.ref.lpVtbl,
        strURI,
        strLocalName,
        strType,
      );

  int getTypeFromQName(
    Pointer<Utf16> strQName,
    Pointer<Pointer<Utf16>> strType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strQName,
            Pointer<Pointer<Utf16>> strType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strQName,
            Pointer<Pointer<Utf16>> strType,
          )>()(
        ptr.ref.lpVtbl,
        strQName,
        strType,
      );

  int getValue(
    int nIndex,
    Pointer<Pointer<Utf16>> strValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nIndex,
            Pointer<Pointer<Utf16>> strValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Pointer<Utf16>> strValue,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        strValue,
      );

  int getValueFromName(
    Pointer<Utf16> strURI,
    Pointer<Utf16> strLocalName,
    Pointer<Pointer<Utf16>> strValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strURI,
            Pointer<Utf16> strLocalName,
            Pointer<Pointer<Utf16>> strValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strURI,
            Pointer<Utf16> strLocalName,
            Pointer<Pointer<Utf16>> strValue,
          )>()(
        ptr.ref.lpVtbl,
        strURI,
        strLocalName,
        strValue,
      );

  int getValueFromQName(
    Pointer<Utf16> strQName,
    Pointer<Pointer<Utf16>> strValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strQName,
            Pointer<Pointer<Utf16>> strValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strQName,
            Pointer<Pointer<Utf16>> strValue,
          )>()(
        ptr.ref.lpVtbl,
        strQName,
        strValue,
      );
}
