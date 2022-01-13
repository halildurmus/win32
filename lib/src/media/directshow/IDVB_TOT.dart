// IDVB_TOT.dart

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
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';
import '../../media/directshow/IGenericDescriptor.dart';

/// @nodoc
const IID_IDVB_TOT = '{83295D6A-FABA-4EE1-9B15-8067696910AE}';

/// {@category Interface}
/// {@category com}
class IDVB_TOT extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDVB_TOT(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pSectionList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSectionList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSectionList,
          )>()(
        ptr.ref.lpVtbl,
        pSectionList,
      );

  int GetUTCTime(
    Pointer<MPEG_DATE_AND_TIME> pmdtVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MPEG_DATE_AND_TIME> pmdtVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MPEG_DATE_AND_TIME> pmdtVal,
          )>()(
        ptr.ref.lpVtbl,
        pmdtVal,
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
}
