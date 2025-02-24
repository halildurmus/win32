import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import 'models/models.dart';
import 'scope.dart';
import 'token_object.dart';
import 'type_aliases.dart';
import 'win32/win32.dart';

/// A member reference.
///
/// This class is used to declare a reference to a field or method which is
/// defined in another module or assembly. It represents either a `MethodRef` or
/// a `FieldRef`.
class MemberRef extends TokenObject {
  const MemberRef(
    super.scope,
    super.token,
    this.referencedToken,
    this.name,
    this.signatureBlob,
  );

  /// Creates a module object from a provided token.
  factory MemberRef.fromToken(Scope scope, int token) {
    assert(
      TokenType.fromToken(token) == TokenType.memberRef,
      'Token $token is not a MemberRef token',
    );

    return using((arena) {
      final ptk = arena<mdToken>();
      final szMember = arena<WCHAR>(stringBufferSize).cast<Utf16>();
      final pchMember = arena<ULONG>();
      final ppvSigBlob = arena<PCCOR_SIGNATURE>();
      final pcbSigBlob = arena<ULONG>();

      scope.reader.getMemberRefProps(
        token,
        ptk,
        szMember,
        stringBufferSize,
        pchMember,
        ppvSigBlob,
        pcbSigBlob,
      );

      return MemberRef(
        scope,
        token,
        ptk.value,
        szMember.toDartString(),
        ppvSigBlob.value.asTypedList(pcbSigBlob.value),
      );
    });
  }

  final int referencedToken;
  final String name;
  final Uint8List signatureBlob;

  @override
  String toString() => name;
}
