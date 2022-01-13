// IStreamBufferRecordingAttribute.dart

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
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';
import '../../media/directshow/IEnumStreamBufferRecordingAttrib.dart';

/// @nodoc
const IID_IStreamBufferRecordingAttribute =
    '{16CA4E03-FE69-4705-BD41-5B7DFC0C95F3}';

/// {@category Interface}
/// {@category com}
class IStreamBufferRecordingAttribute extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IStreamBufferRecordingAttribute(Pointer<COMObject> ptr) : super(ptr);

  int SetAttribute(
    int ulReserved,
    Pointer<Utf16> pszAttributeName,
    int StreamBufferAttributeType,
    Pointer<Uint8> pbAttribute,
    int cbAttributeLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulReserved,
            Pointer<Utf16> pszAttributeName,
            Int32 StreamBufferAttributeType,
            Pointer<Uint8> pbAttribute,
            Uint16 cbAttributeLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulReserved,
            Pointer<Utf16> pszAttributeName,
            int StreamBufferAttributeType,
            Pointer<Uint8> pbAttribute,
            int cbAttributeLength,
          )>()(
        ptr.ref.lpVtbl,
        ulReserved,
        pszAttributeName,
        StreamBufferAttributeType,
        pbAttribute,
        cbAttributeLength,
      );

  int GetAttributeCount(
    int ulReserved,
    Pointer<Uint16> pcAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulReserved,
            Pointer<Uint16> pcAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulReserved,
            Pointer<Uint16> pcAttributes,
          )>()(
        ptr.ref.lpVtbl,
        ulReserved,
        pcAttributes,
      );

  int GetAttributeByName(
    Pointer<Utf16> pszAttributeName,
    Pointer<Uint32> pulReserved,
    Pointer<Int32> pStreamBufferAttributeType,
    Pointer<Uint8> pbAttribute,
    Pointer<Uint16> pcbLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszAttributeName,
            Pointer<Uint32> pulReserved,
            Pointer<Int32> pStreamBufferAttributeType,
            Pointer<Uint8> pbAttribute,
            Pointer<Uint16> pcbLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszAttributeName,
            Pointer<Uint32> pulReserved,
            Pointer<Int32> pStreamBufferAttributeType,
            Pointer<Uint8> pbAttribute,
            Pointer<Uint16> pcbLength,
          )>()(
        ptr.ref.lpVtbl,
        pszAttributeName,
        pulReserved,
        pStreamBufferAttributeType,
        pbAttribute,
        pcbLength,
      );

  int GetAttributeByIndex(
    int wIndex,
    Pointer<Uint32> pulReserved,
    Pointer<Utf16> pszAttributeName,
    Pointer<Uint16> pcchNameLength,
    Pointer<Int32> pStreamBufferAttributeType,
    Pointer<Uint8> pbAttribute,
    Pointer<Uint16> pcbLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wIndex,
            Pointer<Uint32> pulReserved,
            Pointer<Utf16> pszAttributeName,
            Pointer<Uint16> pcchNameLength,
            Pointer<Int32> pStreamBufferAttributeType,
            Pointer<Uint8> pbAttribute,
            Pointer<Uint16> pcbLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wIndex,
            Pointer<Uint32> pulReserved,
            Pointer<Utf16> pszAttributeName,
            Pointer<Uint16> pcchNameLength,
            Pointer<Int32> pStreamBufferAttributeType,
            Pointer<Uint8> pbAttribute,
            Pointer<Uint16> pcbLength,
          )>()(
        ptr.ref.lpVtbl,
        wIndex,
        pulReserved,
        pszAttributeName,
        pcchNameLength,
        pStreamBufferAttributeType,
        pbAttribute,
        pcbLength,
      );

  int EnumAttributes(
    Pointer<Pointer<COMObject>> ppIEnumStreamBufferAttrib,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEnumStreamBufferAttrib,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEnumStreamBufferAttrib,
          )>()(
        ptr.ref.lpVtbl,
        ppIEnumStreamBufferAttrib,
      );
}
