// IMDSPStorage4.dart

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

import '../../media/devicemanager/IMDSPStorage3.dart';
import '../../media/devicemanager/IMDSPStorage.dart';
import '../../foundation/structs.g.dart';
import '../../media/devicemanager/IWMDMMetaData.dart';
import '../../media/devicemanager/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMDSPStorage4 = '{3133B2C4-515C-481B-B1CE-39327ECB4F74}';

/// {@category Interface}
/// {@category com}
class IMDSPStorage4 extends IMDSPStorage3 {
  // vtable begins at 19, is 6 entries long.
  IMDSPStorage4(Pointer<COMObject> ptr) : super(ptr);

  int SetReferences(
    int dwRefs,
    Pointer<Pointer<COMObject>> ppISPStorage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRefs,
            Pointer<Pointer<COMObject>> ppISPStorage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRefs,
            Pointer<Pointer<COMObject>> ppISPStorage,
          )>()(
        ptr.ref.lpVtbl,
        dwRefs,
        ppISPStorage,
      );

  int GetReferences(
    Pointer<Uint32> pdwRefs,
    Pointer<Pointer<Pointer<COMObject>>> pppISPStorage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwRefs,
            Pointer<Pointer<Pointer<COMObject>>> pppISPStorage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwRefs,
            Pointer<Pointer<Pointer<COMObject>>> pppISPStorage,
          )>()(
        ptr.ref.lpVtbl,
        pdwRefs,
        pppISPStorage,
      );

  int CreateStorageWithMetadata(
    int dwAttributes,
    Pointer<Utf16> pwszName,
    Pointer<COMObject> pMetadata,
    int qwFileSize,
    Pointer<Pointer<COMObject>> ppNewStorage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwAttributes,
            Pointer<Utf16> pwszName,
            Pointer<COMObject> pMetadata,
            Uint64 qwFileSize,
            Pointer<Pointer<COMObject>> ppNewStorage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAttributes,
            Pointer<Utf16> pwszName,
            Pointer<COMObject> pMetadata,
            int qwFileSize,
            Pointer<Pointer<COMObject>> ppNewStorage,
          )>()(
        ptr.ref.lpVtbl,
        dwAttributes,
        pwszName,
        pMetadata,
        qwFileSize,
        ppNewStorage,
      );

  int GetSpecifiedMetadata(
    int cProperties,
    Pointer<Pointer<Utf16>> ppwszPropNames,
    Pointer<COMObject> pMetadata,
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
            Pointer<COMObject> pMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cProperties,
            Pointer<Pointer<Utf16>> ppwszPropNames,
            Pointer<COMObject> pMetadata,
          )>()(
        ptr.ref.lpVtbl,
        cProperties,
        ppwszPropNames,
        pMetadata,
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
