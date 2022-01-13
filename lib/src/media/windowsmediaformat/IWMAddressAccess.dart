// IWMAddressAccess.dart

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
import '../../media/windowsmediaformat/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMAddressAccess = '{BB3C6389-1633-4E92-AF14-9F3173BA39D0}';

/// {@category Interface}
/// {@category com}
class IWMAddressAccess extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWMAddressAccess(Pointer<COMObject> ptr) : super(ptr);

  int GetAccessEntryCount(
    int aeType,
    Pointer<Uint32> pcEntries,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 aeType,
            Pointer<Uint32> pcEntries,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int aeType,
            Pointer<Uint32> pcEntries,
          )>()(
        ptr.ref.lpVtbl,
        aeType,
        pcEntries,
      );

  int GetAccessEntry(
    int aeType,
    int dwEntryNum,
    Pointer<WM_ADDRESS_ACCESSENTRY> pAddrAccessEntry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 aeType,
            Uint32 dwEntryNum,
            Pointer<WM_ADDRESS_ACCESSENTRY> pAddrAccessEntry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int aeType,
            int dwEntryNum,
            Pointer<WM_ADDRESS_ACCESSENTRY> pAddrAccessEntry,
          )>()(
        ptr.ref.lpVtbl,
        aeType,
        dwEntryNum,
        pAddrAccessEntry,
      );

  int AddAccessEntry(
    int aeType,
    Pointer<WM_ADDRESS_ACCESSENTRY> pAddrAccessEntry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 aeType,
            Pointer<WM_ADDRESS_ACCESSENTRY> pAddrAccessEntry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int aeType,
            Pointer<WM_ADDRESS_ACCESSENTRY> pAddrAccessEntry,
          )>()(
        ptr.ref.lpVtbl,
        aeType,
        pAddrAccessEntry,
      );

  int RemoveAccessEntry(
    int aeType,
    int dwEntryNum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 aeType,
            Uint32 dwEntryNum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int aeType,
            int dwEntryNum,
          )>()(
        ptr.ref.lpVtbl,
        aeType,
        dwEntryNum,
      );
}
