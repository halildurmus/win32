// IAuxInTuningSpace.dart

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

import '../../media/directshow/ITuningSpace.dart';

/// @nodoc
const IID_IAuxInTuningSpace = '{E48244B8-7E17-4F76-A763-5090FF1E2F30}';

/// {@category Interface}
/// {@category com}
class IAuxInTuningSpace extends ITuningSpace {
  // vtable begins at 26, is 0 entries long.
  IAuxInTuningSpace(Pointer<COMObject> ptr) : super(ptr);
}

/// @nodoc
const CLSID_AuxInTuningSpace = '{F9769A06-7ACA-4E39-9CFB-97BB35F0E77E}';

/// {@category com}
class AuxInTuningSpace extends IAuxInTuningSpace {
  AuxInTuningSpace(Pointer<COMObject> ptr) : super(ptr);

  factory AuxInTuningSpace.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_AuxInTuningSpace);
    final iid = calloc<GUID>()..ref.setGUID(IID_IAuxInTuningSpace);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return AuxInTuningSpace(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
