// IDtcToXaHelperFactory.dart

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
import '../../system/distributedtransactioncoordinator/IDtcToXaHelper.dart';

/// @nodoc
const IID_IDtcToXaHelperFactory = '{A9861610-304A-11D1-9813-00A0C905416E}';

/// {@category Interface}
/// {@category com}
class IDtcToXaHelperFactory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDtcToXaHelperFactory(Pointer<COMObject> ptr) : super(ptr);

  int Create(
    Pointer<Utf8> pszDSN,
    Pointer<Utf8> pszClientDllName,
    Pointer<GUID> pguidRm,
    Pointer<Pointer<COMObject>> ppXaHelper,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pszDSN,
            Pointer<Utf8> pszClientDllName,
            Pointer<GUID> pguidRm,
            Pointer<Pointer<COMObject>> ppXaHelper,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pszDSN,
            Pointer<Utf8> pszClientDllName,
            Pointer<GUID> pguidRm,
            Pointer<Pointer<COMObject>> ppXaHelper,
          )>()(
        ptr.ref.lpVtbl,
        pszDSN,
        pszClientDllName,
        pguidRm,
        ppXaHelper,
      );
}
