// IWMHeaderInfo.dart

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
import '../../media/windowsmediaformat/structs.g.dart';

/// @nodoc
const IID_IWMHeaderInfo = '{96406BDA-2B2B-11D3-B36B-00C04F6108FF}';

/// {@category Interface}
/// {@category com}
class IWMHeaderInfo extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IWMHeaderInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetAttributeCount(
    int wStreamNum,
    Pointer<Uint16> pcAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer<Uint16> pcAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer<Uint16> pcAttributes,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        pcAttributes,
      );

  int GetAttributeByIndex(
    int wIndex,
    Pointer<Uint16> pwStreamNum,
    Pointer<Utf16> pwszName,
    Pointer<Uint16> pcchNameLen,
    Pointer<Int32> pType,
    Pointer<Uint8> pValue,
    Pointer<Uint16> pcbLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wIndex,
            Pointer<Uint16> pwStreamNum,
            Pointer<Utf16> pwszName,
            Pointer<Uint16> pcchNameLen,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint16> pcbLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wIndex,
            Pointer<Uint16> pwStreamNum,
            Pointer<Utf16> pwszName,
            Pointer<Uint16> pcchNameLen,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint16> pcbLength,
          )>()(
        ptr.ref.lpVtbl,
        wIndex,
        pwStreamNum,
        pwszName,
        pcchNameLen,
        pType,
        pValue,
        pcbLength,
      );

  int GetAttributeByName(
    Pointer<Uint16> pwStreamNum,
    Pointer<Utf16> pszName,
    Pointer<Int32> pType,
    Pointer<Uint8> pValue,
    Pointer<Uint16> pcbLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwStreamNum,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint16> pcbLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwStreamNum,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint16> pcbLength,
          )>()(
        ptr.ref.lpVtbl,
        pwStreamNum,
        pszName,
        pType,
        pValue,
        pcbLength,
      );

  int SetAttribute(
    int wStreamNum,
    Pointer<Utf16> pszName,
    int Type,
    Pointer<Uint8> pValue,
    int cbLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer<Utf16> pszName,
            Int32 Type,
            Pointer<Uint8> pValue,
            Uint16 cbLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer<Utf16> pszName,
            int Type,
            Pointer<Uint8> pValue,
            int cbLength,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        pszName,
        Type,
        pValue,
        cbLength,
      );

  int GetMarkerCount(
    Pointer<Uint16> pcMarkers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pcMarkers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pcMarkers,
          )>()(
        ptr.ref.lpVtbl,
        pcMarkers,
      );

  int GetMarker(
    int wIndex,
    Pointer<Utf16> pwszMarkerName,
    Pointer<Uint16> pcchMarkerNameLen,
    Pointer<Uint64> pcnsMarkerTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wIndex,
            Pointer<Utf16> pwszMarkerName,
            Pointer<Uint16> pcchMarkerNameLen,
            Pointer<Uint64> pcnsMarkerTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wIndex,
            Pointer<Utf16> pwszMarkerName,
            Pointer<Uint16> pcchMarkerNameLen,
            Pointer<Uint64> pcnsMarkerTime,
          )>()(
        ptr.ref.lpVtbl,
        wIndex,
        pwszMarkerName,
        pcchMarkerNameLen,
        pcnsMarkerTime,
      );

  int AddMarker(
    Pointer<Utf16> pwszMarkerName,
    int cnsMarkerTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszMarkerName,
            Uint64 cnsMarkerTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszMarkerName,
            int cnsMarkerTime,
          )>()(
        ptr.ref.lpVtbl,
        pwszMarkerName,
        cnsMarkerTime,
      );

  int RemoveMarker(
    int wIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wIndex,
          )>()(
        ptr.ref.lpVtbl,
        wIndex,
      );

  int GetScriptCount(
    Pointer<Uint16> pcScripts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pcScripts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pcScripts,
          )>()(
        ptr.ref.lpVtbl,
        pcScripts,
      );

  int GetScript(
    int wIndex,
    Pointer<Utf16> pwszType,
    Pointer<Uint16> pcchTypeLen,
    Pointer<Utf16> pwszCommand,
    Pointer<Uint16> pcchCommandLen,
    Pointer<Uint64> pcnsScriptTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wIndex,
            Pointer<Utf16> pwszType,
            Pointer<Uint16> pcchTypeLen,
            Pointer<Utf16> pwszCommand,
            Pointer<Uint16> pcchCommandLen,
            Pointer<Uint64> pcnsScriptTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wIndex,
            Pointer<Utf16> pwszType,
            Pointer<Uint16> pcchTypeLen,
            Pointer<Utf16> pwszCommand,
            Pointer<Uint16> pcchCommandLen,
            Pointer<Uint64> pcnsScriptTime,
          )>()(
        ptr.ref.lpVtbl,
        wIndex,
        pwszType,
        pcchTypeLen,
        pwszCommand,
        pcchCommandLen,
        pcnsScriptTime,
      );

  int AddScript(
    Pointer<Utf16> pwszType,
    Pointer<Utf16> pwszCommand,
    int cnsScriptTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszType,
            Pointer<Utf16> pwszCommand,
            Uint64 cnsScriptTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszType,
            Pointer<Utf16> pwszCommand,
            int cnsScriptTime,
          )>()(
        ptr.ref.lpVtbl,
        pwszType,
        pwszCommand,
        cnsScriptTime,
      );

  int RemoveScript(
    int wIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wIndex,
          )>()(
        ptr.ref.lpVtbl,
        wIndex,
      );
}
