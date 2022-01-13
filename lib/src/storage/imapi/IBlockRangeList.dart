// IBlockRangeList.dart

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

/// @nodoc
const IID_IBlockRangeList = '{B507CA26-2204-11DD-966A-001AA01BBC58}';

/// {@category Interface}
/// {@category com}
class IBlockRangeList extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IBlockRangeList(Pointer<COMObject> ptr) : super(ptr);

  Pointer<SAFEARRAY> get BlockRanges {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
const CLSID_BlockRangeList = '{B507CA28-2204-11DD-966A-001AA01BBC58}';

/// {@category com}
class BlockRangeList extends IBlockRangeList {
  BlockRangeList(Pointer<COMObject> ptr) : super(ptr);

  factory BlockRangeList.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_BlockRangeList);
    final iid = calloc<GUID>()..ref.setGUID(IID_IBlockRangeList);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return BlockRangeList(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
