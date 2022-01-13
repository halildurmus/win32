// IMFNetProxyLocatorFactory.dart

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
import '../../media/mediafoundation/IMFNetProxyLocator.dart';

/// @nodoc
const IID_IMFNetProxyLocatorFactory = '{E9CD0384-A268-4BB4-82DE-658D53574D41}';

/// {@category Interface}
/// {@category com}
class IMFNetProxyLocatorFactory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFNetProxyLocatorFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateProxyLocator(
    Pointer<Utf16> pszProtocol,
    Pointer<Pointer<COMObject>> ppProxyLocator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszProtocol,
            Pointer<Pointer<COMObject>> ppProxyLocator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszProtocol,
            Pointer<Pointer<COMObject>> ppProxyLocator,
          )>()(
        ptr.ref.lpVtbl,
        pszProtocol,
        ppProxyLocator,
      );
}
