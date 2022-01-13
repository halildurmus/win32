// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugClient.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';

typedef DIGEST_FUNCTION = Int32 Function(
  Pointer refdata,
  Pointer<Uint8> pData,
  Uint32 dwLength,
);
typedef LPCALL_BACK_USER_INTERRUPT_ROUTINE = Uint32 Function();
typedef LPTOP_LEVEL_EXCEPTION_FILTER = Int32 Function(
  Pointer<EXCEPTION_POINTERS> ExceptionInfo,
);
typedef MINIDUMP_CALLBACK_ROUTINE = Int32 Function(
  Pointer CallbackParam,
  Pointer<MINIDUMP_CALLBACK_INPUT> CallbackInput,
  Pointer<MINIDUMP_CALLBACK_OUTPUT> CallbackOutput,
);
typedef PCOGETACTIVATIONSTATE = Int32 Function(
  GUID param0,
  Uint32 param1,
  Pointer<Uint32> param2,
);
typedef PCOGETCALLSTATE = Int32 Function(
  Int32 param0,
  Pointer<Uint32> param1,
);
typedef PDBGHELP_CREATE_USER_DUMP_CALLBACK = Int32 Function(
  Uint32 DataType,
  Pointer<Pointer> Data,
  Pointer<Uint32> DataLength,
  Pointer UserData,
);
typedef PDEBUG_EXTENSION_CALL = Int32 Function(
  Pointer<COMObject> Client,
  Pointer<Utf8> Args,
);
typedef PDEBUG_EXTENSION_CANUNLOAD = Int32 Function();
typedef PDEBUG_EXTENSION_INITIALIZE = Int32 Function(
  Pointer<Uint32> Version,
  Pointer<Uint32> Flags,
);
typedef PDEBUG_EXTENSION_KNOWN_STRUCT = Int32 Function(
  Uint32 Flags,
  Uint64 Offset,
  Pointer<Utf8> TypeName,
  Pointer<Utf8> Buffer,
  Pointer<Uint32> BufferChars,
);
typedef PDEBUG_EXTENSION_KNOWN_STRUCT_EX = Int32 Function(
  Pointer<COMObject> Client,
  Uint32 Flags,
  Uint64 Offset,
  Pointer<Utf8> TypeName,
  Pointer<Utf8> Buffer,
  Pointer<Uint32> BufferChars,
);
typedef PDEBUG_EXTENSION_NOTIFY = Void Function(
  Uint32 Notify,
  Uint64 Argument,
);
typedef PDEBUG_EXTENSION_PROVIDE_VALUE = Int32 Function(
  Pointer<COMObject> Client,
  Uint32 Flags,
  Pointer<Utf16> Name,
  Pointer<Uint64> Value,
  Pointer<Uint64> TypeModBase,
  Pointer<Uint32> TypeId,
  Pointer<Uint32> TypeFlags,
);
typedef PDEBUG_EXTENSION_QUERY_VALUE_NAMES = Int32 Function(
  Pointer<COMObject> Client,
  Uint32 Flags,
  Pointer<Utf16> Buffer,
  Uint32 BufferChars,
  Pointer<Uint32> BufferNeeded,
);
typedef PDEBUG_EXTENSION_UNINITIALIZE = Void Function();
typedef PDEBUG_EXTENSION_UNLOAD = Void Function();
typedef PDEBUG_STACK_PROVIDER_BEGINTHREADSTACKRECONSTRUCTION = Int32 Function(
  Uint32 StreamType,
  Pointer MiniDumpStreamBuffer,
  Uint32 BufferSize,
);
typedef PDEBUG_STACK_PROVIDER_ENDTHREADSTACKRECONSTRUCTION = Int32 Function();
typedef PDEBUG_STACK_PROVIDER_FREESTACKSYMFRAMES = Int32 Function(
  Pointer<STACK_SYM_FRAME_INFO> StackSymFrames,
);
typedef PDEBUG_STACK_PROVIDER_RECONSTRUCTSTACK = Int32 Function(
  Uint32 SystemThreadId,
  Pointer<DEBUG_STACK_FRAME_EX> NativeFrames,
  Uint32 CountNativeFrames,
  Pointer<Pointer<STACK_SYM_FRAME_INFO>> StackSymFrames,
  Pointer<Uint32> StackSymFramesFilled,
);
typedef PENUMDIRTREE_CALLBACK = Int32 Function(
  Pointer<Utf8> FilePath,
  Pointer CallerData,
);
typedef PENUMDIRTREE_CALLBACKW = Int32 Function(
  Pointer<Utf16> FilePath,
  Pointer CallerData,
);
typedef PENUMLOADED_MODULES_CALLBACK64 = Int32 Function(
  Pointer<Utf8> ModuleName,
  Uint64 ModuleBase,
  Uint32 ModuleSize,
  Pointer UserContext,
);
typedef PENUMLOADED_MODULES_CALLBACKW64 = Int32 Function(
  Pointer<Utf16> ModuleName,
  Uint64 ModuleBase,
  Uint32 ModuleSize,
  Pointer UserContext,
);
typedef PENUMSOURCEFILETOKENSCALLBACK = Int32 Function(
  Pointer token,
  IntPtr size,
);
typedef PFINDFILEINPATHCALLBACK = Int32 Function(
  Pointer<Utf8> filename,
  Pointer context,
);
typedef PFINDFILEINPATHCALLBACKW = Int32 Function(
  Pointer<Utf16> filename,
  Pointer context,
);
typedef PFIND_DEBUG_FILE_CALLBACK = Int32 Function(
  IntPtr FileHandle,
  Pointer<Utf8> FileName,
  Pointer CallerData,
);
typedef PFIND_DEBUG_FILE_CALLBACKW = Int32 Function(
  IntPtr FileHandle,
  Pointer<Utf16> FileName,
  Pointer CallerData,
);
typedef PFIND_EXE_FILE_CALLBACK = Int32 Function(
  IntPtr FileHandle,
  Pointer<Utf8> FileName,
  Pointer CallerData,
);
typedef PFIND_EXE_FILE_CALLBACKW = Int32 Function(
  IntPtr FileHandle,
  Pointer<Utf16> FileName,
  Pointer CallerData,
);
typedef PFUNCTION_TABLE_ACCESS_ROUTINE64 = Pointer Function(
  IntPtr ahProcess,
  Uint64 AddrBase,
);
typedef PGET_MODULE_BASE_ROUTINE64 = Uint64 Function(
  IntPtr hProcess,
  Uint64 Address,
);
typedef PGET_RUNTIME_FUNCTION_CALLBACK = Pointer<IMAGE_RUNTIME_FUNCTION_ENTRY>
    Function(
  Uint64 ControlPc,
  Pointer Context,
);
typedef PIMAGEHLP_STATUS_ROUTINE = Int32 Function(
  Int32 Reason,
  Pointer<Utf8> ImageName,
  Pointer<Utf8> DllName,
  IntPtr Va,
  IntPtr Parameter,
);
typedef PIMAGEHLP_STATUS_ROUTINE32 = Int32 Function(
  Int32 Reason,
  Pointer<Utf8> ImageName,
  Pointer<Utf8> DllName,
  Uint32 Va,
  IntPtr Parameter,
);
typedef PIMAGEHLP_STATUS_ROUTINE64 = Int32 Function(
  Int32 Reason,
  Pointer<Utf8> ImageName,
  Pointer<Utf8> DllName,
  Uint64 Va,
  IntPtr Parameter,
);
typedef PREAD_PROCESS_MEMORY_ROUTINE64 = Int32 Function(
  IntPtr hProcess,
  Uint64 qwBaseAddress,
  Pointer lpBuffer,
  Uint32 nSize,
  Pointer<Uint32> lpNumberOfBytesRead,
);
typedef PSYMBOLSERVERBYINDEXPROC = Int32 Function(
  Pointer<Utf8> param0,
  Pointer<Utf8> param1,
  Pointer<Utf8> param2,
  Pointer<Utf8> param3,
);
typedef PSYMBOLSERVERBYINDEXPROCW = Int32 Function(
  Pointer<Utf16> param0,
  Pointer<Utf16> param1,
  Pointer<Utf16> param2,
  Pointer<Utf16> param3,
);
typedef PSYMBOLSERVERCALLBACKPROC = Int32 Function(
  IntPtr action,
  Uint64 data,
  Uint64 context,
);
typedef PSYMBOLSERVERCLOSEPROC = Int32 Function();
typedef PSYMBOLSERVERDELTANAME = Int32 Function(
  Pointer<Utf8> param0,
  Pointer param1,
  Uint32 param2,
  Uint32 param3,
  Pointer param4,
  Uint32 param5,
  Uint32 param6,
  Pointer<Utf8> param7,
  IntPtr param8,
);
typedef PSYMBOLSERVERDELTANAMEW = Int32 Function(
  Pointer<Utf16> param0,
  Pointer param1,
  Uint32 param2,
  Uint32 param3,
  Pointer param4,
  Uint32 param5,
  Uint32 param6,
  Pointer<Utf16> param7,
  IntPtr param8,
);
typedef PSYMBOLSERVERGETINDEXSTRING = Int32 Function(
  Pointer param0,
  Uint32 param1,
  Uint32 param2,
  Pointer<Utf8> param3,
  IntPtr param4,
);
typedef PSYMBOLSERVERGETINDEXSTRINGW = Int32 Function(
  Pointer param0,
  Uint32 param1,
  Uint32 param2,
  Pointer<Utf16> param3,
  IntPtr param4,
);
typedef PSYMBOLSERVERGETOPTIONDATAPROC = Int32 Function(
  IntPtr param0,
  Pointer<Uint64> param1,
);
typedef PSYMBOLSERVERGETOPTIONSPROC = IntPtr Function();
typedef PSYMBOLSERVERGETSUPPLEMENT = Int32 Function(
  Pointer<Utf8> param0,
  Pointer<Utf8> param1,
  Pointer<Utf8> param2,
  Pointer<Utf8> param3,
  IntPtr param4,
);
typedef PSYMBOLSERVERGETSUPPLEMENTW = Int32 Function(
  Pointer<Utf16> param0,
  Pointer<Utf16> param1,
  Pointer<Utf16> param2,
  Pointer<Utf16> param3,
  IntPtr param4,
);
typedef PSYMBOLSERVERGETVERSION = Int32 Function(
  Pointer<API_VERSION> param0,
);
typedef PSYMBOLSERVERISSTORE = Int32 Function(
  Pointer<Utf8> param0,
);
typedef PSYMBOLSERVERISSTOREW = Int32 Function(
  Pointer<Utf16> param0,
);
typedef PSYMBOLSERVERMESSAGEPROC = Int32 Function(
  IntPtr action,
  Uint64 data,
  Uint64 context,
);
typedef PSYMBOLSERVEROPENPROC = Int32 Function();
typedef PSYMBOLSERVERPINGPROC = Int32 Function(
  Pointer<Utf8> param0,
);
typedef PSYMBOLSERVERPINGPROCW = Int32 Function(
  Pointer<Utf16> param0,
);
typedef PSYMBOLSERVERPINGPROCWEX = Int32 Function(
  Pointer<Utf16> param0,
);
typedef PSYMBOLSERVERPROC = Int32 Function(
  Pointer<Utf8> param0,
  Pointer<Utf8> param1,
  Pointer param2,
  Uint32 param3,
  Uint32 param4,
  Pointer<Utf8> param5,
);
typedef PSYMBOLSERVERPROCW = Int32 Function(
  Pointer<Utf16> param0,
  Pointer<Utf16> param1,
  Pointer param2,
  Uint32 param3,
  Uint32 param4,
  Pointer<Utf16> param5,
);
typedef PSYMBOLSERVERSETHTTPAUTHHEADER = Int32 Function(
  Pointer<Utf16> pszAuthHeader,
);
typedef PSYMBOLSERVERSETOPTIONSPROC = Int32 Function(
  IntPtr param0,
  Uint64 param1,
);
typedef PSYMBOLSERVERSETOPTIONSWPROC = Int32 Function(
  IntPtr param0,
  Uint64 param1,
);
typedef PSYMBOLSERVERSTOREFILE = Int32 Function(
  Pointer<Utf8> param0,
  Pointer<Utf8> param1,
  Pointer param2,
  Uint32 param3,
  Uint32 param4,
  Pointer<Utf8> param5,
  IntPtr param6,
  Uint32 param7,
);
typedef PSYMBOLSERVERSTOREFILEW = Int32 Function(
  Pointer<Utf16> param0,
  Pointer<Utf16> param1,
  Pointer param2,
  Uint32 param3,
  Uint32 param4,
  Pointer<Utf16> param5,
  IntPtr param6,
  Uint32 param7,
);
typedef PSYMBOLSERVERSTORESUPPLEMENT = Int32 Function(
  Pointer<Utf8> param0,
  Pointer<Utf8> param1,
  Pointer<Utf8> param2,
  Pointer<Utf8> param3,
  IntPtr param4,
  Uint32 param5,
);
typedef PSYMBOLSERVERSTORESUPPLEMENTW = Int32 Function(
  Pointer<Utf16> param0,
  Pointer<Utf16> param1,
  Pointer<Utf16> param2,
  Pointer<Utf16> param3,
  IntPtr param4,
  Uint32 param5,
);
typedef PSYMBOLSERVERVERSION = Uint32 Function();
typedef PSYMBOLSERVERWEXPROC = Int32 Function(
  Pointer<Utf16> param0,
  Pointer<Utf16> param1,
  Pointer param2,
  Uint32 param3,
  Uint32 param4,
  Pointer<Utf16> param5,
  Pointer<SYMSRV_EXTENDED_OUTPUT_DATA> param6,
);
typedef PSYMBOL_FUNCENTRY_CALLBACK = Pointer Function(
  IntPtr hProcess,
  Uint32 AddrBase,
  Pointer UserContext,
);
typedef PSYMBOL_FUNCENTRY_CALLBACK64 = Pointer Function(
  IntPtr hProcess,
  Uint64 AddrBase,
  Uint64 UserContext,
);
typedef PSYMBOL_REGISTERED_CALLBACK64 = Int32 Function(
  IntPtr hProcess,
  Uint32 ActionCode,
  Uint64 CallbackData,
  Uint64 UserContext,
);
typedef PSYM_DUMP_FIELD_CALLBACK = Uint32 Function(
  Pointer<FIELD_INFO> pField,
  Pointer UserContext,
);
typedef PSYM_ENUMERATESYMBOLS_CALLBACK = Int32 Function(
  Pointer<SYMBOL_INFO> pSymInfo,
  Uint32 SymbolSize,
  Pointer UserContext,
);
typedef PSYM_ENUMERATESYMBOLS_CALLBACKW = Int32 Function(
  Pointer<SYMBOL_INFO> pSymInfo,
  Uint32 SymbolSize,
  Pointer UserContext,
);
typedef PSYM_ENUMLINES_CALLBACK = Int32 Function(
  Pointer<SRCCODEINFO> LineInfo,
  Pointer UserContext,
);
typedef PSYM_ENUMLINES_CALLBACKW = Int32 Function(
  Pointer<SRCCODEINFO> LineInfo,
  Pointer UserContext,
);
typedef PSYM_ENUMMODULES_CALLBACK64 = Int32 Function(
  Pointer<Utf8> ModuleName,
  Uint64 BaseOfDll,
  Pointer UserContext,
);
typedef PSYM_ENUMMODULES_CALLBACKW64 = Int32 Function(
  Pointer<Utf16> ModuleName,
  Uint64 BaseOfDll,
  Pointer UserContext,
);
typedef PSYM_ENUMPROCESSES_CALLBACK = Int32 Function(
  IntPtr hProcess,
  Pointer UserContext,
);
typedef PSYM_ENUMSOURCEFILES_CALLBACK = Int32 Function(
  Pointer<SOURCEFILE> pSourceFile,
  Pointer UserContext,
);
typedef PSYM_ENUMSOURCEFILES_CALLBACKW = Int32 Function(
  Pointer<SOURCEFILE> pSourceFile,
  Pointer UserContext,
);
typedef PSYM_ENUMSYMBOLS_CALLBACK64 = Int32 Function(
  Pointer<Utf8> SymbolName,
  Uint64 SymbolAddress,
  Uint32 SymbolSize,
  Pointer UserContext,
);
typedef PSYM_ENUMSYMBOLS_CALLBACK64W = Int32 Function(
  Pointer<Utf16> SymbolName,
  Uint64 SymbolAddress,
  Uint32 SymbolSize,
  Pointer UserContext,
);
typedef PTRANSLATE_ADDRESS_ROUTINE64 = Uint64 Function(
  IntPtr hProcess,
  IntPtr hThread,
  Pointer<ADDRESS64> lpaddr,
);
typedef PVECTORED_EXCEPTION_HANDLER = Int32 Function(
  Pointer<EXCEPTION_POINTERS> ExceptionInfo,
);
typedef PWAITCHAINCALLBACK = Void Function(
  Pointer WctHandle,
  IntPtr Context,
  Uint32 CallbackStatus,
  Pointer<Uint32> NodeCount,
  Pointer<WAITCHAIN_NODE_INFO> NodeInfoArray,
  Pointer<Int32> IsCycle,
);
typedef PWINDBG_CHECK_CONTROL_C = Uint32 Function();
typedef PWINDBG_CHECK_VERSION = Uint32 Function();
typedef PWINDBG_DISASM = Uint32 Function(
  Pointer<IntPtr> lpOffset,
  Pointer<Utf8> lpBuffer,
  Uint32 fShowEffectiveAddress,
);
typedef PWINDBG_DISASM32 = Uint32 Function(
  Pointer<Uint32> lpOffset,
  Pointer<Utf8> lpBuffer,
  Uint32 fShowEffectiveAddress,
);
typedef PWINDBG_DISASM64 = Uint32 Function(
  Pointer<Uint64> lpOffset,
  Pointer<Utf8> lpBuffer,
  Uint32 fShowEffectiveAddress,
);
typedef PWINDBG_EXTENSION_API_VERSION = Pointer<EXT_API_VERSION> Function();
typedef PWINDBG_EXTENSION_DLL_INIT = Void Function(
  Pointer<WINDBG_EXTENSION_APIS> lpExtensionApis,
  Uint16 MajorVersion,
  Uint16 MinorVersion,
);
typedef PWINDBG_EXTENSION_DLL_INIT32 = Void Function(
  Pointer<WINDBG_EXTENSION_APIS32> lpExtensionApis,
  Uint16 MajorVersion,
  Uint16 MinorVersion,
);
typedef PWINDBG_EXTENSION_DLL_INIT64 = Void Function(
  Pointer<WINDBG_EXTENSION_APIS64> lpExtensionApis,
  Uint16 MajorVersion,
  Uint16 MinorVersion,
);
typedef PWINDBG_EXTENSION_ROUTINE = Void Function(
  IntPtr hCurrentProcess,
  IntPtr hCurrentThread,
  Uint32 dwCurrentPc,
  Uint32 dwProcessor,
  Pointer<Utf8> lpArgumentString,
);
typedef PWINDBG_EXTENSION_ROUTINE32 = Void Function(
  IntPtr hCurrentProcess,
  IntPtr hCurrentThread,
  Uint32 dwCurrentPc,
  Uint32 dwProcessor,
  Pointer<Utf8> lpArgumentString,
);
typedef PWINDBG_EXTENSION_ROUTINE64 = Void Function(
  IntPtr hCurrentProcess,
  IntPtr hCurrentThread,
  Uint64 dwCurrentPc,
  Uint32 dwProcessor,
  Pointer<Utf8> lpArgumentString,
);
typedef PWINDBG_GET_EXPRESSION = IntPtr Function(
  Pointer<Utf8> lpExpression,
);
typedef PWINDBG_GET_EXPRESSION32 = Uint32 Function(
  Pointer<Utf8> lpExpression,
);
typedef PWINDBG_GET_EXPRESSION64 = Uint64 Function(
  Pointer<Utf8> lpExpression,
);
typedef PWINDBG_GET_SYMBOL = Void Function(
  Pointer offset,
  Pointer<Utf8> pchBuffer,
  Pointer<IntPtr> pDisplacement,
);
typedef PWINDBG_GET_SYMBOL32 = Void Function(
  Uint32 offset,
  Pointer<Utf8> pchBuffer,
  Pointer<Uint32> pDisplacement,
);
typedef PWINDBG_GET_SYMBOL64 = Void Function(
  Uint64 offset,
  Pointer<Utf8> pchBuffer,
  Pointer<Uint64> pDisplacement,
);
typedef PWINDBG_GET_THREAD_CONTEXT_ROUTINE = Uint32 Function(
  Uint32 Processor,
  Pointer<CONTEXT> lpContext,
  Uint32 cbSizeOfContext,
);
typedef PWINDBG_IOCTL_ROUTINE = Uint32 Function(
  Uint16 IoctlType,
  Pointer lpvData,
  Uint32 cbSize,
);
typedef PWINDBG_OLDKD_EXTENSION_ROUTINE = Void Function(
  Uint32 dwCurrentPc,
  Pointer<WINDBG_OLDKD_EXTENSION_APIS> lpExtensionApis,
  Pointer<Utf8> lpArgumentString,
);
typedef PWINDBG_OLDKD_READ_PHYSICAL_MEMORY = Uint32 Function(
  Uint64 address,
  Pointer buffer,
  Uint32 count,
  Pointer<Uint32> bytesread,
);
typedef PWINDBG_OLDKD_WRITE_PHYSICAL_MEMORY = Uint32 Function(
  Uint64 address,
  Pointer buffer,
  Uint32 length,
  Pointer<Uint32> byteswritten,
);
typedef PWINDBG_OLD_EXTENSION_ROUTINE = Void Function(
  Uint32 dwCurrentPc,
  Pointer<WINDBG_EXTENSION_APIS> lpExtensionApis,
  Pointer<Utf8> lpArgumentString,
);
typedef PWINDBG_OUTPUT_ROUTINE = Void Function(
  Pointer<Utf8> lpFormat,
);
typedef PWINDBG_READ_PROCESS_MEMORY_ROUTINE = Uint32 Function(
  IntPtr offset,
  Pointer lpBuffer,
  Uint32 cb,
  Pointer<Uint32> lpcbBytesRead,
);
typedef PWINDBG_READ_PROCESS_MEMORY_ROUTINE32 = Uint32 Function(
  Uint32 offset,
  Pointer lpBuffer,
  Uint32 cb,
  Pointer<Uint32> lpcbBytesRead,
);
typedef PWINDBG_READ_PROCESS_MEMORY_ROUTINE64 = Uint32 Function(
  Uint64 offset,
  Pointer lpBuffer,
  Uint32 cb,
  Pointer<Uint32> lpcbBytesRead,
);
typedef PWINDBG_SET_THREAD_CONTEXT_ROUTINE = Uint32 Function(
  Uint32 Processor,
  Pointer<CONTEXT> lpContext,
  Uint32 cbSizeOfContext,
);
typedef PWINDBG_STACKTRACE_ROUTINE = Uint32 Function(
  Uint32 FramePointer,
  Uint32 StackPointer,
  Uint32 ProgramCounter,
  Pointer<EXTSTACKTRACE> StackFrames,
  Uint32 Frames,
);
typedef PWINDBG_STACKTRACE_ROUTINE32 = Uint32 Function(
  Uint32 FramePointer,
  Uint32 StackPointer,
  Uint32 ProgramCounter,
  Pointer<EXTSTACKTRACE32> StackFrames,
  Uint32 Frames,
);
typedef PWINDBG_STACKTRACE_ROUTINE64 = Uint32 Function(
  Uint64 FramePointer,
  Uint64 StackPointer,
  Uint64 ProgramCounter,
  Pointer<EXTSTACKTRACE64> StackFrames,
  Uint32 Frames,
);
typedef PWINDBG_WRITE_PROCESS_MEMORY_ROUTINE = Uint32 Function(
  IntPtr offset,
  Pointer lpBuffer,
  Uint32 cb,
  Pointer<Uint32> lpcbBytesWritten,
);
typedef PWINDBG_WRITE_PROCESS_MEMORY_ROUTINE32 = Uint32 Function(
  Uint32 offset,
  Pointer lpBuffer,
  Uint32 cb,
  Pointer<Uint32> lpcbBytesWritten,
);
typedef PWINDBG_WRITE_PROCESS_MEMORY_ROUTINE64 = Uint32 Function(
  Uint64 offset,
  Pointer lpBuffer,
  Uint32 cb,
  Pointer<Uint32> lpcbBytesWritten,
);
typedef SYMADDSOURCESTREAM = Int32 Function(
  IntPtr param0,
  Uint64 param1,
  Pointer<Utf8> param2,
  Pointer<Uint8> param3,
  IntPtr param4,
);
typedef WHEA_ERROR_SOURCE_CORRECT_DEVICE_DRIVER = Int32 Function(
  Pointer ErrorSourceDesc,
  Pointer<Uint32> MaximumSectionLength,
);
typedef WHEA_ERROR_SOURCE_INITIALIZE_DEVICE_DRIVER = Int32 Function(
  Pointer Context,
  Uint32 ErrorSourceId,
);
typedef WHEA_ERROR_SOURCE_UNINITIALIZE_DEVICE_DRIVER = Void Function(
  Pointer Context,
);
