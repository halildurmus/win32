// IInkWordList.dart

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
import '../../foundation/structs.g.dart';
import '../../ui/tabletpc/IInkWordList.dart';

/// @nodoc
const IID_IInkWordList = '{76BA3491-CB2F-406B-9961-0E0C4CDAAEF2}';

/// {@category Interface}
/// {@category com}
class IInkWordList extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IInkWordList(Pointer<COMObject> ptr) : super(ptr);

  int AddWord(
    Pointer<Utf16> NewWord,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> NewWord,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> NewWord,
          )>()(
        ptr.ref.lpVtbl,
        NewWord,
      );

  int RemoveWord(
    Pointer<Utf16> RemoveWord,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> RemoveWord,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> RemoveWord,
          )>()(
        ptr.ref.lpVtbl,
        RemoveWord,
      );

  int Merge(
    Pointer<COMObject> MergeWordList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> MergeWordList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> MergeWordList,
          )>()(
        ptr.ref.lpVtbl,
        MergeWordList,
      );
}

/// @nodoc
const CLSID_InkWordList = '{9DE85094-F71F-44F1-8471-15A2FA76FCF3}';

/// {@category com}
class InkWordList extends IInkWordList {
  InkWordList(Pointer<COMObject> ptr) : super(ptr);

  factory InkWordList.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_InkWordList);
    final iid = calloc<GUID>()..ref.setGUID(IID_IInkWordList);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return InkWordList(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
