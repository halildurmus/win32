import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('MetadataType', () {
    test('VoidType', () {
      check(const VoidType().code).equals(ELEMENT_TYPE_VOID);
    });

    test('BoolType', () {
      check(const BoolType().code).equals(ELEMENT_TYPE_BOOLEAN);
    });

    test('CharType', () {
      check(const CharType().code).equals(ELEMENT_TYPE_CHAR);
    });

    test('Int8Type', () {
      check(const Int8Type().code).equals(ELEMENT_TYPE_I1);
    });

    test('Uint8Type', () {
      check(const Uint8Type().code).equals(ELEMENT_TYPE_U1);
    });

    test('Int16Type', () {
      check(const Int16Type().code).equals(ELEMENT_TYPE_I2);
    });

    test('Uint16Type', () {
      check(const Uint16Type().code).equals(ELEMENT_TYPE_U2);
    });

    test('Int32Type', () {
      check(const Int32Type().code).equals(ELEMENT_TYPE_I4);
    });

    test('Uint32Type', () {
      check(const Uint32Type().code).equals(ELEMENT_TYPE_U4);
    });

    test('Int64Type', () {
      check(const Int64Type().code).equals(ELEMENT_TYPE_I8);
    });

    test('Uint64Type', () {
      check(const Uint64Type().code).equals(ELEMENT_TYPE_U8);
    });

    test('Float32Type', () {
      check(const Float32Type().code).equals(ELEMENT_TYPE_R4);
    });

    test('Float64Type', () {
      check(const Float64Type().code).equals(ELEMENT_TYPE_R8);
    });

    test('IntPtrType', () {
      check(const IntPtrType().code).equals(ELEMENT_TYPE_I);
    });

    test('UintPtrType', () {
      check(const UintPtrType().code).equals(ELEMENT_TYPE_U);
    });

    group('NamedType', () {
      test(r'class$', () {
        const type1 = NamedType.class$(
          TypeName('Windows.Globalization', 'Calendar'),
        );
        const type2 = NamedType.class$(
          TypeName('Windows.Globalization', 'Calendar'),
        );
        const type3 = NamedType.class$(
          TypeName('Windows.Globalization', 'ICalendar'),
        );
        check(type1).isA<NamedClassType>();
        check(type1.code).equals(ELEMENT_TYPE_CLASS);
        check(type1).equals(type2);
        check(type1).not((it) => it.equals(type3));
      });

      test('value', () {
        const type1 = NamedType.value(TypeName('System', 'Object'));
        const type2 = NamedType.value(TypeName('System', 'Object'));
        const type3 = NamedType.value(TypeName('System', 'Guid'));
        check(type1).isA<NamedValueType>();
        check(type1.code).equals(ELEMENT_TYPE_VALUETYPE);
        check(type1).equals(type2);
        check(type1).not((it) => it.equals(type3));
      });
    });

    test('ObjectType', () {
      check(const ObjectType().code).equals(ELEMENT_TYPE_OBJECT);
    });

    test('StringType', () {
      check(const StringType().code).equals(ELEMENT_TYPE_STRING);
    });

    test('NullReferenceType', () {
      check(const NullReferenceType().code).equals(ELEMENT_TYPE_CLASS);
    });

    test('AttributeEnumType', () {
      check(const AttributeEnumType().code).equals(ELEMENT_TYPE_ENUM);
    });

    test('ArrayType', () {
      const type1 = ArrayType(Int32Type());
      const type2 = ArrayType(Int32Type());
      const type3 = ArrayType(Int64Type());
      check(type1.code).equals(ELEMENT_TYPE_SZARRAY);
      check(type1).equals(type2);
      check(type1).not((it) => it.equals(type3));
    });

    test('FixedArrayType', () {
      const type1 = FixedArrayType(Int32Type(), 3);
      const type2 = FixedArrayType(Int32Type(), 3);
      const type3 = FixedArrayType(Int64Type(), 3);
      check(type1.code).equals(ELEMENT_TYPE_ARRAY);
      check(type1).equals(type2);
      check(type1).not((it) => it.equals(type3));
    });

    test('ArrayReferenceType', () {
      const type1 = ArrayReferenceType(Int32Type());
      const type2 = ArrayReferenceType(Int32Type());
      const type3 = ArrayReferenceType(Int64Type());
      check(() => type1.code).throws<UnsupportedError>();
      check(type1).equals(type2);
      check(type1).not((it) => it.equals(type3));
    });

    test('ConstReferenceType', () {
      const type1 = ConstReferenceType(Int32Type());
      const type2 = ConstReferenceType(Int32Type());
      const type3 = ConstReferenceType(Int64Type());
      check(() => type1.code).throws<UnsupportedError>();
      check(type1).equals(type2);
      check(type1).not((it) => it.equals(type3));
    });

    test('GenericParameterType', () {
      const type1 = GenericParameterType(1);
      const type2 = GenericParameterType(1);
      const type3 = GenericParameterType(2);
      check(type1.code).equals(ELEMENT_TYPE_VAR);
      check(type1).equals(type2);
      check(type1).not((it) => it.equals(type3));
    });

    test('MutablePointerType', () {
      const type1 = MutablePointerType(Int32Type(), 3);
      const type2 = MutablePointerType(Int32Type(), 3);
      const type3 = MutablePointerType(Int64Type(), 3);
      check(() => type1.code).throws<UnsupportedError>();
      check(type1).equals(type2);
      check(type1).not((it) => it.equals(type3));
    });

    test('ConstPointerType', () {
      const type1 = ConstPointerType(Int32Type(), 3);
      const type2 = ConstPointerType(Int32Type(), 3);
      const type3 = ConstPointerType(Int64Type(), 3);
      check(() => type1.code).throws<UnsupportedError>();
      check(type1).equals(type2);
      check(type1).not((it) => it.equals(type3));
    });
  });
}
