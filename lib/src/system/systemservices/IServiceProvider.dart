// IServiceProvider.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../structs.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';

/// @nodoc
const IID_IServiceProvider = '{6D5140C1-7436-11CE-8034-00AA006009FA}';

typedef _QueryService_Native = Int32 Function(Pointer obj,
    Pointer<GUID> guidService, Pointer<GUID> riid, Pointer<Pointer> ppvObject);
typedef _QueryService_Dart = int Function(Pointer obj,
    Pointer<GUID> guidService, Pointer<GUID> riid, Pointer<Pointer> ppvObject);

/// {@category Interface}
/// {@category com}
class IServiceProvider extends IUnknown {
  // vtable begins at 3, ends at 3

  IServiceProvider(Pointer<COMObject> ptr) : super(ptr);

  int QueryService(Pointer<GUID> guidService, Pointer<GUID> riid,
          Pointer<Pointer> ppvObject) =>
      ptr.ref.lpVtbl.value
              .elementAt(3)
              .cast<Pointer<NativeFunction<_QueryService_Native>>>()
              .value
              .asFunction<_QueryService_Dart>()(
          ptr.ref.lpVtbl, guidService, riid, ppvObject);
}
