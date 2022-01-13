// IFsrmFileScreenManager.dart

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

import '../../system/com/IDispatch.dart';
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmFileScreen.dart';
import '../../storage/fileserverresourcemanager/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmCommittableCollection.dart';
import '../../storage/fileserverresourcemanager/IFsrmFileScreenException.dart';

/// @nodoc
const IID_IFsrmFileScreenManager = '{FF4FA04E-5A94-4BDA-A3A0-D5B4D3C52EBA}';

/// {@category Interface}
/// {@category com}
class IFsrmFileScreenManager extends IDispatch {
  // vtable begins at 7, is 9 entries long.
  IFsrmFileScreenManager(Pointer<COMObject> ptr) : super(ptr);

  Pointer<SAFEARRAY> get ActionVariables {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> variables,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> variables,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<SAFEARRAY> get ActionVariableDescriptions {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> descriptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> descriptions,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int CreateFileScreen(
    Pointer<Utf16> path,
    Pointer<Pointer<COMObject>> fileScreen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> fileScreen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> fileScreen,
          )>()(
        ptr.ref.lpVtbl,
        path,
        fileScreen,
      );

  int GetFileScreen(
    Pointer<Utf16> path,
    Pointer<Pointer<COMObject>> fileScreen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> fileScreen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> fileScreen,
          )>()(
        ptr.ref.lpVtbl,
        path,
        fileScreen,
      );

  int EnumFileScreens(
    Pointer<Utf16> path,
    int options,
    Pointer<Pointer<COMObject>> fileScreens,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Int32 options,
            Pointer<Pointer<COMObject>> fileScreens,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            int options,
            Pointer<Pointer<COMObject>> fileScreens,
          )>()(
        ptr.ref.lpVtbl,
        path,
        options,
        fileScreens,
      );

  int CreateFileScreenException(
    Pointer<Utf16> path,
    Pointer<Pointer<COMObject>> fileScreenException,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> fileScreenException,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> fileScreenException,
          )>()(
        ptr.ref.lpVtbl,
        path,
        fileScreenException,
      );

  int GetFileScreenException(
    Pointer<Utf16> path,
    Pointer<Pointer<COMObject>> fileScreenException,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> fileScreenException,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Pointer<COMObject>> fileScreenException,
          )>()(
        ptr.ref.lpVtbl,
        path,
        fileScreenException,
      );

  int EnumFileScreenExceptions(
    Pointer<Utf16> path,
    int options,
    Pointer<Pointer<COMObject>> fileScreenExceptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Int32 options,
            Pointer<Pointer<COMObject>> fileScreenExceptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            int options,
            Pointer<Pointer<COMObject>> fileScreenExceptions,
          )>()(
        ptr.ref.lpVtbl,
        path,
        options,
        fileScreenExceptions,
      );

  int CreateFileScreenCollection(
    Pointer<Pointer<COMObject>> collection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> collection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> collection,
          )>()(
        ptr.ref.lpVtbl,
        collection,
      );
}

/// @nodoc
const CLSID_FsrmFileScreenManager = '{95941183-DB53-4C5F-B37B-7D0921CF9DC7}';

/// {@category com}
class FsrmFileScreenManager extends IFsrmFileScreenManager {
  FsrmFileScreenManager(Pointer<COMObject> ptr) : super(ptr);

  factory FsrmFileScreenManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FsrmFileScreenManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFsrmFileScreenManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FsrmFileScreenManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
