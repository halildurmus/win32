import 'exception.dart';

/// A utility class for uncompressing data from the metadata blob heap.
///
/// The Blob heap is compressed, with an algorithm described in §II.23.2 of the
/// ECMA spec. The maximum encodable unsigned integer is 29 bits long,
/// 0x1FFFFFFF.
class UncompressedData {
  int data;
  int dataLength;

  UncompressedData(this.data, this.dataLength);

  // The code here is the Dart equivalent of CorSigUncompressedData() in cor.h.
  factory UncompressedData.fromBlob(List<int> rawBytes) {
    if (rawBytes.isEmpty) {
      throw WinmdException('Bad signature');
    }

    // Smallest -- one byte
    if ((rawBytes[0] & 0x80) == 0x00) // 0??? ????
    {
      final value = rawBytes[0];
      final length = 1;
      return UncompressedData(value, length);
    }

    // Medium -- two bytes
    else if ((rawBytes[0] & 0xC0) == 0x80) // 10?? ????
    {
      if (rawBytes.length < 2) {
        throw WinmdException('Bad signature');
      } else {
        final value = (rawBytes[0] & 0x3f) << 8 | rawBytes[1];
        final length = 2;
        return UncompressedData(value, length);
      }
    }

    // Large -- four bytes
    else if ((rawBytes[0] & 0xE0) == 0xC0) // 110? ????
    {
      if (rawBytes.length < 4) {
        throw WinmdException('Bad signature');
      } else {
        final value = (rawBytes[0] & 0x1f) << 24 |
            (rawBytes[1]) << 16 |
            (rawBytes[2]) << 8 |
            (rawBytes[3]);
        final length = 4;
        return UncompressedData(value, length);
      }
    } else // We don't recognize this encoding
    {
      throw WinmdException('Bad signature');
    }
  }
}
