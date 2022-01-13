// ICAT.dart

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
import '../../media/directshow/ISectionList.dart';
import '../../media/directshow/IMpeg2Data.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IGenericDescriptor.dart';
import '../../media/directshow/ICAT.dart';

/// @nodoc
const IID_ICAT = '{7C6995FB-2A31-4BD7-953E-B1AD7FB7D31C}';

/// {@category Interface}
/// {@category com}
class ICAT extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  ICAT(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pSectionList,
    Pointer<COMObject> pMPEGData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSectionList,
            Pointer<COMObject> pMPEGData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSectionList,
            Pointer<COMObject> pMPEGData,
          )>()(
        ptr.ref.lpVtbl,
        pSectionList,
        pMPEGData,
      );

  int GetVersionNumber(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetCountOfTableDescriptors(
    Pointer<Uint32> pdwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwVal,
          )>()(
        ptr.ref.lpVtbl,
        pdwVal,
      );

  int GetTableDescriptorByIndex(
    int dwIndex,
    Pointer<Pointer<COMObject>> ppDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Pointer<COMObject>> ppDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Pointer<COMObject>> ppDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        ppDescriptor,
      );

  int GetTableDescriptorByTag(
    int bTag,
    Pointer<Uint32> pdwCookie,
    Pointer<Pointer<COMObject>> ppDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bTag,
            Pointer<Uint32> pdwCookie,
            Pointer<Pointer<COMObject>> ppDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bTag,
            Pointer<Uint32> pdwCookie,
            Pointer<Pointer<COMObject>> ppDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        bTag,
        pdwCookie,
        ppDescriptor,
      );

  int RegisterForNextTable(
    int hNextTableAvailable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hNextTableAvailable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hNextTableAvailable,
          )>()(
        ptr.ref.lpVtbl,
        hNextTableAvailable,
      );

  int GetNextTable(
    int dwTimeout,
    Pointer<Pointer<COMObject>> ppCAT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTimeout,
            Pointer<Pointer<COMObject>> ppCAT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTimeout,
            Pointer<Pointer<COMObject>> ppCAT,
          )>()(
        ptr.ref.lpVtbl,
        dwTimeout,
        ppCAT,
      );

  int RegisterForWhenCurrent(
    int hNextTableIsCurrent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hNextTableIsCurrent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hNextTableIsCurrent,
          )>()(
        ptr.ref.lpVtbl,
        hNextTableIsCurrent,
      );

  int ConvertNextToCurrent() => ptr.ref.lpVtbl.value
          .elementAt(11)
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
}
