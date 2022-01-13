// IHomeGroup.dart

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
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_IHomeGroup = '{7A3BD1D9-35A9-4FB3-A467-F48CAC35E2D0}';

/// {@category Interface}
/// {@category com}
class IHomeGroup extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IHomeGroup(Pointer<COMObject> ptr) : super(ptr);

  int IsMember(
    Pointer<Int32> member,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> member,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> member,
          )>()(
        ptr.ref.lpVtbl,
        member,
      );

  int ShowSharingWizard(
    int owner,
    Pointer<Int32> sharingchoices,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr owner,
            Pointer<Int32> sharingchoices,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int owner,
            Pointer<Int32> sharingchoices,
          )>()(
        ptr.ref.lpVtbl,
        owner,
        sharingchoices,
      );
}

/// @nodoc
const CLSID_HomeGroup = '{DE77BA04-3C92-4D11-A1A5-42352A53E0E3}';

/// {@category com}
class HomeGroup extends IHomeGroup {
  HomeGroup(Pointer<COMObject> ptr) : super(ptr);

  factory HomeGroup.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_HomeGroup);
    final iid = calloc<GUID>()..ref.setGUID(IID_IHomeGroup);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return HomeGroup(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
