// IPMTileInfo.dart

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
import '../../system/applicationinstallationandservicing/structs.g.dart';
import '../../system/applicationinstallationandservicing/IPMTilePropertyInfo.dart';
import '../../system/applicationinstallationandservicing/IPMTilePropertyEnumerator.dart';

/// @nodoc
const IID_IPMTileInfo = '{D1604833-2B08-4001-82CD-183AD734F752}';

/// {@category Interface}
/// {@category com}
class IPMTileInfo extends IUnknown {
  // vtable begins at 3, is 24 entries long.
  IPMTileInfo(Pointer<COMObject> ptr) : super(ptr);

  GUID get ProductID {
    final retValuePtr = calloc<GUID>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pProductID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pProductID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get TileID {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pTileID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pTileID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get TemplateType {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pTemplateType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pTemplateType,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_HubPinnedState(
    int HubType,
    Pointer<Int32> pPinned,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 HubType,
            Pointer<Int32> pPinned,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int HubType,
            Pointer<Int32> pPinned,
          )>()(
        ptr.ref.lpVtbl,
        HubType,
        pPinned,
      );

  int get_HubPosition(
    int HubType,
    Pointer<Uint32> pPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 HubType,
            Pointer<Uint32> pPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int HubType,
            Pointer<Uint32> pPosition,
          )>()(
        ptr.ref.lpVtbl,
        HubType,
        pPosition,
      );

  int get IsNotified {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pIsNotified,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pIsNotified,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get IsDefault {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pIsDefault,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pIsDefault,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get TaskID {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pTaskID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pTaskID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get TileType {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pStartTileType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pStartTileType,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get IsThemable {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pIsThemable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pIsThemable,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_PropertyById(
    int PropID,
    Pointer<Pointer<COMObject>> ppPropInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 PropID,
            Pointer<Pointer<COMObject>> ppPropInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropID,
            Pointer<Pointer<COMObject>> ppPropInfo,
          )>()(
        ptr.ref.lpVtbl,
        PropID,
        ppPropInfo,
      );

  int get_InvocationInfo(
    Pointer<Pointer<Utf16>> pImageUrn,
    Pointer<Pointer<Utf16>> pParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pImageUrn,
            Pointer<Pointer<Utf16>> pParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pImageUrn,
            Pointer<Pointer<Utf16>> pParameters,
          )>()(
        ptr.ref.lpVtbl,
        pImageUrn,
        pParameters,
      );

  Pointer<COMObject> get PropertyEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTilePropEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTilePropEnum,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_HubTileSize(
    int HubType,
    Pointer<Int32> pSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 HubType,
            Pointer<Int32> pSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int HubType,
            Pointer<Int32> pSize,
          )>()(
        ptr.ref.lpVtbl,
        HubType,
        pSize,
      );

  int set_HubPosition(
    int HubType,
    int Position,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 HubType,
            Uint32 Position,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int HubType,
            int Position,
          )>()(
        ptr.ref.lpVtbl,
        HubType,
        Position,
      );

  int set_NotifiedState(
    int Notified,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Notified,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Notified,
          )>()(
        ptr.ref.lpVtbl,
        Notified,
      );

  int set_HubPinnedState(
    int HubType,
    int Pinned,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 HubType,
            Int32 Pinned,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int HubType,
            int Pinned,
          )>()(
        ptr.ref.lpVtbl,
        HubType,
        Pinned,
      );

  int set_HubTileSize(
    int HubType,
    int Size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 HubType,
            Int32 Size,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int HubType,
            int Size,
          )>()(
        ptr.ref.lpVtbl,
        HubType,
        Size,
      );

  int set_InvocationInfo(
    Pointer<Utf16> TaskName,
    Pointer<Utf16> TaskParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> TaskName,
            Pointer<Utf16> TaskParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> TaskName,
            Pointer<Utf16> TaskParameters,
          )>()(
        ptr.ref.lpVtbl,
        TaskName,
        TaskParameters,
      );

  PM_STARTTILEBLOB get StartTileBlob {
    final retValuePtr = calloc<PM_STARTTILEBLOB>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PM_STARTTILEBLOB> pBlob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PM_STARTTILEBLOB> pBlob,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get IsRestoring {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pIsRestoring,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pIsRestoring,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get IsAutoRestoreDisabled {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pIsAutoRestoreDisabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pIsAutoRestoreDisabled,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int set_IsRestoring(
    int Restoring,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Restoring,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Restoring,
          )>()(
        ptr.ref.lpVtbl,
        Restoring,
      );

  int set_IsAutoRestoreDisabled(
    int AutoRestoreDisabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 AutoRestoreDisabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int AutoRestoreDisabled,
          )>()(
        ptr.ref.lpVtbl,
        AutoRestoreDisabled,
      );
}
