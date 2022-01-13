// IDvbLogicalChannel2Descriptor.dart

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

import '../../media/directshow/IDvbLogicalChannelDescriptor2.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IDvbLogicalChannel2Descriptor =
    '{F69C3747-8A30-4980-998C-01FE7F0BA35A}';

/// {@category Interface}
/// {@category com}
class IDvbLogicalChannel2Descriptor extends IDvbLogicalChannelDescriptor2 {
  // vtable begins at 9, is 8 entries long.
  IDvbLogicalChannel2Descriptor(Pointer<COMObject> ptr) : super(ptr);

  int GetCountOfLists(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetListId(
    int bListIndex,
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bListIndex,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bListIndex,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        bListIndex,
        pbVal,
      );

  int GetListNameW(
    int bListIndex,
    int convMode,
    Pointer<Pointer<Utf16>> pbstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bListIndex,
            Int32 convMode,
            Pointer<Pointer<Utf16>> pbstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bListIndex,
            int convMode,
            Pointer<Pointer<Utf16>> pbstrName,
          )>()(
        ptr.ref.lpVtbl,
        bListIndex,
        convMode,
        pbstrName,
      );

  int GetListCountryCode(
    int bListIndex,
    Pointer<Uint8> pszCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bListIndex,
            Pointer<Uint8> pszCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bListIndex,
            Pointer<Uint8> pszCode,
          )>()(
        ptr.ref.lpVtbl,
        bListIndex,
        pszCode,
      );

  int GetListCountOfRecords(
    int bChannelListIndex,
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bChannelListIndex,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bChannelListIndex,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        bChannelListIndex,
        pbVal,
      );

  int GetListRecordServiceId(
    int bListIndex,
    int bRecordIndex,
    Pointer<Uint16> pwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bListIndex,
            Uint8 bRecordIndex,
            Pointer<Uint16> pwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bListIndex,
            int bRecordIndex,
            Pointer<Uint16> pwVal,
          )>()(
        ptr.ref.lpVtbl,
        bListIndex,
        bRecordIndex,
        pwVal,
      );

  int GetListRecordLogicalChannelNumber(
    int bListIndex,
    int bRecordIndex,
    Pointer<Uint16> pwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bListIndex,
            Uint8 bRecordIndex,
            Pointer<Uint16> pwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bListIndex,
            int bRecordIndex,
            Pointer<Uint16> pwVal,
          )>()(
        ptr.ref.lpVtbl,
        bListIndex,
        bRecordIndex,
        pwVal,
      );

  int GetListRecordLogicalChannelAndVisibility(
    int bListIndex,
    int bRecordIndex,
    Pointer<Uint16> pwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bListIndex,
            Uint8 bRecordIndex,
            Pointer<Uint16> pwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bListIndex,
            int bRecordIndex,
            Pointer<Uint16> pwVal,
          )>()(
        ptr.ref.lpVtbl,
        bListIndex,
        bRecordIndex,
        pwVal,
      );
}
