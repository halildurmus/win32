// ITuningSpaceContainer.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../system/ole/IEnumVARIANT.dart';
import '../../specialTypes.dart';
import '../../media/directshow/ITuningSpace.dart';
import '../../media/directshow/ITuningSpaces.dart';
import '../../media/directshow/IEnumTuningSpaces.dart';

/// @nodoc
const IID_ITuningSpaceContainer = '{5B692E84-E2F1-11D2-9493-00C04F72D980}';

/// {@category Interface}
/// {@category com}
class ITuningSpaceContainer extends IDispatch {
  // vtable begins at 7, is 13 entries long.
  ITuningSpaceContainer(Pointer<COMObject> ptr) : super(ptr);

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Count,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewEnum,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Item(
    VARIANT varIndex,
    Pointer<Pointer<COMObject>> TuningSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varIndex,
            Pointer<Pointer<COMObject>> TuningSpace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varIndex,
            Pointer<Pointer<COMObject>> TuningSpace,
          )>()(
        ptr.ref.lpVtbl,
        varIndex,
        TuningSpace,
      );

  int put_Item(
    VARIANT varIndex,
    Pointer<COMObject> TuningSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varIndex,
            Pointer<COMObject> TuningSpace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varIndex,
            Pointer<COMObject> TuningSpace,
          )>()(
        ptr.ref.lpVtbl,
        varIndex,
        TuningSpace,
      );

  int TuningSpacesForCLSID(
    Pointer<Utf16> SpaceCLSID,
    Pointer<Pointer<COMObject>> NewColl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> SpaceCLSID,
            Pointer<Pointer<COMObject>> NewColl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> SpaceCLSID,
            Pointer<Pointer<COMObject>> NewColl,
          )>()(
        ptr.ref.lpVtbl,
        SpaceCLSID,
        NewColl,
      );

  int TuningSpacesForCLSID2(
    Pointer<GUID> SpaceCLSID,
    Pointer<Pointer<COMObject>> NewColl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> SpaceCLSID,
            Pointer<Pointer<COMObject>> NewColl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> SpaceCLSID,
            Pointer<Pointer<COMObject>> NewColl,
          )>()(
        ptr.ref.lpVtbl,
        SpaceCLSID,
        NewColl,
      );

  int TuningSpacesForName(
    Pointer<Utf16> Name,
    Pointer<Pointer<COMObject>> NewColl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Pointer<COMObject>> NewColl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Pointer<COMObject>> NewColl,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        NewColl,
      );

  int FindID(
    Pointer<COMObject> TuningSpace,
    Pointer<Int32> ID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> TuningSpace,
            Pointer<Int32> ID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> TuningSpace,
            Pointer<Int32> ID,
          )>()(
        ptr.ref.lpVtbl,
        TuningSpace,
        ID,
      );

  int Add(
    Pointer<COMObject> TuningSpace,
    Pointer<VARIANT> NewIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> TuningSpace,
            Pointer<VARIANT> NewIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> TuningSpace,
            Pointer<VARIANT> NewIndex,
          )>()(
        ptr.ref.lpVtbl,
        TuningSpace,
        NewIndex,
      );

  Pointer<COMObject> get EnumTuningSpaces {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Remove(
    VARIANT Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT Index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT Index,
          )>()(
        ptr.ref.lpVtbl,
        Index,
      );

  int get MaxCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> MaxCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> MaxCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set MaxCount(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(19)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 MaxCount,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int MaxCount,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
