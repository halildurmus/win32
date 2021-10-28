// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'com/constants.dart';
import 'enums.dart';
import 'methodimpls.dart';
import 'mixins/customattributes_mixin.dart';
import 'mixins/genericparams_mixin.dart';
import 'moduleref.dart';
import 'parameter.dart';
import 'pinvokemap.dart';
import 'scope.dart';
import 'type_aliases.dart';
import 'typedef.dart';
import 'typeidentifier.dart';
import 'utils/exception.dart';
import 'utils/typetuple.dart';

/// Specifies member access.
enum MemberAccess {
  /// Specifies that the member cannot be referenced.
  privateScope,

  /// Specifies that the member is accessible only by the parent type.
  private,

  /// Specifies that the member is accessible by subtypes only in this assembly.
  familyAndAssembly,

  /// Specifies that the member is accessibly by anyone in the assembly.
  assembly,

  /// Specifies that the member is accessible only by type and subtypes.
  family,

  /// Specifies that the member is accessible by derived classes and by other
  /// types in its assembly.
  familyOrAssembly,

  /// Specifies that the member is accessible by all types with access to the
  /// scope.
  public
}

/// Specifies virtual table layout.
enum VtableLayout {
  /// Specifies that the slot used for this method in the virtual table be
  /// reused. This is the default.
  reuseSlot,

  /// Specifies that the method always gets a new slot in the virtual table.
  newSlot
}

/// A method.
class Method extends TokenObject
    with CustomAttributesMixin, GenericParamsMixin {
  int implFlags;

  String name;
  List<Parameter> parameters = <Parameter>[];
  int relativeVirtualAddress;
  late Parameter returnType;
  Uint8List signatureBlob;

  int _attributes;
  int _parentToken;

  Method(Scope scope, int token, this._parentToken, this.name, this._attributes,
      this.signatureBlob, this.relativeVirtualAddress, this.implFlags)
      : super(scope, token) {
    _parseParameterNames();
    _parseSignatureBlob();
  }

  /// Creates a method object from a provided token.
  factory Method.fromToken(Scope scope, int token) {
    final ptkClass = calloc<mdTypeDef>();
    final szMethod = wsalloc(MAX_STRING_SIZE);
    final pchMethod = calloc<ULONG>();
    final pdwAttr = calloc<DWORD>();
    final ppvSigBlob = calloc<PCCOR_SIGNATURE>();
    final pcbSigBlob = calloc<ULONG>();
    final pulCodeRVA = calloc<ULONG>();
    final pdwImplFlags = calloc<DWORD>();

    try {
      final reader = scope.reader;
      final hr = reader.GetMethodProps(
          token,
          ptkClass,
          szMethod,
          MAX_STRING_SIZE,
          pchMethod,
          pdwAttr,
          ppvSigBlob,
          pcbSigBlob,
          pulCodeRVA,
          pdwImplFlags);

      if (SUCCEEDED(hr)) {
        final signature = ppvSigBlob.value.asTypedList(pcbSigBlob.value);
        return Method(scope, token, ptkClass.value, szMethod.toDartString(),
            pdwAttr.value, signature, pulCodeRVA.value, pdwImplFlags.value);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(ptkClass);
      free(szMethod);
      free(pchMethod);
      free(pdwAttr);
      free(ppvSigBlob);
      free(pcbSigBlob);
      free(pulCodeRVA);
      free(pdwImplFlags);
    }
  }

  @override
  String toString() => name;

  /// The method's parent type.
  TypeDef get parent => TypeDef.fromToken(scope, _parentToken);

  /// Returns information about the method's visibility / accessibility to other
  /// types.
  MemberAccess get memberAccess =>
      MemberAccess.values[_attributes & CorMethodAttr.mdMemberAccessMask];

  /// Returns true if the member is defined as part of the type rather than as a
  /// member of an instance.
  bool get isStatic =>
      _attributes & CorMethodAttr.mdStatic == CorMethodAttr.mdStatic;

  /// Returns true if the method cannot be overridden.
  bool get isFinal =>
      _attributes & CorMethodAttr.mdFinal == CorMethodAttr.mdFinal;

  /// Returns true if the method can be overridden.
  bool get isVirtual =>
      _attributes & CorMethodAttr.mdVirtual == CorMethodAttr.mdVirtual;

  /// Returns true if the method hides by name and signature, rather than just
  /// by name.
  bool get isHideBySig =>
      _attributes & CorMethodAttr.mdHideBySig == CorMethodAttr.mdHideBySig;

  /// Returns information about the vtable layout of this method.
  ///
  /// If `ReuseSlot`, the slot used for this method in the virtual table be
  /// reused. This is the default. If `NewSlot`, the method always gets a new
  /// slot in the virtual table.
  VtableLayout get vTableLayout {
    switch (_attributes & CorMethodAttr.mdVtableLayoutMask) {
      case CorMethodAttr.mdReuseSlot:
        return VtableLayout.reuseSlot;
      case CorMethodAttr.mdNewSlot:
        return VtableLayout.newSlot;
      default:
        throw WinmdException('Attribute missing vtable layout information');
    }
  }

  /// Returns true if the method can be overridden by the same types to which it
  /// is visible.
  bool get isCheckAccessOnOverride =>
      _attributes & CorMethodAttr.mdCheckAccessOnOverride ==
      CorMethodAttr.mdCheckAccessOnOverride;

  /// Returns true if the method is not implemented.
  bool get isAbstract =>
      _attributes & CorMethodAttr.mdAbstract == CorMethodAttr.mdAbstract;

  /// Returns true if the method is special; its name describes how.
  bool get isSpecialName =>
      _attributes & CorMethodAttr.mdSpecialName == CorMethodAttr.mdSpecialName;

  /// Returns true if the method implementation is forwarded using PInvoke.
  bool get isPinvokeImpl =>
      _attributes & CorMethodAttr.mdPinvokeImpl == CorMethodAttr.mdPinvokeImpl;

  /// Returns true if the method is a managed method exported to unmanaged code.
  bool get isUnmanagedExport =>
      _attributes & CorMethodAttr.mdUnmanagedExport ==
      CorMethodAttr.mdUnmanagedExport;

  /// Returns true if the common language runtime should check the encoding of
  /// the method name.
  bool get isRTSpecialName =>
      _attributes & CorMethodAttr.mdSpecialName == CorMethodAttr.mdSpecialName;

  /// Returns the P/Invoke mapping representation for this object.
  PinvokeMap get pinvokeMap => PinvokeMap.fromToken(scope, token);

  /// Implementation features for the method.
  MethodImplementationFeatures get implFeatures =>
      MethodImplementationFeatures(implFlags);

  /// Returns true if the method is a property getter
  bool get isGetProperty => isSpecialName && name.startsWith('get_');

  /// Returns true if the method is a property setter
  bool get isSetProperty => isSpecialName && name.startsWith('put_');

  /// Returns true if the method is a property getter or setter.
  bool get isProperty => isGetProperty | isSetProperty;

  /// Returns the module that contains the method.
  ModuleRef get module {
    final pdwMappingFlags = calloc<DWORD>();
    final szImportName = wsalloc(MAX_STRING_SIZE);
    final pchImportName = calloc<ULONG>();
    final ptkImportDLL = calloc<mdModuleRef>();
    try {
      final hr = reader.GetPinvokeMap(token, pdwMappingFlags, szImportName,
          MAX_STRING_SIZE, pchImportName, ptkImportDLL);
      if (SUCCEEDED(hr)) {
        return ModuleRef.fromToken(scope, ptkImportDLL.value);
      } else {
        throw COMException(hr);
      }
    } finally {
      free(pdwMappingFlags);
      free(szImportName);
      free(pchImportName);
      free(ptkImportDLL);
    }
  }

  /// Returns true if the method contains generic parameters.
  bool get hasGenericParameters => signatureBlob[0] & 0x10 == 0x10;

  /// Returns flags relating to the method calling convention.
  String get callingConvention {
    final retVal = StringBuffer();
    final cc = signatureBlob[0];

    retVal.write('default ');
    if (cc & 0x05 == 0x05) retVal.write('vararg ');
    if (cc & 0x10 == 0x10) retVal.write('generic ');
    if (cc & 0x20 == 0x20) retVal.write('instance ');
    if (cc & 0x40 == 0x40) retVal.write('explicit ');

    return retVal.toString();
  }

  /// Parses the parameters and return type for this method from the
  /// [signatureBlob], which is of type `MethodDefSig` (or `PropertySig`, if the
  /// method is a property getter). This is documented in §II.23.2.1 and
  /// §II.23.2.5 respectively.
  void _parseSignatureBlob() {
    // Win32 properties are declared as such, but are represented as
    // MethodDefSig objects
    if (isGetProperty && signatureBlob[0] != 0x20) {
      _parsePropertySig();
    } else {
      _parseMethodDefSig();
    }
  }

  /// Parse a property from the signature blob. Properties have the following
  /// format: [type | paramCount | customMod | type | param]
  ///
  /// `PropertySig` is defined in §II.23.2.5.
  void _parsePropertySig() {
    if (isGetProperty) {
      // Type should begin at index 2
      final typeIdentifier =
          TypeTuple.fromSignature(signatureBlob.sublist(2), scope)
              .typeIdentifier;
      returnType = Parameter.fromTypeIdentifier(scope, token, typeIdentifier);
    } else if (isSetProperty) {
      // set properties don't have a return type
      returnType = Parameter.fromVoid(scope, token);
    }
  }

  /// Parses the parameters and return type for this method from the
  /// [signatureBlob], which is of type `MethodDefSig`. This is documented in
  /// §II.23.2.1.
  ///
  /// This is of format:
  ///   [callConv | genParamCount | paramCount | retType | param...]
  void _parseMethodDefSig() {
    var paramsIndex = 0;

    // Strip off the header and the paramCount. We know the number and names of
    // the parameters already; we're simply mapping them to types here.
    var blobPtr = hasGenericParameters == false ? 2 : 3;

    // Windows Runtime emits a zero-th parameter for the return type. So move
    // that to the returnType and parse a type from the signature.
    if (parameters.isNotEmpty && parameters.first.sequence == 0) {
      // Parse return type
      returnType = parameters.first;
      parameters = parameters.sublist(1);
      final returnTypeTuple =
          TypeTuple.fromSignature(signatureBlob.sublist(blobPtr), scope);
      returnType.typeIdentifier = returnTypeTuple.typeIdentifier;
      blobPtr += returnTypeTuple.offsetLength;
    } else {
      // In Win32 metadata, EnumParams does not return a zero-th parameter even
      // if there is a return type. So we create a new returnType for it.
      final returnTypeTuple =
          TypeTuple.fromSignature(signatureBlob.sublist(blobPtr), scope);
      returnType = Parameter.fromTypeIdentifier(
          scope, token, returnTypeTuple.typeIdentifier);
      blobPtr += returnTypeTuple.offsetLength;
    }

    // Parse through the params section of MethodDefSig, and map each recovered
    // type to the corresponding parameter.
    while (paramsIndex < parameters.length) {
      final runtimeType =
          TypeTuple.fromSignature(signatureBlob.sublist(blobPtr), scope);
      blobPtr += runtimeType.offsetLength;

      if (runtimeType.typeIdentifier.baseType == BaseType.ArrayTypeModifier) {
        blobPtr += _parseArray(signatureBlob.sublist(blobPtr), paramsIndex) + 2;
        paramsIndex++; //we've added two parameters here
      } else {
        parameters[paramsIndex].typeIdentifier = runtimeType.typeIdentifier;
      }
      paramsIndex++;
    }
  }

  void _parseParameterNames() {
    final phEnum = calloc<HCORENUM>();
    final rParams = calloc<mdParamDef>();
    final pcTokens = calloc<ULONG>();

    try {
      var hr = reader.EnumParams(phEnum, token, rParams, 1, pcTokens);
      while (hr == S_OK) {
        final parameterToken = rParams.value;

        parameters.add(Parameter.fromToken(scope, parameterToken));
        hr = reader.EnumParams(phEnum, token, rParams, 1, pcTokens);
      }
    } finally {
      reader.CloseEnum(phEnum.value);
      free(phEnum);
      free(rParams);
      free(pcTokens);
    }
  }

  // Various projections do smart things to mask this into a single array
  // value. We're not that clever yet, so we project it in its raw state, which
  // means a little work here to ensure that it comes out right.
  int _parseArray(Uint8List sublist, int paramsIndex) {
    final typeTuple = TypeTuple.fromSignature(sublist.sublist(2), scope);

    parameters[paramsIndex].name = '__valueSize';
    parameters[paramsIndex].typeIdentifier.baseType =
        BaseType.PointerTypeModifier;
    parameters[paramsIndex].typeIdentifier.typeArg =
        TypeIdentifier(BaseType.Uint32);

    parameters.insert(paramsIndex + 1, Parameter.fromVoid(scope, token));
    parameters[paramsIndex + 1].name = 'value';
    parameters[paramsIndex + 1].typeIdentifier.baseType =
        BaseType.PointerTypeModifier;
    parameters[paramsIndex + 1].typeIdentifier.typeArg =
        typeTuple.typeIdentifier;

    return typeTuple.offsetLength;
  }
}
