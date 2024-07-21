// iuri.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUri = '{a39ee748-6a27-4817-a6f2-13914bef5890}';

/// Exposes methods and properties used to parse and build Uniform Resource
/// Identifiers (URIs).
///
/// {@category com}
class IUri extends IUnknown {
  // vtable begins at 3, is 25 entries long.
  IUri(super.ptr);

  factory IUri.from(IUnknown interface) =>
      IUri(interface.toInterface(IID_IUri));

  int getPropertyBSTR(
          int uriProp, Pointer<Pointer<Utf16>> pbstrProperty, int dwFlags) =>
      (ptr.ref.vtable + 3)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Int32 uriProp,
                              Pointer<Pointer<Utf16>> pbstrProperty,
                              Uint32 dwFlags)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int uriProp,
                      Pointer<Pointer<Utf16>> pbstrProperty, int dwFlags)>()(
          ptr.ref.lpVtbl, uriProp, pbstrProperty, dwFlags);

  int getPropertyLength(
          int uriProp, Pointer<Uint32> pcchProperty, int dwFlags) =>
      (ptr.ref.vtable + 4)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Int32 uriProp,
                              Pointer<Uint32> pcchProperty, Uint32 dwFlags)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int uriProp,
                      Pointer<Uint32> pcchProperty, int dwFlags)>()(
          ptr.ref.lpVtbl, uriProp, pcchProperty, dwFlags);

  int getPropertyDWORD(int uriProp, Pointer<Uint32> pdwProperty, int dwFlags) =>
      (ptr.ref.vtable + 5)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Int32 uriProp,
                              Pointer<Uint32> pdwProperty, Uint32 dwFlags)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int uriProp,
                      Pointer<Uint32> pdwProperty, int dwFlags)>()(
          ptr.ref.lpVtbl, uriProp, pdwProperty, dwFlags);

  int hasProperty(
          int uriProp, Pointer<Int32> pfHasProperty) =>
      (ptr.ref.vtable + 6)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Int32 uriProp,
                              Pointer<Int32> pfHasProperty)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, int uriProp, Pointer<Int32> pfHasProperty)>()(
          ptr.ref.lpVtbl, uriProp, pfHasProperty);

  int getAbsoluteUri(Pointer<Pointer<Utf16>> pbstrAbsoluteUri) =>
      (ptr.ref.vtable + 7)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Pointer<Utf16>> pbstrAbsoluteUri)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Pointer<Utf16>> pbstrAbsoluteUri)>()(
          ptr.ref.lpVtbl, pbstrAbsoluteUri);

  int getAuthority(Pointer<Pointer<Utf16>> pbstrAuthority) => (ptr.ref.vtable +
              8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<Utf16>> pbstrAuthority)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> pbstrAuthority)>()(
      ptr.ref.lpVtbl, pbstrAuthority);

  int getDisplayUri(Pointer<Pointer<Utf16>> pbstrDisplayString) =>
      (ptr.ref.vtable + 9)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Pointer<Utf16>> pbstrDisplayString)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Pointer<Utf16>> pbstrDisplayString)>()(
          ptr.ref.lpVtbl, pbstrDisplayString);

  int getDomain(Pointer<Pointer<Utf16>> pbstrDomain) => (ptr.ref.vtable + 10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<Utf16>> pbstrDomain)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> pbstrDomain)>()(
      ptr.ref.lpVtbl, pbstrDomain);

  int getExtension(Pointer<Pointer<Utf16>> pbstrExtension) => (ptr.ref.vtable +
              11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<Utf16>> pbstrExtension)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> pbstrExtension)>()(
      ptr.ref.lpVtbl, pbstrExtension);

  int getFragment(Pointer<Pointer<Utf16>> pbstrFragment) => (ptr.ref.vtable +
              12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<Utf16>> pbstrFragment)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> pbstrFragment)>()(
      ptr.ref.lpVtbl, pbstrFragment);

  int getHost(Pointer<Pointer<Utf16>> pbstrHost) => (ptr.ref.vtable + 13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<Utf16>> pbstrHost)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> pbstrHost)>()(
      ptr.ref.lpVtbl, pbstrHost);

  int getPassword(Pointer<Pointer<Utf16>> pbstrPassword) => (ptr.ref.vtable +
              14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<Utf16>> pbstrPassword)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> pbstrPassword)>()(
      ptr.ref.lpVtbl, pbstrPassword);

  int getPath(Pointer<Pointer<Utf16>> pbstrPath) => (ptr.ref.vtable + 15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<Utf16>> pbstrPath)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> pbstrPath)>()(
      ptr.ref.lpVtbl, pbstrPath);

  int getPathAndQuery(Pointer<Pointer<Utf16>> pbstrPathAndQuery) =>
      (ptr.ref.vtable + 16)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Pointer<Utf16>> pbstrPathAndQuery)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Pointer<Utf16>> pbstrPathAndQuery)>()(
          ptr.ref.lpVtbl, pbstrPathAndQuery);

  int getQuery(Pointer<Pointer<Utf16>> pbstrQuery) => (ptr.ref.vtable + 17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<Utf16>> pbstrQuery)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> pbstrQuery)>()(
      ptr.ref.lpVtbl, pbstrQuery);

  int getRawUri(Pointer<Pointer<Utf16>> pbstrRawUri) => (ptr.ref.vtable + 18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<Utf16>> pbstrRawUri)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> pbstrRawUri)>()(
      ptr.ref.lpVtbl, pbstrRawUri);

  int getSchemeName(Pointer<Pointer<Utf16>> pbstrSchemeName) =>
      (ptr.ref.vtable + 19)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Pointer<Utf16>> pbstrSchemeName)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Pointer<Utf16>> pbstrSchemeName)>()(
          ptr.ref.lpVtbl, pbstrSchemeName);

  int getUserInfo(Pointer<Pointer<Utf16>> pbstrUserInfo) => (ptr.ref.vtable +
              20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<Utf16>> pbstrUserInfo)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> pbstrUserInfo)>()(
      ptr.ref.lpVtbl, pbstrUserInfo);

  int getUserName(Pointer<Pointer<Utf16>> pbstrUserName) => (ptr.ref.vtable +
              21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<Utf16>> pbstrUserName)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> pbstrUserName)>()(
      ptr.ref.lpVtbl, pbstrUserName);

  int getHostType(Pointer<Uint32> pdwHostType) => (ptr.ref.vtable + 22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Uint32> pdwHostType)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Uint32> pdwHostType)>()(
      ptr.ref.lpVtbl, pdwHostType);

  int getPort(Pointer<Uint32> pdwPort) => (ptr.ref.vtable + 23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Uint32> pdwPort)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Uint32> pdwPort)>()(
      ptr.ref.lpVtbl, pdwPort);

  int getScheme(Pointer<Uint32> pdwScheme) => (ptr.ref.vtable + 24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Uint32> pdwScheme)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Uint32> pdwScheme)>()(
      ptr.ref.lpVtbl, pdwScheme);

  int getZone(Pointer<Uint32> pdwZone) => (ptr.ref.vtable + 25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Uint32> pdwZone)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Uint32> pdwZone)>()(
      ptr.ref.lpVtbl, pdwZone);

  int getProperties(Pointer<Uint32> pdwFlags) => (ptr.ref.vtable + 26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Uint32> pdwFlags)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Uint32> pdwFlags)>()(
      ptr.ref.lpVtbl, pdwFlags);

  int isEqual(Pointer<COMObject> pUri, Pointer<Int32> pfEqual) =>
      (ptr.ref.vtable + 27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<COMObject> pUri,
                          Pointer<Int32> pfEqual)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<COMObject> pUri,
                  Pointer<Int32> pfEqual)>()(ptr.ref.lpVtbl, pUri, pfEqual);
}
