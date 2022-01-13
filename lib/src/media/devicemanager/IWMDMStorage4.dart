// IWMDMStorage4.dart

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

import '../../media/devicemanager/IWMDMStorage3.dart';
import '../../media/devicemanager/IWMDMStorage.dart';
import '../../foundation/structs.g.dart';
import '../../media/devicemanager/IWMDMProgress3.dart';
import '../../media/devicemanager/structs.g.dart';
import '../../media/devicemanager/IWMDMMetaData.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDMStorage4 = '{C225BAC5-A03A-40B8-9A23-91CF478C64A6}';

/// {@category Interface}
/// {@category com}
class IWMDMStorage4 extends IWMDMStorage3 {
  // vtable begins at 19, is 6 entries long.
  IWMDMStorage4(Pointer<COMObject> ptr) : super(ptr);

  int SetReferences(
    int dwRefs,
    Pointer<Pointer<COMObject>> ppIWMDMStorage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRefs,
            Pointer<Pointer<COMObject>> ppIWMDMStorage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRefs,
            Pointer<Pointer<COMObject>> ppIWMDMStorage,
          )>()(
        ptr.ref.lpVtbl,
        dwRefs,
        ppIWMDMStorage,
      );

  int GetReferences(
    Pointer<Uint32> pdwRefs,
    Pointer<Pointer<Pointer<COMObject>>> pppIWMDMStorage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwRefs,
            Pointer<Pointer<Pointer<COMObject>>> pppIWMDMStorage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwRefs,
            Pointer<Pointer<Pointer<COMObject>>> pppIWMDMStorage,
          )>()(
        ptr.ref.lpVtbl,
        pdwRefs,
        pppIWMDMStorage,
      );

  int GetRightsWithProgress(
    Pointer<COMObject> pIProgressCallback,
    Pointer<Pointer<WMDMRIGHTS>> ppRights,
    Pointer<Uint32> pnRightsCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIProgressCallback,
            Pointer<Pointer<WMDMRIGHTS>> ppRights,
            Pointer<Uint32> pnRightsCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIProgressCallback,
            Pointer<Pointer<WMDMRIGHTS>> ppRights,
            Pointer<Uint32> pnRightsCount,
          )>()(
        ptr.ref.lpVtbl,
        pIProgressCallback,
        ppRights,
        pnRightsCount,
      );

  int GetSpecifiedMetadata(
    int cProperties,
    Pointer<Pointer<Utf16>> ppwszPropNames,
    Pointer<Pointer<COMObject>> ppMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cProperties,
            Pointer<Pointer<Utf16>> ppwszPropNames,
            Pointer<Pointer<COMObject>> ppMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cProperties,
            Pointer<Pointer<Utf16>> ppwszPropNames,
            Pointer<Pointer<COMObject>> ppMetadata,
          )>()(
        ptr.ref.lpVtbl,
        cProperties,
        ppwszPropNames,
        ppMetadata,
      );

  int FindStorage(
    int findScope,
    Pointer<Utf16> pwszUniqueID,
    Pointer<Pointer<COMObject>> ppStorage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 findScope,
            Pointer<Utf16> pwszUniqueID,
            Pointer<Pointer<COMObject>> ppStorage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int findScope,
            Pointer<Utf16> pwszUniqueID,
            Pointer<Pointer<COMObject>> ppStorage,
          )>()(
        ptr.ref.lpVtbl,
        findScope,
        pwszUniqueID,
        ppStorage,
      );

  int GetParent(
    Pointer<Pointer<COMObject>> ppStorage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStorage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStorage,
          )>()(
        ptr.ref.lpVtbl,
        ppStorage,
      );
}
