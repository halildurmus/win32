import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../versions.dart';

void main() async {
  final index = await WindowsMetadataLoader().loadMultipleMetadata(
    packages: [WindowsMetadataPackage.win32, WindowsMetadataPackage.winrt],
    versions: const WindowsMetadataVersions(
      win32: win32MetadataVersion,
      winrt: winrtMetadataVersion,
    ),
  );

  Blob createBlob(List<int> bytes, {int readerIndex = 0}) =>
      Blob(index, readerIndex, Uint8List.fromList(bytes));

  group('Blob', () {
    test('operator [] provides indexed access', () {
      final blob = createBlob([10, 20, 30]);
      check(blob[0]).equals(10);
      check(blob[1]).equals(20);
      check(blob[2]).equals(30);
      check(blob.isEmpty).isFalse();
    });

    group('decode', () {
      test('decodes a TypeDefOrRef coded index', () {
        final blob = createBlob(
          CompressedInteger.encode(
            TypeDefOrRef.typeRef(TypeRef(index, 0, 8)).encode(),
          ),
        );
        final typeRef = blob.decode<TypeDefOrRef>();
        check(typeRef.namespace).equals('Windows.Win32.Foundation');
        check(typeRef.name).equals('HWND');
        check(blob.isEmpty).isTrue();
      });
    });

    group('tryRead', () {
      test('matches expected value', () {
        final blob = createBlob([0x2A]);
        check(blob.tryRead(0x2A)).isTrue();
        check(blob.isEmpty).isTrue();
      });

      test('fails if value mismatched', () {
        final blob = createBlob([0x2A]);
        check(blob.tryRead(0x2B)).isFalse();
        check(blob.isEmpty).isFalse();
      });
    });

    group('readMethodSignature', () {
      test('method with no parameters and void return', () {
        final blob = createBlob([
          0, // MethodCallFlags (default)
          0, // param count
          ELEMENT_TYPE_VOID, // return type
        ]);
        final sig = blob.readMethodSignature();
        check(sig.flags).equals(MethodCallFlags.default$);
        check(sig.returnType).isA<VoidType>();
        check(sig.types).isEmpty();
      });

      test('method with multiple parameters and HRESULT return', () {
        final blob = createBlob([
          MethodCallFlags.hasThis,
          3, // param count
          ELEMENT_TYPE_CLASS,
          ...CompressedInteger.encode(
            TypeDefOrRef.typeRef(TypeRef(index, 0, 29)).encode(),
          ),
          ELEMENT_TYPE_U1,
          ELEMENT_TYPE_BOOLEAN,
          ELEMENT_TYPE_STRING,
        ]);
        final sig = blob.readMethodSignature();
        check(sig.flags).equals(MethodCallFlags.hasThis);
        check(sig.returnType).equals(
          const NamedType(TypeName('Windows.Win32.Foundation', 'HRESULT')),
        );
        check(sig.types.length).equals(3);
        check(sig.types[0]).equals(const Uint8Type());
        check(sig.types[1]).equals(const BoolType());
        check(sig.types[2]).equals(const StringType());
      });
    });

    group('readModifiers', () {
      test('reads a single CMOD_OPT modifier', () {
        final blob = createBlob([
          ELEMENT_TYPE_CMOD_OPT,
          ...CompressedInteger.encode(
            TypeDefOrRef.typeRef(TypeRef(index, 0, 17)).encode(),
          ),
          ELEMENT_TYPE_VOID,
        ]);
        final modifiers = blob.readModifiers();
        check(modifiers.length).equals(1);
        check(
          modifiers[0].namespace,
        ).equals('Windows.Win32.Foundation.Metadata');
        check(modifiers[0].name).equals('NativeArrayInfoAttribute');
        check(blob.length).equals(1);
      });

      test('reads a single CMOD_REQD modifier', () {
        final blob = createBlob([
          ELEMENT_TYPE_CMOD_REQD,
          ...CompressedInteger.encode(
            TypeDefOrRef.typeRef(TypeRef(index, 0, 2)).encode(),
          ),
          ELEMENT_TYPE_VOID,
        ]);
        final modifiers = blob.readModifiers();
        check(modifiers.length).equals(1);
        check(modifiers[0].namespace).equals('System');
        check(modifiers[0].name).equals('Guid');
        check(blob.length).equals(1);
      });

      test('returns empty list if there are no CMOD modifiers', () {
        final blob = createBlob([ELEMENT_TYPE_VOID]);
        final modifiers = blob.readModifiers();
        check(modifiers).isEmpty();
        check(blob.length).equals(1);
      });
    });

    group('readPropertySignature', () {
      test('property with no parameters and Uint32 return', () {
        final blob = createBlob([
          0x8, // PROPERTY
          0, // param count
          ELEMENT_TYPE_U4, // return type
        ]);
        final sig = blob.readPropertySignature();
        check(sig.flags).equals(MethodCallFlags.default$);
        check(sig.returnType).isA<Uint32Type>();
        check(sig.types).isEmpty();
      });

      test('property with multiple parameters and HRESULT return', () {
        final blob = createBlob([
          0x8 | MethodCallFlags.hasThis, // PROPERTY | HASTHIS
          3, // param count
          ELEMENT_TYPE_CLASS,
          ...CompressedInteger.encode(
            TypeDefOrRef.typeRef(TypeRef(index, 0, 29)).encode(),
          ),
          ELEMENT_TYPE_U1,
          ELEMENT_TYPE_BOOLEAN,
          ELEMENT_TYPE_STRING,
        ]);
        final sig = blob.readPropertySignature();
        check(sig.flags).equals(MethodCallFlags.hasThis);
        check(sig.returnType).equals(
          const NamedType(TypeName('Windows.Win32.Foundation', 'HRESULT')),
        );
        check(sig.types.length).equals(3);
        check(sig.types[0]).equals(const Uint8Type());
        check(sig.types[1]).equals(const BoolType());
        check(sig.types[2]).equals(const StringType());
      });
    });

    group('readTypeCode', () {
      test('ELEMENT_TYPE_VOID', () {
        final blob = createBlob([ELEMENT_TYPE_VOID]);
        check(blob.readTypeCode()).equals(const VoidType());
        check(blob.isEmpty).isTrue();
      });

      test('ELEMENT_TYPE_BOOLEAN', () {
        final blob = createBlob([ELEMENT_TYPE_BOOLEAN]);
        check(blob.readTypeCode()).equals(const BoolType());
        check(blob.isEmpty).isTrue();
      });

      test('ELEMENT_TYPE_I1', () {
        final blob = createBlob([ELEMENT_TYPE_I1]);
        check(blob.readTypeCode()).equals(const Int8Type());
        check(blob.isEmpty).isTrue();
      });

      test('ELEMENT_TYPE_U1', () {
        final blob = createBlob([ELEMENT_TYPE_U1]);
        check(blob.readTypeCode()).equals(const Uint8Type());
        check(blob.isEmpty).isTrue();
      });

      test('ELEMENT_TYPE_I2', () {
        final blob = createBlob([ELEMENT_TYPE_I2]);
        check(blob.readTypeCode()).equals(const Int16Type());
        check(blob.isEmpty).isTrue();
      });

      test('ELEMENT_TYPE_U2', () {
        final blob = createBlob([ELEMENT_TYPE_U2]);
        check(blob.readTypeCode()).equals(const Uint16Type());
        check(blob.isEmpty).isTrue();
      });

      test('ELEMENT_TYPE_I4', () {
        final blob = createBlob([ELEMENT_TYPE_I4]);
        check(blob.readTypeCode()).equals(const Int32Type());
        check(blob.isEmpty).isTrue();
      });

      test('ELEMENT_TYPE_U4', () {
        final blob = createBlob([ELEMENT_TYPE_U4]);
        check(blob.readTypeCode()).equals(const Uint32Type());
        check(blob.isEmpty).isTrue();
      });

      test('ELEMENT_TYPE_I8', () {
        final blob = createBlob([ELEMENT_TYPE_I8]);
        check(blob.readTypeCode()).equals(const Int64Type());
        check(blob.isEmpty).isTrue();
      });
      test('ELEMENT_TYPE_U8', () {
        final blob = createBlob([ELEMENT_TYPE_U8]);
        check(blob.readTypeCode()).equals(const Uint64Type());
        check(blob.isEmpty).isTrue();
      });

      test('ELEMENT_TYPE_R4', () {
        final blob = createBlob([ELEMENT_TYPE_R4]);
        check(blob.readTypeCode()).equals(const Float32Type());
        check(blob.isEmpty).isTrue();
      });

      test('ELEMENT_TYPE_R8', () {
        final blob = createBlob([ELEMENT_TYPE_R8]);
        check(blob.readTypeCode()).equals(const Float64Type());
        check(blob.isEmpty).isTrue();
      });

      test('ELEMENT_TYPE_STRING', () {
        final blob = createBlob([ELEMENT_TYPE_STRING]);
        check(blob.readTypeCode()).equals(const StringType());
        check(blob.isEmpty).isTrue();
      });

      test('ELEMENT_TYPE_OBJECT', () {
        final blob = createBlob([ELEMENT_TYPE_OBJECT]);
        check(blob.readTypeCode()).equals(const ObjectType());
        check(blob.isEmpty).isTrue();
      });

      test('ELEMENT_TYPE_CLASS', () {
        final blob = createBlob([
          ELEMENT_TYPE_CLASS,
          ...CompressedInteger.encode(
            TypeDefOrRef.typeRef(TypeRef(index, 0, 3)).encode(),
          ),
        ]);
        check(blob.readTypeCode()).equals(
          const NamedType(
            TypeName('Windows.Win32.Foundation.Metadata', 'GuidAttribute'),
          ),
        );
        check(blob.isEmpty).isTrue();
      });

      test('ELEMENT_TYPE_VALUETYPE', () {
        final blob = createBlob([
          ELEMENT_TYPE_VALUETYPE,
          TypeDefOrRef.typeRef(TypeRef(index, 0, 2)).encode(),
        ]);
        check(
          blob.readTypeCode(),
        ).equals(const NamedType(TypeName('System', 'Guid')));
        check(blob.isEmpty).isTrue();
      });

      test('ELEMENT_TYPE_VAR', () {
        final blob = createBlob([ELEMENT_TYPE_VAR, 0]);
        check(blob.readTypeCode(const [Int32Type()])).equals(const Int32Type());
        check(blob.isEmpty).isTrue();
      });

      test('ELEMENT_TYPE_ARRAY', () {
        final blob = createBlob([
          ELEMENT_TYPE_ARRAY,
          ELEMENT_TYPE_U1, // Type
          1, // Rank
          1, // NumSizes
          16, // Size
          0, // NumLoBounds
        ]);
        check(
          blob.readTypeCode(),
        ).equals(const FixedArrayType(Uint8Type(), 16));
        check(blob.isEmpty).isTrue();
      });

      test('ELEMENT_TYPE_GENERICINST', () {
        final iMap = index.findSingleType(
          'Windows.Foundation.Collections',
          'IMap',
        );
        final blob = createBlob(readerIndex: 1, [
          ELEMENT_TYPE_GENERICINST,
          ELEMENT_TYPE_CLASS,
          ...CompressedInteger.encode(TypeDefOrRef.typeDef(iMap).encode()),
          2, // GenArgCount
          ELEMENT_TYPE_STRING,
          ELEMENT_TYPE_I4,
        ]);
        check(blob.readTypeCode()).equals(
          const NamedType(
            TypeName(
              'Windows.Foundation.Collections',
              'IMap`2',
              generics: [StringType(), Int32Type()],
            ),
          ),
        );
        check(blob.isEmpty).isTrue();
      });

      test('ELEMENT_TYPE_ENUM', () {
        final blob = createBlob([ELEMENT_TYPE_ENUM]);
        check(blob.readTypeCode()).equals(const AttributeEnumType());
        check(blob.isEmpty).isTrue();
      });
    });

    group('readTypeSignature', () {
      test('ArrayType', () {
        final blob = createBlob([ELEMENT_TYPE_SZARRAY, ELEMENT_TYPE_U1]);
        check(blob.readTypeSignature()).equals(const ArrayType(Uint8Type()));
      });

      test('FixedArrayType', () {
        final blob = createBlob([
          ELEMENT_TYPE_ARRAY,
          ELEMENT_TYPE_U1,
          1, // Rank
          1, // NumSizes
          16, // Size
          0, // NumLoBounds
        ]);
        check(
          blob.readTypeSignature(),
        ).equals(const FixedArrayType(Uint8Type(), 16));
      });

      test('ArrayType', () {
        final blob = createBlob([ELEMENT_TYPE_SZARRAY, ELEMENT_TYPE_U1]);
        check(blob.readTypeSignature()).equals(const ArrayType(Uint8Type()));
      });

      test('ArrayReferenceType', () {
        final blob = createBlob([
          ELEMENT_TYPE_BYREF,
          ELEMENT_TYPE_SZARRAY,
          ELEMENT_TYPE_U1,
        ]);
        check(
          blob.readTypeSignature(),
        ).equals(const ArrayReferenceType(Uint8Type()));
      });

      test('ConstReferenceType', () {
        final guid = index.typeRef.lastWhere(
          (e) => e.namespace == 'System' && e.name == 'Guid',
        );
        final isConst = index.typeRef.lastWhere(
          (e) =>
              e.namespace == 'System.Runtime.CompilerServices' &&
              e.name == 'IsConst',
        );
        final blob = createBlob(readerIndex: 1, [
          ELEMENT_TYPE_CMOD_OPT,
          ...CompressedInteger.encode(TypeDefOrRef.typeRef(isConst).encode()),
          ELEMENT_TYPE_BYREF,
          ELEMENT_TYPE_CLASS,
          ...CompressedInteger.encode(TypeDefOrRef.typeRef(guid).encode()),
        ]);
        check(blob.readTypeSignature()).equals(
          const ConstReferenceType(NamedType(TypeName('System', 'Guid'))),
        );
        check(blob.isEmpty).isTrue();
      });

      group('MutablePointerType', () {
        test('reads a pointer type signature', () {
          final blob = createBlob([ELEMENT_TYPE_PTR, ELEMENT_TYPE_U1]);
          check(
            blob.readTypeSignature(),
          ).equals(const MutablePointerType(Uint8Type(), 1));
          check(blob.isEmpty).isTrue();
        });

        test('reads a nested pointer type signature', () {
          final blob = createBlob([
            ELEMENT_TYPE_PTR,
            ELEMENT_TYPE_PTR,
            ELEMENT_TYPE_U1,
          ]);
          check(
            blob.readTypeSignature(),
          ).equals(const MutablePointerType(Uint8Type(), 2));
          check(blob.isEmpty).isTrue();
        });
      });

      test('VoidType', () {
        final blob = createBlob([ELEMENT_TYPE_VOID]);
        check(blob.readTypeSignature()).equals(const VoidType());
        check(blob.isEmpty).isTrue();
      });
    });

    group('readCompressed', () {
      test('1-byte encoding (< 0x80)', () {
        final blob = createBlob(CompressedInteger.encode(0x7F));
        check(blob.readCompressed()).equals(0x7F);
        check(blob.isEmpty).isTrue();
      });

      test('2-byte encoding (< 0x4000)', () {
        final blob = createBlob(CompressedInteger.encode(0x80));
        check(blob.readCompressed()).equals(0x80);
        check(blob.isEmpty).isTrue();
      });

      test('4-byte encoding (<= 0x1FFFFFFF)', () {
        final blob = createBlob(CompressedInteger.encode(0x4000));
        check(blob.readCompressed()).equals(0x4000);
        check(blob.isEmpty).isTrue();
      });
    });

    test('readBool returns correct values', () {
      final blob = createBlob([0x01, 0x00]);
      check(blob.readBool()).isTrue();
      check(blob.readBool()).isFalse();
      check(blob.isEmpty).isTrue();
    });

    test('readInt8 reads signed value correctly', () {
      final blob = createBlob([0x80]);
      check(blob.readInt8()).equals(-128);
      check(blob.isEmpty).isTrue();
    });

    test('readUint8 reads correctly', () {
      final blob = createBlob([0xFF]);
      check(blob.readUint8()).equals(255);
      check(blob.isEmpty).isTrue();
    });

    test('readInt16 reads correctly', () {
      final blob = createBlob([0xFC, 0xFF]);
      check(blob.readInt16()).equals(-4);
    });

    test('readUint16 reads correctly', () {
      final blob = createBlob([0x34, 0x12]);
      check(blob.readUint16()).equals(0x1234);
    });

    test('readInt32 reads correctly', () {
      final blob = createBlob([0x00, 0x00, 0x00, 0x80]);
      check(blob.readInt32()).equals(-2147483648);
    });

    test('readUint32 reads correctly', () {
      final blob = createBlob([0x78, 0x56, 0x34, 0x12]);
      check(blob.readUint32()).equals(0x12345678);
    });

    test('readInt64 reads correct value', () {
      const value = 9223372036854775807;
      final bytes = ByteData(8)..setInt64(0, value, Endian.little);
      final blob = createBlob(bytes.buffer.asUint8List());
      check(blob.readInt64()).equals(value);
      check(blob.isEmpty).isTrue();
    });

    test('readUint64 reads correct value', () {
      final value = BigInt.parse('18446744073709551615');
      final bytes = ByteData(8)..setUint64(0, value.toInt(), Endian.little);
      final blob = createBlob(bytes.buffer.asUint8List());
      check(blob.readUint64()).equals(value.toInt());
      check(blob.isEmpty).isTrue();
    });

    test('readFloat32 reads correctly', () {
      const value = 3.14;
      final bytes = ByteData(4)..setFloat32(0, value, Endian.little);
      final blob = createBlob(bytes.buffer.asUint8List());
      check(blob.readFloat32()).isCloseTo(value, 1e-6);
    });
    test('readFloat64 reads correct value', () {
      const value = 3.141592653589793;
      final bytes = ByteData(8)..setFloat64(0, value, Endian.little);
      final blob = createBlob(bytes.buffer.asUint8List());
      check(blob.readFloat64()).equals(value);
      check(blob.isEmpty).isTrue();
    });

    test('readUtf8 decodes string correctly', () {
      final blob = createBlob([0x05, ...'Hello'.codeUnits]);
      check(blob.readUtf8()).equals('Hello');
      check(blob.isEmpty).isTrue();
    });

    test('readUtf16 decodes string correctly', () {
      final blob = createBlob([0x48, 0x00, 0x69, 0x00]); // "Hi"
      check(blob.readUtf16()).equals('Hi');
      check(blob.isEmpty).isTrue();
    });
  });
}
