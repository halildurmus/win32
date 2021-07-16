// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../guid.dart';
import '../../combase.dart';
import '../../graphics/directdraw/IDirectDraw.dart';
import '../../system/com/IUnknown.dart';
import '../../graphics/directdraw/IDirectDrawClipper.dart';
import '../../graphics/directdraw/callbacks.g.dart';

// -----------------------------------------------------------------------
// DDRAW.dll
// -----------------------------------------------------------------------
final _ddraw = DynamicLibrary.open('DDRAW.dll');

int DirectDrawCreate(
        Pointer<GUID> lpGUID, Pointer<COMObject> lplpDD, COMObject pUnkOuter) =>
    _DirectDrawCreate(lpGUID, lplpDD, pUnkOuter);

late final _DirectDrawCreate = _ddraw.lookupFunction<
    Int32 Function(
        Pointer<GUID> lpGUID, Pointer<COMObject> lplpDD, COMObject pUnkOuter),
    int Function(Pointer<GUID> lpGUID, Pointer<COMObject> lplpDD,
        COMObject pUnkOuter)>('DirectDrawCreate');

int DirectDrawCreateClipper(
        int dwFlags, Pointer<COMObject> lplpDDClipper, COMObject pUnkOuter) =>
    _DirectDrawCreateClipper(dwFlags, lplpDDClipper, pUnkOuter);

late final _DirectDrawCreateClipper = _ddraw.lookupFunction<
    Int32 Function(
        Uint32 dwFlags, Pointer<COMObject> lplpDDClipper, COMObject pUnkOuter),
    int Function(int dwFlags, Pointer<COMObject> lplpDDClipper,
        COMObject pUnkOuter)>('DirectDrawCreateClipper');

int DirectDrawCreateEx(Pointer<GUID> lpGuid, Pointer<Pointer> lplpDD,
        Pointer<GUID> iid, COMObject pUnkOuter) =>
    _DirectDrawCreateEx(lpGuid, lplpDD, iid, pUnkOuter);

late final _DirectDrawCreateEx = _ddraw.lookupFunction<
    Int32 Function(Pointer<GUID> lpGuid, Pointer<Pointer> lplpDD,
        Pointer<GUID> iid, COMObject pUnkOuter),
    int Function(Pointer<GUID> lpGuid, Pointer<Pointer> lplpDD,
        Pointer<GUID> iid, COMObject pUnkOuter)>('DirectDrawCreateEx');

int DirectDrawEnumerateEx(
        Pointer<NativeFunction<LPDDENUMCALLBACKEXW>> lpCallback,
        Pointer lpContext,
        int dwFlags) =>
    _DirectDrawEnumerateEx(lpCallback, lpContext, dwFlags);

late final _DirectDrawEnumerateEx = _ddraw.lookupFunction<
    Int32 Function(Pointer<NativeFunction<LPDDENUMCALLBACKEXW>> lpCallback,
        Pointer lpContext, Uint32 dwFlags),
    int Function(Pointer<NativeFunction<LPDDENUMCALLBACKEXW>> lpCallback,
        Pointer lpContext, int dwFlags)>('DirectDrawEnumerateExW');

int DirectDrawEnumerate(Pointer<NativeFunction<LPDDENUMCALLBACKW>> lpCallback,
        Pointer lpContext) =>
    _DirectDrawEnumerate(lpCallback, lpContext);

late final _DirectDrawEnumerate = _ddraw.lookupFunction<
    Int32 Function(Pointer<NativeFunction<LPDDENUMCALLBACKW>> lpCallback,
        Pointer lpContext),
    int Function(Pointer<NativeFunction<LPDDENUMCALLBACKW>> lpCallback,
        Pointer lpContext)>('DirectDrawEnumerateW');
