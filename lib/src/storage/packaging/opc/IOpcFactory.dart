// IOpcFactory.dart

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
import '../../../storage/packaging/opc/IOpcUri.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/opc/IOpcPartUri.dart';
import '../../../storage/packaging/opc/structs.g.dart';
import '../../../security/structs.g.dart';
import '../../../system/com/IStream.dart';
import '../../../storage/packaging/opc/IOpcPackage.dart';
import '../../../storage/packaging/opc/IOpcDigitalSignatureManager.dart';

/// @nodoc
const IID_IOpcFactory = '{6D0B4446-CD73-4AB3-94F4-8CCDF6116154}';

/// {@category Interface}
/// {@category com}
class IOpcFactory extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IOpcFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreatePackageRootUri(
    Pointer<Pointer<COMObject>> rootUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> rootUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> rootUri,
          )>()(
        ptr.ref.lpVtbl,
        rootUri,
      );

  int CreatePartUri(
    Pointer<Utf16> pwzUri,
    Pointer<Pointer<COMObject>> partUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzUri,
            Pointer<Pointer<COMObject>> partUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzUri,
            Pointer<Pointer<COMObject>> partUri,
          )>()(
        ptr.ref.lpVtbl,
        pwzUri,
        partUri,
      );

  int CreateStreamOnFile(
    Pointer<Utf16> filename,
    int ioMode,
    Pointer<SECURITY_ATTRIBUTES> securityAttributes,
    int dwFlagsAndAttributes,
    Pointer<Pointer<COMObject>> stream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filename,
            Int32 ioMode,
            Pointer<SECURITY_ATTRIBUTES> securityAttributes,
            Uint32 dwFlagsAndAttributes,
            Pointer<Pointer<COMObject>> stream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filename,
            int ioMode,
            Pointer<SECURITY_ATTRIBUTES> securityAttributes,
            int dwFlagsAndAttributes,
            Pointer<Pointer<COMObject>> stream,
          )>()(
        ptr.ref.lpVtbl,
        filename,
        ioMode,
        securityAttributes,
        dwFlagsAndAttributes,
        stream,
      );

  int CreatePackage(
    Pointer<Pointer<COMObject>> package,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> package,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> package,
          )>()(
        ptr.ref.lpVtbl,
        package,
      );

  int ReadPackageFromStream(
    Pointer<COMObject> stream,
    int flags,
    Pointer<Pointer<COMObject>> package,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> stream,
            Uint32 flags,
            Pointer<Pointer<COMObject>> package,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> stream,
            int flags,
            Pointer<Pointer<COMObject>> package,
          )>()(
        ptr.ref.lpVtbl,
        stream,
        flags,
        package,
      );

  int WritePackageToStream(
    Pointer<COMObject> package,
    int flags,
    Pointer<COMObject> stream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> package,
            Uint32 flags,
            Pointer<COMObject> stream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> package,
            int flags,
            Pointer<COMObject> stream,
          )>()(
        ptr.ref.lpVtbl,
        package,
        flags,
        stream,
      );

  int CreateDigitalSignatureManager(
    Pointer<COMObject> package,
    Pointer<Pointer<COMObject>> signatureManager,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> package,
            Pointer<Pointer<COMObject>> signatureManager,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> package,
            Pointer<Pointer<COMObject>> signatureManager,
          )>()(
        ptr.ref.lpVtbl,
        package,
        signatureManager,
      );
}

/// @nodoc
const CLSID_OpcFactory = '{6B2D6BA0-9F3E-4F27-920B-313CC426A39E}';

/// {@category com}
class OpcFactory extends IOpcFactory {
  OpcFactory(Pointer<COMObject> ptr) : super(ptr);

  factory OpcFactory.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_OpcFactory);
    final iid = calloc<GUID>()..ref.setGUID(IID_IOpcFactory);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return OpcFactory(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
