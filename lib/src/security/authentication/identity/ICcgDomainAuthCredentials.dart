// ICcgDomainAuthCredentials.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICcgDomainAuthCredentials = '{6ECDA518-2010-4437-8BC3-46E752B7B172}';

/// {@category Interface}
/// {@category com}
class ICcgDomainAuthCredentials extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ICcgDomainAuthCredentials(Pointer<COMObject> ptr) : super(ptr);

  int GetPasswordCredentials(
    Pointer<Utf16> pluginInput,
    Pointer<Pointer<Utf16>> domainName,
    Pointer<Pointer<Utf16>> username,
    Pointer<Pointer<Utf16>> password,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pluginInput,
            Pointer<Pointer<Utf16>> domainName,
            Pointer<Pointer<Utf16>> username,
            Pointer<Pointer<Utf16>> password,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pluginInput,
            Pointer<Pointer<Utf16>> domainName,
            Pointer<Pointer<Utf16>> username,
            Pointer<Pointer<Utf16>> password,
          )>()(
        ptr.ref.lpVtbl,
        pluginInput,
        domainName,
        username,
        password,
      );
}
