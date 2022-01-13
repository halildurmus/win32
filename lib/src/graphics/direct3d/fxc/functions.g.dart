// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart';
import '../../../graphics/direct3d/structs.g.dart';
import '../../../graphics/direct3d/ID3DInclude.dart';
import '../../../graphics/direct3d/ID3DBlob.dart';
import '../../../graphics/direct3d/fxc/structs.g.dart';
import '../../../graphics/direct3d11/ID3D11FunctionLinkingGraph.dart';
import '../../../graphics/direct3d11/ID3D11Linker.dart';
import '../../../graphics/direct3d10/ID3D10Effect.dart';
import '../../../graphics/direct3d11/ID3D11Module.dart'; // -----------------------------------------------------------------------

// d3dcompiler_47.dll
// -----------------------------------------------------------------------
final _d3dcompiler_47 = DynamicLibrary.open('d3dcompiler_47.dll');

int D3DCompile(
  Pointer pSrcData,
  int SrcDataSize,
  Pointer<Utf8> pSourceName,
  Pointer<D3D_SHADER_MACRO> pDefines,
  Pointer<COMObject> pInclude,
  Pointer<Utf8> pEntrypoint,
  Pointer<Utf8> pTarget,
  int Flags1,
  int Flags2,
  Pointer<Pointer<COMObject>> ppCode,
  Pointer<Pointer<COMObject>> ppErrorMsgs,
) =>
    _D3DCompile(
      pSrcData,
      SrcDataSize,
      pSourceName,
      pDefines,
      pInclude,
      pEntrypoint,
      pTarget,
      Flags1,
      Flags2,
      ppCode,
      ppErrorMsgs,
    );

late final _D3DCompile = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSize,
  Pointer<Utf8> pSourceName,
  Pointer<D3D_SHADER_MACRO> pDefines,
  Pointer<COMObject> pInclude,
  Pointer<Utf8> pEntrypoint,
  Pointer<Utf8> pTarget,
  Uint32 Flags1,
  Uint32 Flags2,
  Pointer<Pointer<COMObject>> ppCode,
  Pointer<Pointer<COMObject>> ppErrorMsgs,
),
    int Function(
  Pointer pSrcData,
  int SrcDataSize,
  Pointer<Utf8> pSourceName,
  Pointer<D3D_SHADER_MACRO> pDefines,
  Pointer<COMObject> pInclude,
  Pointer<Utf8> pEntrypoint,
  Pointer<Utf8> pTarget,
  int Flags1,
  int Flags2,
  Pointer<Pointer<COMObject>> ppCode,
  Pointer<Pointer<COMObject>> ppErrorMsgs,
)>('D3DCompile');

int D3DCompile2(
  Pointer pSrcData,
  int SrcDataSize,
  Pointer<Utf8> pSourceName,
  Pointer<D3D_SHADER_MACRO> pDefines,
  Pointer<COMObject> pInclude,
  Pointer<Utf8> pEntrypoint,
  Pointer<Utf8> pTarget,
  int Flags1,
  int Flags2,
  int SecondaryDataFlags,
  Pointer pSecondaryData,
  int SecondaryDataSize,
  Pointer<Pointer<COMObject>> ppCode,
  Pointer<Pointer<COMObject>> ppErrorMsgs,
) =>
    _D3DCompile2(
      pSrcData,
      SrcDataSize,
      pSourceName,
      pDefines,
      pInclude,
      pEntrypoint,
      pTarget,
      Flags1,
      Flags2,
      SecondaryDataFlags,
      pSecondaryData,
      SecondaryDataSize,
      ppCode,
      ppErrorMsgs,
    );

late final _D3DCompile2 = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSize,
  Pointer<Utf8> pSourceName,
  Pointer<D3D_SHADER_MACRO> pDefines,
  Pointer<COMObject> pInclude,
  Pointer<Utf8> pEntrypoint,
  Pointer<Utf8> pTarget,
  Uint32 Flags1,
  Uint32 Flags2,
  Uint32 SecondaryDataFlags,
  Pointer pSecondaryData,
  IntPtr SecondaryDataSize,
  Pointer<Pointer<COMObject>> ppCode,
  Pointer<Pointer<COMObject>> ppErrorMsgs,
),
    int Function(
  Pointer pSrcData,
  int SrcDataSize,
  Pointer<Utf8> pSourceName,
  Pointer<D3D_SHADER_MACRO> pDefines,
  Pointer<COMObject> pInclude,
  Pointer<Utf8> pEntrypoint,
  Pointer<Utf8> pTarget,
  int Flags1,
  int Flags2,
  int SecondaryDataFlags,
  Pointer pSecondaryData,
  int SecondaryDataSize,
  Pointer<Pointer<COMObject>> ppCode,
  Pointer<Pointer<COMObject>> ppErrorMsgs,
)>('D3DCompile2');

int D3DCompileFromFile(
  Pointer<Utf16> pFileName,
  Pointer<D3D_SHADER_MACRO> pDefines,
  Pointer<COMObject> pInclude,
  Pointer<Utf8> pEntrypoint,
  Pointer<Utf8> pTarget,
  int Flags1,
  int Flags2,
  Pointer<Pointer<COMObject>> ppCode,
  Pointer<Pointer<COMObject>> ppErrorMsgs,
) =>
    _D3DCompileFromFile(
      pFileName,
      pDefines,
      pInclude,
      pEntrypoint,
      pTarget,
      Flags1,
      Flags2,
      ppCode,
      ppErrorMsgs,
    );

late final _D3DCompileFromFile = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pFileName,
  Pointer<D3D_SHADER_MACRO> pDefines,
  Pointer<COMObject> pInclude,
  Pointer<Utf8> pEntrypoint,
  Pointer<Utf8> pTarget,
  Uint32 Flags1,
  Uint32 Flags2,
  Pointer<Pointer<COMObject>> ppCode,
  Pointer<Pointer<COMObject>> ppErrorMsgs,
),
    int Function(
  Pointer<Utf16> pFileName,
  Pointer<D3D_SHADER_MACRO> pDefines,
  Pointer<COMObject> pInclude,
  Pointer<Utf8> pEntrypoint,
  Pointer<Utf8> pTarget,
  int Flags1,
  int Flags2,
  Pointer<Pointer<COMObject>> ppCode,
  Pointer<Pointer<COMObject>> ppErrorMsgs,
)>('D3DCompileFromFile');

int D3DCompressShaders(
  int uNumShaders,
  Pointer<D3D_SHADER_DATA> pShaderData,
  int uFlags,
  Pointer<Pointer<COMObject>> ppCompressedData,
) =>
    _D3DCompressShaders(
      uNumShaders,
      pShaderData,
      uFlags,
      ppCompressedData,
    );

late final _D3DCompressShaders = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Uint32 uNumShaders,
  Pointer<D3D_SHADER_DATA> pShaderData,
  Uint32 uFlags,
  Pointer<Pointer<COMObject>> ppCompressedData,
),
    int Function(
  int uNumShaders,
  Pointer<D3D_SHADER_DATA> pShaderData,
  int uFlags,
  Pointer<Pointer<COMObject>> ppCompressedData,
)>('D3DCompressShaders');

int D3DCreateBlob(
  int Size,
  Pointer<Pointer<COMObject>> ppBlob,
) =>
    _D3DCreateBlob(
      Size,
      ppBlob,
    );

late final _D3DCreateBlob = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  IntPtr Size,
  Pointer<Pointer<COMObject>> ppBlob,
),
    int Function(
  int Size,
  Pointer<Pointer<COMObject>> ppBlob,
)>('D3DCreateBlob');

int D3DCreateFunctionLinkingGraph(
  int uFlags,
  Pointer<Pointer<COMObject>> ppFunctionLinkingGraph,
) =>
    _D3DCreateFunctionLinkingGraph(
      uFlags,
      ppFunctionLinkingGraph,
    );

late final _D3DCreateFunctionLinkingGraph = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Uint32 uFlags,
  Pointer<Pointer<COMObject>> ppFunctionLinkingGraph,
),
    int Function(
  int uFlags,
  Pointer<Pointer<COMObject>> ppFunctionLinkingGraph,
)>('D3DCreateFunctionLinkingGraph');

int D3DCreateLinker(
  Pointer<Pointer<COMObject>> ppLinker,
) =>
    _D3DCreateLinker(
      ppLinker,
    );

late final _D3DCreateLinker = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppLinker,
),
    int Function(
  Pointer<Pointer<COMObject>> ppLinker,
)>('D3DCreateLinker');

int D3DDecompressShaders(
  Pointer pSrcData,
  int SrcDataSize,
  int uNumShaders,
  int uStartIndex,
  Pointer<Uint32> pIndices,
  int uFlags,
  Pointer<Pointer<COMObject>> ppShaders,
  Pointer<Uint32> pTotalShaders,
) =>
    _D3DDecompressShaders(
      pSrcData,
      SrcDataSize,
      uNumShaders,
      uStartIndex,
      pIndices,
      uFlags,
      ppShaders,
      pTotalShaders,
    );

late final _D3DDecompressShaders = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSize,
  Uint32 uNumShaders,
  Uint32 uStartIndex,
  Pointer<Uint32> pIndices,
  Uint32 uFlags,
  Pointer<Pointer<COMObject>> ppShaders,
  Pointer<Uint32> pTotalShaders,
),
    int Function(
  Pointer pSrcData,
  int SrcDataSize,
  int uNumShaders,
  int uStartIndex,
  Pointer<Uint32> pIndices,
  int uFlags,
  Pointer<Pointer<COMObject>> ppShaders,
  Pointer<Uint32> pTotalShaders,
)>('D3DDecompressShaders');

int D3DDisassemble(
  Pointer pSrcData,
  int SrcDataSize,
  int Flags,
  Pointer<Utf8> szComments,
  Pointer<Pointer<COMObject>> ppDisassembly,
) =>
    _D3DDisassemble(
      pSrcData,
      SrcDataSize,
      Flags,
      szComments,
      ppDisassembly,
    );

late final _D3DDisassemble = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSize,
  Uint32 Flags,
  Pointer<Utf8> szComments,
  Pointer<Pointer<COMObject>> ppDisassembly,
),
    int Function(
  Pointer pSrcData,
  int SrcDataSize,
  int Flags,
  Pointer<Utf8> szComments,
  Pointer<Pointer<COMObject>> ppDisassembly,
)>('D3DDisassemble');

int D3DDisassemble10Effect(
  Pointer<COMObject> pEffect,
  int Flags,
  Pointer<Pointer<COMObject>> ppDisassembly,
) =>
    _D3DDisassemble10Effect(
      pEffect,
      Flags,
      ppDisassembly,
    );

late final _D3DDisassemble10Effect = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pEffect,
  Uint32 Flags,
  Pointer<Pointer<COMObject>> ppDisassembly,
),
    int Function(
  Pointer<COMObject> pEffect,
  int Flags,
  Pointer<Pointer<COMObject>> ppDisassembly,
)>('D3DDisassemble10Effect');

int D3DDisassembleRegion(
  Pointer pSrcData,
  int SrcDataSize,
  int Flags,
  Pointer<Utf8> szComments,
  int StartByteOffset,
  int NumInsts,
  Pointer<IntPtr> pFinishByteOffset,
  Pointer<Pointer<COMObject>> ppDisassembly,
) =>
    _D3DDisassembleRegion(
      pSrcData,
      SrcDataSize,
      Flags,
      szComments,
      StartByteOffset,
      NumInsts,
      pFinishByteOffset,
      ppDisassembly,
    );

late final _D3DDisassembleRegion = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSize,
  Uint32 Flags,
  Pointer<Utf8> szComments,
  IntPtr StartByteOffset,
  IntPtr NumInsts,
  Pointer<IntPtr> pFinishByteOffset,
  Pointer<Pointer<COMObject>> ppDisassembly,
),
    int Function(
  Pointer pSrcData,
  int SrcDataSize,
  int Flags,
  Pointer<Utf8> szComments,
  int StartByteOffset,
  int NumInsts,
  Pointer<IntPtr> pFinishByteOffset,
  Pointer<Pointer<COMObject>> ppDisassembly,
)>('D3DDisassembleRegion');

int D3DGetBlobPart(
  Pointer pSrcData,
  int SrcDataSize,
  int Part,
  int Flags,
  Pointer<Pointer<COMObject>> ppPart,
) =>
    _D3DGetBlobPart(
      pSrcData,
      SrcDataSize,
      Part,
      Flags,
      ppPart,
    );

late final _D3DGetBlobPart = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSize,
  Int32 Part,
  Uint32 Flags,
  Pointer<Pointer<COMObject>> ppPart,
),
    int Function(
  Pointer pSrcData,
  int SrcDataSize,
  int Part,
  int Flags,
  Pointer<Pointer<COMObject>> ppPart,
)>('D3DGetBlobPart');

int D3DGetDebugInfo(
  Pointer pSrcData,
  int SrcDataSize,
  Pointer<Pointer<COMObject>> ppDebugInfo,
) =>
    _D3DGetDebugInfo(
      pSrcData,
      SrcDataSize,
      ppDebugInfo,
    );

late final _D3DGetDebugInfo = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSize,
  Pointer<Pointer<COMObject>> ppDebugInfo,
),
    int Function(
  Pointer pSrcData,
  int SrcDataSize,
  Pointer<Pointer<COMObject>> ppDebugInfo,
)>('D3DGetDebugInfo');

int D3DGetInputAndOutputSignatureBlob(
  Pointer pSrcData,
  int SrcDataSize,
  Pointer<Pointer<COMObject>> ppSignatureBlob,
) =>
    _D3DGetInputAndOutputSignatureBlob(
      pSrcData,
      SrcDataSize,
      ppSignatureBlob,
    );

late final _D3DGetInputAndOutputSignatureBlob = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSize,
  Pointer<Pointer<COMObject>> ppSignatureBlob,
),
    int Function(
  Pointer pSrcData,
  int SrcDataSize,
  Pointer<Pointer<COMObject>> ppSignatureBlob,
)>('D3DGetInputAndOutputSignatureBlob');

int D3DGetInputSignatureBlob(
  Pointer pSrcData,
  int SrcDataSize,
  Pointer<Pointer<COMObject>> ppSignatureBlob,
) =>
    _D3DGetInputSignatureBlob(
      pSrcData,
      SrcDataSize,
      ppSignatureBlob,
    );

late final _D3DGetInputSignatureBlob = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSize,
  Pointer<Pointer<COMObject>> ppSignatureBlob,
),
    int Function(
  Pointer pSrcData,
  int SrcDataSize,
  Pointer<Pointer<COMObject>> ppSignatureBlob,
)>('D3DGetInputSignatureBlob');

int D3DGetOutputSignatureBlob(
  Pointer pSrcData,
  int SrcDataSize,
  Pointer<Pointer<COMObject>> ppSignatureBlob,
) =>
    _D3DGetOutputSignatureBlob(
      pSrcData,
      SrcDataSize,
      ppSignatureBlob,
    );

late final _D3DGetOutputSignatureBlob = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSize,
  Pointer<Pointer<COMObject>> ppSignatureBlob,
),
    int Function(
  Pointer pSrcData,
  int SrcDataSize,
  Pointer<Pointer<COMObject>> ppSignatureBlob,
)>('D3DGetOutputSignatureBlob');

int D3DGetTraceInstructionOffsets(
  Pointer pSrcData,
  int SrcDataSize,
  int Flags,
  int StartInstIndex,
  int NumInsts,
  Pointer<IntPtr> pOffsets,
  Pointer<IntPtr> pTotalInsts,
) =>
    _D3DGetTraceInstructionOffsets(
      pSrcData,
      SrcDataSize,
      Flags,
      StartInstIndex,
      NumInsts,
      pOffsets,
      pTotalInsts,
    );

late final _D3DGetTraceInstructionOffsets = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSize,
  Uint32 Flags,
  IntPtr StartInstIndex,
  IntPtr NumInsts,
  Pointer<IntPtr> pOffsets,
  Pointer<IntPtr> pTotalInsts,
),
    int Function(
  Pointer pSrcData,
  int SrcDataSize,
  int Flags,
  int StartInstIndex,
  int NumInsts,
  Pointer<IntPtr> pOffsets,
  Pointer<IntPtr> pTotalInsts,
)>('D3DGetTraceInstructionOffsets');

int D3DLoadModule(
  Pointer pSrcData,
  int cbSrcDataSize,
  Pointer<Pointer<COMObject>> ppModule,
) =>
    _D3DLoadModule(
      pSrcData,
      cbSrcDataSize,
      ppModule,
    );

late final _D3DLoadModule = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer pSrcData,
  IntPtr cbSrcDataSize,
  Pointer<Pointer<COMObject>> ppModule,
),
    int Function(
  Pointer pSrcData,
  int cbSrcDataSize,
  Pointer<Pointer<COMObject>> ppModule,
)>('D3DLoadModule');

int D3DPreprocess(
  Pointer pSrcData,
  int SrcDataSize,
  Pointer<Utf8> pSourceName,
  Pointer<D3D_SHADER_MACRO> pDefines,
  Pointer<COMObject> pInclude,
  Pointer<Pointer<COMObject>> ppCodeText,
  Pointer<Pointer<COMObject>> ppErrorMsgs,
) =>
    _D3DPreprocess(
      pSrcData,
      SrcDataSize,
      pSourceName,
      pDefines,
      pInclude,
      ppCodeText,
      ppErrorMsgs,
    );

late final _D3DPreprocess = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSize,
  Pointer<Utf8> pSourceName,
  Pointer<D3D_SHADER_MACRO> pDefines,
  Pointer<COMObject> pInclude,
  Pointer<Pointer<COMObject>> ppCodeText,
  Pointer<Pointer<COMObject>> ppErrorMsgs,
),
    int Function(
  Pointer pSrcData,
  int SrcDataSize,
  Pointer<Utf8> pSourceName,
  Pointer<D3D_SHADER_MACRO> pDefines,
  Pointer<COMObject> pInclude,
  Pointer<Pointer<COMObject>> ppCodeText,
  Pointer<Pointer<COMObject>> ppErrorMsgs,
)>('D3DPreprocess');

int D3DReadFileToBlob(
  Pointer<Utf16> pFileName,
  Pointer<Pointer<COMObject>> ppContents,
) =>
    _D3DReadFileToBlob(
      pFileName,
      ppContents,
    );

late final _D3DReadFileToBlob = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pFileName,
  Pointer<Pointer<COMObject>> ppContents,
),
    int Function(
  Pointer<Utf16> pFileName,
  Pointer<Pointer<COMObject>> ppContents,
)>('D3DReadFileToBlob');

int D3DReflect(
  Pointer pSrcData,
  int SrcDataSize,
  Pointer<GUID> pInterface,
  Pointer<Pointer> ppReflector,
) =>
    _D3DReflect(
      pSrcData,
      SrcDataSize,
      pInterface,
      ppReflector,
    );

late final _D3DReflect = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSize,
  Pointer<GUID> pInterface,
  Pointer<Pointer> ppReflector,
),
    int Function(
  Pointer pSrcData,
  int SrcDataSize,
  Pointer<GUID> pInterface,
  Pointer<Pointer> ppReflector,
)>('D3DReflect');

int D3DReflectLibrary(
  Pointer pSrcData,
  int SrcDataSize,
  Pointer<GUID> riid,
  Pointer<Pointer> ppReflector,
) =>
    _D3DReflectLibrary(
      pSrcData,
      SrcDataSize,
      riid,
      ppReflector,
    );

late final _D3DReflectLibrary = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSize,
  Pointer<GUID> riid,
  Pointer<Pointer> ppReflector,
),
    int Function(
  Pointer pSrcData,
  int SrcDataSize,
  Pointer<GUID> riid,
  Pointer<Pointer> ppReflector,
)>('D3DReflectLibrary');

int D3DSetBlobPart(
  Pointer pSrcData,
  int SrcDataSize,
  int Part,
  int Flags,
  Pointer pPart,
  int PartSize,
  Pointer<Pointer<COMObject>> ppNewShader,
) =>
    _D3DSetBlobPart(
      pSrcData,
      SrcDataSize,
      Part,
      Flags,
      pPart,
      PartSize,
      ppNewShader,
    );

late final _D3DSetBlobPart = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSize,
  Int32 Part,
  Uint32 Flags,
  Pointer pPart,
  IntPtr PartSize,
  Pointer<Pointer<COMObject>> ppNewShader,
),
    int Function(
  Pointer pSrcData,
  int SrcDataSize,
  int Part,
  int Flags,
  Pointer pPart,
  int PartSize,
  Pointer<Pointer<COMObject>> ppNewShader,
)>('D3DSetBlobPart');

int D3DStripShader(
  Pointer pShaderBytecode,
  int BytecodeLength,
  int uStripFlags,
  Pointer<Pointer<COMObject>> ppStrippedBlob,
) =>
    _D3DStripShader(
      pShaderBytecode,
      BytecodeLength,
      uStripFlags,
      ppStrippedBlob,
    );

late final _D3DStripShader = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer pShaderBytecode,
  IntPtr BytecodeLength,
  Uint32 uStripFlags,
  Pointer<Pointer<COMObject>> ppStrippedBlob,
),
    int Function(
  Pointer pShaderBytecode,
  int BytecodeLength,
  int uStripFlags,
  Pointer<Pointer<COMObject>> ppStrippedBlob,
)>('D3DStripShader');

int D3DWriteBlobToFile(
  Pointer<COMObject> pBlob,
  Pointer<Utf16> pFileName,
  int bOverwrite,
) =>
    _D3DWriteBlobToFile(
      pBlob,
      pFileName,
      bOverwrite,
    );

late final _D3DWriteBlobToFile = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pBlob,
  Pointer<Utf16> pFileName,
  Int32 bOverwrite,
),
    int Function(
  Pointer<COMObject> pBlob,
  Pointer<Utf16> pFileName,
  int bOverwrite,
)>('D3DWriteBlobToFile');
