// IXmlResolver.dart

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
import '../../../specialTypes.dart';

/// @nodoc
const IID_IXmlResolver = '{7279FC82-709D-4095-B63D-69FE4B0D9030}';

/// {@category Interface}
/// {@category com}
class IXmlResolver extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IXmlResolver(Pointer<COMObject> ptr) : super(ptr);

  int ResolveUri(
    Pointer<Utf16> pwszBaseUri,
    Pointer<Utf16> pwszPublicIdentifier,
    Pointer<Utf16> pwszSystemIdentifier,
    Pointer<Pointer<COMObject>> ppResolvedInput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszBaseUri,
            Pointer<Utf16> pwszPublicIdentifier,
            Pointer<Utf16> pwszSystemIdentifier,
            Pointer<Pointer<COMObject>> ppResolvedInput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszBaseUri,
            Pointer<Utf16> pwszPublicIdentifier,
            Pointer<Utf16> pwszSystemIdentifier,
            Pointer<Pointer<COMObject>> ppResolvedInput,
          )>()(
        ptr.ref.lpVtbl,
        pwszBaseUri,
        pwszPublicIdentifier,
        pwszSystemIdentifier,
        ppResolvedInput,
      );
}
