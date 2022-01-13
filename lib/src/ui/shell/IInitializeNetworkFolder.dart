// IInitializeNetworkFolder.dart

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
import '../../ui/shell/common/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IInitializeNetworkFolder = '{6E0F9881-42A8-4F2A-97F8-8AF4E026D92D}';

/// {@category Interface}
/// {@category com}
class IInitializeNetworkFolder extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IInitializeNetworkFolder(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<ITEMIDLIST> pidl,
    Pointer<ITEMIDLIST> pidlTarget,
    int uDisplayType,
    Pointer<Utf16> pszResName,
    Pointer<Utf16> pszProvider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<ITEMIDLIST> pidlTarget,
            Uint32 uDisplayType,
            Pointer<Utf16> pszResName,
            Pointer<Utf16> pszProvider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<ITEMIDLIST> pidlTarget,
            int uDisplayType,
            Pointer<Utf16> pszResName,
            Pointer<Utf16> pszProvider,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        pidlTarget,
        uDisplayType,
        pszResName,
        pszProvider,
      );
}
