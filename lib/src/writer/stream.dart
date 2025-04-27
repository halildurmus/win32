import 'dart:ffi';

const sectionAlignment = 4096;

final class BlobStreamHeader extends Struct {
  @Uint32()
  external int offset;

  @Uint32()
  external int size;

  @Array(8)
  external Array<Uint8> name;

  int get nextOffset => offset + size;
}

final class GuidStreamHeader extends Struct {
  @Uint32()
  external int offset;

  @Uint32()
  external int size;

  @Array(8)
  external Array<Uint8> name;

  int get nextOffset => offset + size;
}

final class StringStreamHeader extends Struct {
  @Uint32()
  external int offset;

  @Uint32()
  external int size;

  @Array(12)
  external Array<Uint8> name;

  int get nextOffset => offset + size;
}

final class TableStreamHeader extends Struct {
  @Uint32()
  external int offset;

  @Uint32()
  external int size;

  @Array(4)
  external Array<Uint8> name;

  int get nextOffset => offset + size;
}

final class UserStringStreamHeader extends Struct {
  @Uint32()
  external int offset;

  @Uint32()
  external int size;

  @Array(4)
  external Array<Uint8> name;

  int get nextOffset => offset + size;
}
