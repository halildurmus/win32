// ICredentialProviderUserArray.dart

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
import '../../ui/shell/ICredentialProviderUser.dart';

/// @nodoc
const IID_ICredentialProviderUserArray =
    '{90C119AE-0F18-4520-A1F1-114366A40FE8}';

/// {@category Interface}
/// {@category com}
class ICredentialProviderUserArray extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ICredentialProviderUserArray(Pointer<COMObject> ptr) : super(ptr);

  int SetProviderFilter(
    Pointer<GUID> guidProviderToFilterTo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidProviderToFilterTo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidProviderToFilterTo,
          )>()(
        ptr.ref.lpVtbl,
        guidProviderToFilterTo,
      );

  int GetAccountOptions(
    Pointer<Int32> credentialProviderAccountOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> credentialProviderAccountOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> credentialProviderAccountOptions,
          )>()(
        ptr.ref.lpVtbl,
        credentialProviderAccountOptions,
      );

  int GetCount(
    Pointer<Uint32> userCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> userCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> userCount,
          )>()(
        ptr.ref.lpVtbl,
        userCount,
      );

  int GetAt(
    int userIndex,
    Pointer<Pointer<COMObject>> user,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 userIndex,
            Pointer<Pointer<COMObject>> user,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int userIndex,
            Pointer<Pointer<COMObject>> user,
          )>()(
        ptr.ref.lpVtbl,
        userIndex,
        user,
      );
}
