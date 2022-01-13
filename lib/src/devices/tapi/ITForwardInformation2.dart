// ITForwardInformation2.dart

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

import '../../devices/tapi/ITForwardInformation.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITForwardInformation2 = '{5229B4ED-B260-4382-8E1A-5DF3A8A4CCC0}';

/// {@category Interface}
/// {@category com}
class ITForwardInformation2 extends ITForwardInformation {
  // vtable begins at 14, is 4 entries long.
  ITForwardInformation2(Pointer<COMObject> ptr) : super(ptr);

  int SetForwardType2(
    int ForwardType,
    Pointer<Utf16> pDestAddress,
    int DestAddressType,
    Pointer<Utf16> pCallerAddress,
    int CallerAddressType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ForwardType,
            Pointer<Utf16> pDestAddress,
            Int32 DestAddressType,
            Pointer<Utf16> pCallerAddress,
            Int32 CallerAddressType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ForwardType,
            Pointer<Utf16> pDestAddress,
            int DestAddressType,
            Pointer<Utf16> pCallerAddress,
            int CallerAddressType,
          )>()(
        ptr.ref.lpVtbl,
        ForwardType,
        pDestAddress,
        DestAddressType,
        pCallerAddress,
        CallerAddressType,
      );

  int GetForwardType2(
    int ForwardType,
    Pointer<Pointer<Utf16>> ppDestinationAddress,
    Pointer<Int32> pDestAddressType,
    Pointer<Pointer<Utf16>> ppCallerAddress,
    Pointer<Int32> pCallerAddressType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ForwardType,
            Pointer<Pointer<Utf16>> ppDestinationAddress,
            Pointer<Int32> pDestAddressType,
            Pointer<Pointer<Utf16>> ppCallerAddress,
            Pointer<Int32> pCallerAddressType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ForwardType,
            Pointer<Pointer<Utf16>> ppDestinationAddress,
            Pointer<Int32> pDestAddressType,
            Pointer<Pointer<Utf16>> ppCallerAddress,
            Pointer<Int32> pCallerAddressType,
          )>()(
        ptr.ref.lpVtbl,
        ForwardType,
        ppDestinationAddress,
        pDestAddressType,
        ppCallerAddress,
        pCallerAddressType,
      );

  int get_ForwardTypeDestinationAddressType(
    int ForwardType,
    Pointer<Int32> pDestAddressType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ForwardType,
            Pointer<Int32> pDestAddressType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ForwardType,
            Pointer<Int32> pDestAddressType,
          )>()(
        ptr.ref.lpVtbl,
        ForwardType,
        pDestAddressType,
      );

  int get_ForwardTypeCallerAddressType(
    int Forwardtype,
    Pointer<Int32> pCallerAddressType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Forwardtype,
            Pointer<Int32> pCallerAddressType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Forwardtype,
            Pointer<Int32> pCallerAddressType,
          )>()(
        ptr.ref.lpVtbl,
        Forwardtype,
        pCallerAddressType,
      );
}
