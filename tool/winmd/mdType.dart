// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'constants.dart';
import 'enums.dart';
import 'mdMethod.dart';
import 'mdStore.dart';
import 'utils.dart';

/// Represents a TypeDef in the Windows Metadata file
class WinmdType {
  IMetaDataImport2 reader;

  int token;
  String typeName;
  int flags;
  int baseTypeToken;

  // Is the type a non-Windows Runtime type, such as System.Object or IInspectable?
  bool isWindowsRuntimeType = true;

  /// Is the type a class?
  bool get isClass =>
      (flags & CorTypeAttr.tdClass == CorTypeAttr.tdClass) &&
      (flags & CorTypeAttr.tdInterface != CorTypeAttr.tdInterface);

  /// Is the type an interface?
  bool get isInterface =>
      flags & CorTypeAttr.tdInterface == CorTypeAttr.tdInterface;

  /// Create a typedef.
  ///
  /// Typically, typedefs should be obtained from a [WinmdScope] object rather
  /// than being created directly.
  WinmdType(this.reader, this.isWindowsRuntimeType,
      [this.token = 0,
      this.typeName = '',
      this.flags = 0,
      this.baseTypeToken = 0]);

  /// Instantiate a typedef from a token.
  ///
  /// If the token is a TypeDef, it will be created directly; otherwise it will
  /// be retrieved by finding the scope that it comes from and returning a
  /// typedef from the new scope.
  factory WinmdType.fromToken(IMetaDataImport2 reader, int token) {
    if (tokenIsTypeRef(token)) {
      return WinmdType.fromTypeRef(reader, token);
    } else if (tokenIsTypeDef(token)) {
      return WinmdType.fromTypeDef(reader, token);
    } else {
      print('Unrecognized token $token');
      return WinmdType(reader, false);
    }
  }

  /// Instantiate a typedef from a TypeDef token.
  factory WinmdType.fromTypeDef(IMetaDataImport2 reader, int typeDefToken) {
    final nRead = allocate<Uint32>();
    final tdFlags = allocate<Uint32>();
    final baseClassToken = allocate<Uint32>();
    final typeName = allocate<Uint16>(count: 256).cast<Utf16>();

    try {
      final hr = reader.GetTypeDefProps(
          typeDefToken, typeName, 256, nRead, tdFlags, baseClassToken);

      if (SUCCEEDED(hr)) {
        return WinmdType(
            reader,
            true,
            typeDefToken,
            typeName.unpackString(nRead.value),
            tdFlags.value,
            baseClassToken.value);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(nRead);
      free(tdFlags);
      free(baseClassToken);
      free(typeName);
    }
  }

  /// Instantiate a typedef from a TypeRef token.
  ///
  /// Unless the TypeRef token is `IInspectable`, the COM parent interface for
  /// Windows Runtime classes, the TypeRef is used to obtain the host scope
  /// metadata file, from which the TypeDef can be found and returned.
  factory WinmdType.fromTypeRef(IMetaDataImport2 reader, int typeRefToken) {
    final ptkResolutionScope = allocate<Uint32>();
    final szName = allocate<Uint16>(count: 256).cast<Utf16>();
    final pchName = allocate<Uint32>();

    // a token like IInspectable is out of reach of GetTypeRefProps, since it is
    // a plain COM object. These objects are returned as system types.
    if (systemTokens.containsKey(typeRefToken)) {
      return WinmdType(reader, false, 0, systemTokens[typeRefToken]);
    }

    try {
      var hr = reader.GetTypeRefProps(
          typeRefToken, ptkResolutionScope, szName, 256, pchName);
      if (SUCCEEDED(hr)) {
        final typeName = szName.unpackString(pchName.value);

        // TODO: Can we shortcut something by using the resolution scope token?
        final newScope = WinmdStore.getScopeForType(typeName);

        if (newScope != null) {
          return newScope.findTypeDef(typeName);
        } else {
          throw WinmdException(
              'Unable to find scope for $typeName [${typeRefToken.toHexString(32)}]...');
        }
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(ptkResolutionScope);
      free(szName);
      free(pchName);
    }
  }

  /// Converts an individual interface into a type.
  WinmdType processInterfaceToken(int token) {
    final pClass = allocate<Uint32>();
    final ptkIface = allocate<Uint32>();

    try {
      final hr = reader.GetInterfaceImplProps(token, pClass, ptkIface);
      if (SUCCEEDED(hr)) {
        if (tokenIsTypeRef(ptkIface.value)) {
          return WinmdType.fromTypeRef(reader, ptkIface.value);
        } else if (tokenIsTypeDef(pClass.value)) {
          return WinmdType.fromTypeDef(reader, ptkIface.value);
        }
      }

      throw WindowsException(hr);
    } finally {
      free(pClass);
      free(ptkIface);
    }
  }

  /// Enumerate all interfaces that this type implements.
  List<WinmdType> get interfaces {
    final interfaces = <WinmdType>[];

    final phEnum = allocate<IntPtr>()..value = 0;
    final rImpls = allocate<Uint32>();
    final pcImpls = allocate<Uint32>();

    try {
      var hr = reader.EnumInterfaceImpls(phEnum, token, rImpls, 1, pcImpls);
      while (hr == S_OK) {
        final token = rImpls.value;

        interfaces.add(processInterfaceToken(token));
        hr = reader.EnumInterfaceImpls(phEnum, token, rImpls, 1, pcImpls);
      }
      return interfaces;
    } finally {
      reader.CloseEnum(phEnum.address);

      free(rImpls);
      free(pcImpls);

      // dispose phEnum crashes here, so leave it allocated
    }
  }

  /// Enumerate all methods contained within this type.
  List<WinmdMethod> get methods {
    final methods = <WinmdMethod>[];

    final phEnum = allocate<IntPtr>()..value = 0;
    final mdMethodDef = allocate<Uint32>();
    final pcTokens = allocate<Uint32>();

    try {
      var hr = reader.EnumMethods(phEnum, token, mdMethodDef, 1, pcTokens);
      while (hr == S_OK) {
        final token = mdMethodDef.value;

        methods.add(WinmdMethod.fromToken(reader, token));
        hr = reader.EnumMethods(phEnum, token, mdMethodDef, 1, pcTokens);
      }
      return methods;
    } finally {
      reader.CloseEnum(phEnum.address);

      free(mdMethodDef);
      free(pcTokens);
      // dispose phEnum crashes here, so leave it allocated
    }
  }

  /// Get a method matching the name, if one exists.
  ///
  /// Returns [null] if the method is not found.
  WinmdMethod findMethod(String methodName) {
    final szName = TEXT(methodName);
    final pmb = allocate<Uint32>();

    try {
      final hr = reader.FindMethod(token, szName, nullptr, 0, pmb);
      if (SUCCEEDED(hr)) {
        return WinmdMethod.fromToken(reader, pmb.value);
      } else if (hr == CLDB_E_RECORD_NOTFOUND) {
        return null;
      } else {
        throw COMException(hr);
      }
    } finally {
      free(szName);
      free(pmb);
    }
  }

  /// Gets the type referencing this type's superclass.
  WinmdType get parent =>
      token == 0 ? null : WinmdType.fromToken(reader, baseTypeToken);

  /// Get the GUID for this type.
  ///
  /// Returns null if a GUID couldn't be found.
  String get guid {
    final attributeName = TEXT('Windows.Foundation.Metadata.GuidAttribute');
    final ppData = allocate<IntPtr>();
    final pcbData = allocate<Uint32>();

    try {
      final hr = reader.GetCustomAttributeByName(
          token, attributeName, ppData, pcbData);
      if (SUCCEEDED(hr) && pcbData.value == 20) {
        final blob = Pointer<Uint8>.fromAddress(ppData.value);
        final guid = blob.elementAt(2).cast<GUID>();
        return guid.ref.toString();
      } else {
        return null;
      }
    } finally {
      free(attributeName);
      free(ppData);
      free(pcbData);
    }
  }
}
