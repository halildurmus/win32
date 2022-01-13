// ICredentialProviderUser.dart

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
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ICredentialProviderUser = '{13793285-3EA6-40FD-B420-15F47DA41FBB}';

/// {@category Interface}
/// {@category com}
class ICredentialProviderUser extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ICredentialProviderUser(Pointer<COMObject> ptr) : super(ptr);

  int GetSid(
    Pointer<Pointer<Utf16>> sid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> sid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> sid,
          )>()(
        ptr.ref.lpVtbl,
        sid,
      );

  int GetProviderID(
    Pointer<GUID> providerID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> providerID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> providerID,
          )>()(
        ptr.ref.lpVtbl,
        providerID,
      );

  int GetStringValue(
    Pointer<PROPERTYKEY> key,
    Pointer<Pointer<Utf16>> stringValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Pointer<Utf16>> stringValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Pointer<Utf16>> stringValue,
          )>()(
        ptr.ref.lpVtbl,
        key,
        stringValue,
      );

  int GetValue(
    Pointer<PROPERTYKEY> key,
    Pointer<PROPVARIANT> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> value,
          )>()(
        ptr.ref.lpVtbl,
        key,
        value,
      );
}
