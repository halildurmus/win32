// IFsrmFileGroupManager.dart

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
import '../../storage/fileserverresourcemanager/IFsrmFileGroup.dart';
import '../../foundation/structs.g.dart';
import '../../storage/fileserverresourcemanager/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmCommittableCollection.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IFsrmFileGroupManager = '{426677D5-018C-485C-8A51-20B86D00BDC4}';

/// {@category Interface}
/// {@category com}
class IFsrmFileGroupManager extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  IFsrmFileGroupManager(Pointer<COMObject> ptr) : super(ptr);

  int CreateFileGroup(
    Pointer<Pointer<COMObject>> fileGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fileGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fileGroup,
          )>()(
        ptr.ref.lpVtbl,
        fileGroup,
      );

  int GetFileGroup(
    Pointer<Utf16> name,
    Pointer<Pointer<COMObject>> fileGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> fileGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> fileGroup,
          )>()(
        ptr.ref.lpVtbl,
        name,
        fileGroup,
      );

  int EnumFileGroups(
    int options,
    Pointer<Pointer<COMObject>> fileGroups,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 options,
            Pointer<Pointer<COMObject>> fileGroups,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
            Pointer<Pointer<COMObject>> fileGroups,
          )>()(
        ptr.ref.lpVtbl,
        options,
        fileGroups,
      );

  int ExportFileGroups(
    Pointer<VARIANT> fileGroupNamesArray,
    Pointer<Pointer<Utf16>> serializedFileGroups,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> fileGroupNamesArray,
            Pointer<Pointer<Utf16>> serializedFileGroups,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> fileGroupNamesArray,
            Pointer<Pointer<Utf16>> serializedFileGroups,
          )>()(
        ptr.ref.lpVtbl,
        fileGroupNamesArray,
        serializedFileGroups,
      );

  int ImportFileGroups(
    Pointer<Utf16> serializedFileGroups,
    Pointer<VARIANT> fileGroupNamesArray,
    Pointer<Pointer<COMObject>> fileGroups,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> serializedFileGroups,
            Pointer<VARIANT> fileGroupNamesArray,
            Pointer<Pointer<COMObject>> fileGroups,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> serializedFileGroups,
            Pointer<VARIANT> fileGroupNamesArray,
            Pointer<Pointer<COMObject>> fileGroups,
          )>()(
        ptr.ref.lpVtbl,
        serializedFileGroups,
        fileGroupNamesArray,
        fileGroups,
      );
}

/// @nodoc
const CLSID_FsrmFileGroupManager = '{8F1363F6-656F-4496-9226-13AECBD7718F}';

/// {@category com}
class FsrmFileGroupManager extends IFsrmFileGroupManager {
  FsrmFileGroupManager(Pointer<COMObject> ptr) : super(ptr);

  factory FsrmFileGroupManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FsrmFileGroupManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFsrmFileGroupManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FsrmFileGroupManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
