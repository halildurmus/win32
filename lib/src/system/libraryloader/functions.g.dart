// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../system/libraryloader/callbacks.g.dart';
import '../../system/libraryloader/structs.g.dart'; // -----------------------------------------------------------------------

// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

Pointer AddDllDirectory(
  Pointer<Utf16> NewDirectory,
) =>
    _AddDllDirectory(
      NewDirectory,
    );

late final _AddDllDirectory = _kernel32.lookupFunction<
    Pointer Function(
  Pointer<Utf16> NewDirectory,
),
    Pointer Function(
  Pointer<Utf16> NewDirectory,
)>('AddDllDirectory');

int BeginUpdateResource(
  Pointer<Utf16> pFileName,
  int bDeleteExistingResources,
) =>
    _BeginUpdateResource(
      pFileName,
      bDeleteExistingResources,
    );

late final _BeginUpdateResource = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> pFileName,
  Int32 bDeleteExistingResources,
),
    int Function(
  Pointer<Utf16> pFileName,
  int bDeleteExistingResources,
)>('BeginUpdateResourceW');

int DisableThreadLibraryCalls(
  int hLibModule,
) =>
    _DisableThreadLibraryCalls(
      hLibModule,
    );

late final _DisableThreadLibraryCalls = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hLibModule,
),
    int Function(
  int hLibModule,
)>('DisableThreadLibraryCalls');

int EndUpdateResource(
  int hUpdate,
  int fDiscard,
) =>
    _EndUpdateResource(
      hUpdate,
      fDiscard,
    );

late final _EndUpdateResource = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hUpdate,
  Int32 fDiscard,
),
    int Function(
  int hUpdate,
  int fDiscard,
)>('EndUpdateResourceW');

int EnumResourceLanguagesEx(
  int hModule,
  Pointer<Utf16> lpType,
  Pointer<Utf16> lpName,
  Pointer<NativeFunction<ENUMRESLANGPROCW>> lpEnumFunc,
  int lParam,
  int dwFlags,
  int LangId,
) =>
    _EnumResourceLanguagesEx(
      hModule,
      lpType,
      lpName,
      lpEnumFunc,
      lParam,
      dwFlags,
      LangId,
    );

late final _EnumResourceLanguagesEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hModule,
  Pointer<Utf16> lpType,
  Pointer<Utf16> lpName,
  Pointer<NativeFunction<ENUMRESLANGPROCW>> lpEnumFunc,
  IntPtr lParam,
  Uint32 dwFlags,
  Uint16 LangId,
),
    int Function(
  int hModule,
  Pointer<Utf16> lpType,
  Pointer<Utf16> lpName,
  Pointer<NativeFunction<ENUMRESLANGPROCW>> lpEnumFunc,
  int lParam,
  int dwFlags,
  int LangId,
)>('EnumResourceLanguagesExW');

int EnumResourceLanguages(
  int hModule,
  Pointer<Utf16> lpType,
  Pointer<Utf16> lpName,
  Pointer<NativeFunction<ENUMRESLANGPROCW>> lpEnumFunc,
  int lParam,
) =>
    _EnumResourceLanguages(
      hModule,
      lpType,
      lpName,
      lpEnumFunc,
      lParam,
    );

late final _EnumResourceLanguages = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hModule,
  Pointer<Utf16> lpType,
  Pointer<Utf16> lpName,
  Pointer<NativeFunction<ENUMRESLANGPROCW>> lpEnumFunc,
  IntPtr lParam,
),
    int Function(
  int hModule,
  Pointer<Utf16> lpType,
  Pointer<Utf16> lpName,
  Pointer<NativeFunction<ENUMRESLANGPROCW>> lpEnumFunc,
  int lParam,
)>('EnumResourceLanguagesW');

int EnumResourceNamesEx(
  int hModule,
  Pointer<Utf16> lpType,
  Pointer<NativeFunction<ENUMRESNAMEPROCW>> lpEnumFunc,
  int lParam,
  int dwFlags,
  int LangId,
) =>
    _EnumResourceNamesEx(
      hModule,
      lpType,
      lpEnumFunc,
      lParam,
      dwFlags,
      LangId,
    );

late final _EnumResourceNamesEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hModule,
  Pointer<Utf16> lpType,
  Pointer<NativeFunction<ENUMRESNAMEPROCW>> lpEnumFunc,
  IntPtr lParam,
  Uint32 dwFlags,
  Uint16 LangId,
),
    int Function(
  int hModule,
  Pointer<Utf16> lpType,
  Pointer<NativeFunction<ENUMRESNAMEPROCW>> lpEnumFunc,
  int lParam,
  int dwFlags,
  int LangId,
)>('EnumResourceNamesExW');

int EnumResourceNames(
  int hModule,
  Pointer<Utf16> lpType,
  Pointer<NativeFunction<ENUMRESNAMEPROCW>> lpEnumFunc,
  int lParam,
) =>
    _EnumResourceNames(
      hModule,
      lpType,
      lpEnumFunc,
      lParam,
    );

late final _EnumResourceNames = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hModule,
  Pointer<Utf16> lpType,
  Pointer<NativeFunction<ENUMRESNAMEPROCW>> lpEnumFunc,
  IntPtr lParam,
),
    int Function(
  int hModule,
  Pointer<Utf16> lpType,
  Pointer<NativeFunction<ENUMRESNAMEPROCW>> lpEnumFunc,
  int lParam,
)>('EnumResourceNamesW');

int EnumResourceTypesEx(
  int hModule,
  Pointer<NativeFunction<ENUMRESTYPEPROCW>> lpEnumFunc,
  int lParam,
  int dwFlags,
  int LangId,
) =>
    _EnumResourceTypesEx(
      hModule,
      lpEnumFunc,
      lParam,
      dwFlags,
      LangId,
    );

late final _EnumResourceTypesEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hModule,
  Pointer<NativeFunction<ENUMRESTYPEPROCW>> lpEnumFunc,
  IntPtr lParam,
  Uint32 dwFlags,
  Uint16 LangId,
),
    int Function(
  int hModule,
  Pointer<NativeFunction<ENUMRESTYPEPROCW>> lpEnumFunc,
  int lParam,
  int dwFlags,
  int LangId,
)>('EnumResourceTypesExW');

int EnumResourceTypes(
  int hModule,
  Pointer<NativeFunction<ENUMRESTYPEPROCW>> lpEnumFunc,
  int lParam,
) =>
    _EnumResourceTypes(
      hModule,
      lpEnumFunc,
      lParam,
    );

late final _EnumResourceTypes = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hModule,
  Pointer<NativeFunction<ENUMRESTYPEPROCW>> lpEnumFunc,
  IntPtr lParam,
),
    int Function(
  int hModule,
  Pointer<NativeFunction<ENUMRESTYPEPROCW>> lpEnumFunc,
  int lParam,
)>('EnumResourceTypesW');

int FindResourceEx(
  int hModule,
  Pointer<Utf16> lpType,
  Pointer<Utf16> lpName,
  int wLanguage,
) =>
    _FindResourceEx(
      hModule,
      lpType,
      lpName,
      wLanguage,
    );

late final _FindResourceEx = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hModule,
  Pointer<Utf16> lpType,
  Pointer<Utf16> lpName,
  Uint16 wLanguage,
),
    int Function(
  int hModule,
  Pointer<Utf16> lpType,
  Pointer<Utf16> lpName,
  int wLanguage,
)>('FindResourceExW');

int FindResource(
  int hModule,
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpType,
) =>
    _FindResource(
      hModule,
      lpName,
      lpType,
    );

late final _FindResource = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hModule,
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpType,
),
    int Function(
  int hModule,
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpType,
)>('FindResourceW');

int FreeLibrary(
  int hLibModule,
) =>
    _FreeLibrary(
      hLibModule,
    );

late final _FreeLibrary = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hLibModule,
),
    int Function(
  int hLibModule,
)>('FreeLibrary');

void FreeLibraryAndExitThread(
  int hLibModule,
  int dwExitCode,
) =>
    _FreeLibraryAndExitThread(
      hLibModule,
      dwExitCode,
    );

late final _FreeLibraryAndExitThread = _kernel32.lookupFunction<
    Void Function(
  IntPtr hLibModule,
  Uint32 dwExitCode,
),
    void Function(
  int hLibModule,
  int dwExitCode,
)>('FreeLibraryAndExitThread');

int FreeResource(
  int hResData,
) =>
    _FreeResource(
      hResData,
    );

late final _FreeResource = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hResData,
),
    int Function(
  int hResData,
)>('FreeResource');

int GetDllDirectory(
  int nBufferLength,
  Pointer<Utf16> lpBuffer,
) =>
    _GetDllDirectory(
      nBufferLength,
      lpBuffer,
    );

late final _GetDllDirectory = _kernel32.lookupFunction<
    Uint32 Function(
  Uint32 nBufferLength,
  Pointer<Utf16> lpBuffer,
),
    int Function(
  int nBufferLength,
  Pointer<Utf16> lpBuffer,
)>('GetDllDirectoryW');

int GetModuleFileName(
  int hModule,
  Pointer<Utf16> lpFilename,
  int nSize,
) =>
    _GetModuleFileName(
      hModule,
      lpFilename,
      nSize,
    );

late final _GetModuleFileName = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hModule,
  Pointer<Utf16> lpFilename,
  Uint32 nSize,
),
    int Function(
  int hModule,
  Pointer<Utf16> lpFilename,
  int nSize,
)>('GetModuleFileNameW');

int GetModuleHandleEx(
  int dwFlags,
  Pointer<Utf16> lpModuleName,
  Pointer<IntPtr> phModule,
) =>
    _GetModuleHandleEx(
      dwFlags,
      lpModuleName,
      phModule,
    );

late final _GetModuleHandleEx = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Utf16> lpModuleName,
  Pointer<IntPtr> phModule,
),
    int Function(
  int dwFlags,
  Pointer<Utf16> lpModuleName,
  Pointer<IntPtr> phModule,
)>('GetModuleHandleExW');

int GetModuleHandle(
  Pointer<Utf16> lpModuleName,
) =>
    _GetModuleHandle(
      lpModuleName,
    );

late final _GetModuleHandle = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpModuleName,
),
    int Function(
  Pointer<Utf16> lpModuleName,
)>('GetModuleHandleW');

Pointer GetProcAddress(
  int hModule,
  Pointer<Utf8> lpProcName,
) =>
    _GetProcAddress(
      hModule,
      lpProcName,
    );

late final _GetProcAddress = _kernel32.lookupFunction<
    Pointer Function(
  IntPtr hModule,
  Pointer<Utf8> lpProcName,
),
    Pointer Function(
  int hModule,
  Pointer<Utf8> lpProcName,
)>('GetProcAddress');

int LoadLibraryEx(
  Pointer<Utf16> lpLibFileName,
  int hFile,
  int dwFlags,
) =>
    _LoadLibraryEx(
      lpLibFileName,
      hFile,
      dwFlags,
    );

late final _LoadLibraryEx = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpLibFileName,
  IntPtr hFile,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> lpLibFileName,
  int hFile,
  int dwFlags,
)>('LoadLibraryExW');

int LoadLibrary(
  Pointer<Utf16> lpLibFileName,
) =>
    _LoadLibrary(
      lpLibFileName,
    );

late final _LoadLibrary = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpLibFileName,
),
    int Function(
  Pointer<Utf16> lpLibFileName,
)>('LoadLibraryW');

int LoadModule(
  Pointer<Utf8> lpModuleName,
  Pointer lpParameterBlock,
) =>
    _LoadModule(
      lpModuleName,
      lpParameterBlock,
    );

late final _LoadModule = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf8> lpModuleName,
  Pointer lpParameterBlock,
),
    int Function(
  Pointer<Utf8> lpModuleName,
  Pointer lpParameterBlock,
)>('LoadModule');

int LoadPackagedLibrary(
  Pointer<Utf16> lpwLibFileName,
  int Reserved,
) =>
    _LoadPackagedLibrary(
      lpwLibFileName,
      Reserved,
    );

late final _LoadPackagedLibrary = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpwLibFileName,
  Uint32 Reserved,
),
    int Function(
  Pointer<Utf16> lpwLibFileName,
  int Reserved,
)>('LoadPackagedLibrary');

int LoadResource(
  int hModule,
  int hResInfo,
) =>
    _LoadResource(
      hModule,
      hResInfo,
    );

late final _LoadResource = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hModule,
  IntPtr hResInfo,
),
    int Function(
  int hModule,
  int hResInfo,
)>('LoadResource');

Pointer LockResource(
  int hResData,
) =>
    _LockResource(
      hResData,
    );

late final _LockResource = _kernel32.lookupFunction<
    Pointer Function(
  IntPtr hResData,
),
    Pointer Function(
  int hResData,
)>('LockResource');

int RemoveDllDirectory(
  Pointer Cookie,
) =>
    _RemoveDllDirectory(
      Cookie,
    );

late final _RemoveDllDirectory = _kernel32.lookupFunction<
    Int32 Function(
  Pointer Cookie,
),
    int Function(
  Pointer Cookie,
)>('RemoveDllDirectory');

int SetDefaultDllDirectories(
  int DirectoryFlags,
) =>
    _SetDefaultDllDirectories(
      DirectoryFlags,
    );

late final _SetDefaultDllDirectories = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 DirectoryFlags,
),
    int Function(
  int DirectoryFlags,
)>('SetDefaultDllDirectories');

int SetDllDirectory(
  Pointer<Utf16> lpPathName,
) =>
    _SetDllDirectory(
      lpPathName,
    );

late final _SetDllDirectory = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpPathName,
),
    int Function(
  Pointer<Utf16> lpPathName,
)>('SetDllDirectoryW');

int SizeofResource(
  int hModule,
  int hResInfo,
) =>
    _SizeofResource(
      hModule,
      hResInfo,
    );

late final _SizeofResource = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hModule,
  IntPtr hResInfo,
),
    int Function(
  int hModule,
  int hResInfo,
)>('SizeofResource');

int UpdateResource(
  int hUpdate,
  Pointer<Utf16> lpType,
  Pointer<Utf16> lpName,
  int wLanguage,
  Pointer lpData,
  int cb,
) =>
    _UpdateResource(
      hUpdate,
      lpType,
      lpName,
      wLanguage,
      lpData,
      cb,
    );

late final _UpdateResource = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hUpdate,
  Pointer<Utf16> lpType,
  Pointer<Utf16> lpName,
  Uint16 wLanguage,
  Pointer lpData,
  Uint32 cb,
),
    int Function(
  int hUpdate,
  Pointer<Utf16> lpType,
  Pointer<Utf16> lpName,
  int wLanguage,
  Pointer lpData,
  int cb,
)>('UpdateResourceW');
