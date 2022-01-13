// IWMDMMetaData.dart

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
import '../../media/devicemanager/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDMMetaData = '{EC3B0663-0951-460A-9A80-0DCEED3C043C}';

/// {@category Interface}
/// {@category com}
class IWMDMMetaData extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWMDMMetaData(Pointer<COMObject> ptr) : super(ptr);

  int AddItem(
    int Type,
    Pointer<Utf16> pwszTagName,
    Pointer<Uint8> pValue,
    int iLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Type,
            Pointer<Utf16> pwszTagName,
            Pointer<Uint8> pValue,
            Uint32 iLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
            Pointer<Utf16> pwszTagName,
            Pointer<Uint8> pValue,
            int iLength,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        pwszTagName,
        pValue,
        iLength,
      );

  int QueryByName(
    Pointer<Utf16> pwszTagName,
    Pointer<Int32> pType,
    Pointer<Pointer<Uint8>> pValue,
    Pointer<Uint32> pcbLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszTagName,
            Pointer<Int32> pType,
            Pointer<Pointer<Uint8>> pValue,
            Pointer<Uint32> pcbLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszTagName,
            Pointer<Int32> pType,
            Pointer<Pointer<Uint8>> pValue,
            Pointer<Uint32> pcbLength,
          )>()(
        ptr.ref.lpVtbl,
        pwszTagName,
        pType,
        pValue,
        pcbLength,
      );

  int QueryByIndex(
    int iIndex,
    Pointer<Pointer<Uint16>> ppwszName,
    Pointer<Int32> pType,
    Pointer<Pointer<Uint8>> ppValue,
    Pointer<Uint32> pcbLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iIndex,
            Pointer<Pointer<Uint16>> ppwszName,
            Pointer<Int32> pType,
            Pointer<Pointer<Uint8>> ppValue,
            Pointer<Uint32> pcbLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iIndex,
            Pointer<Pointer<Uint16>> ppwszName,
            Pointer<Int32> pType,
            Pointer<Pointer<Uint8>> ppValue,
            Pointer<Uint32> pcbLength,
          )>()(
        ptr.ref.lpVtbl,
        iIndex,
        ppwszName,
        pType,
        ppValue,
        pcbLength,
      );

  int GetItemCount(
    Pointer<Uint32> iCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> iCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> iCount,
          )>()(
        ptr.ref.lpVtbl,
        iCount,
      );
}
