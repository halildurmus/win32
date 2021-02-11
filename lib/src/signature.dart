import 'dart:typed_data';

import 'utils.dart';

// attr: [b4, d3, b1, e4]
// attr: [b8, d6, b1, e4, 99, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

class SignatureDecoder {
  final Uint8List signature;

  const SignatureDecoder(this.signature);

  UncompressedData corSigUncompressData(List<int> pBytes) {
    // Smallest -- one byte
    if ((pBytes[0] & 0x80) == 0x00) // 0??? ????
    {
      return UncompressedData(pBytes[0], 1);
    }
    // Medium -- two bytes
    else if ((pBytes[0] & 0xC0) == 0x80) // 10?? ????
    {
      if (pBytes.length < 2) {
        throw WinmdException('Bad signature');
      } else {
        return UncompressedData((pBytes[0] & 0x3f) << 8 | pBytes[1], 2);
      }
    }
    // Large -- four bytes
    else if ((pBytes[0] & 0xE0) == 0xC0) // 110? ????
    {
      if (pBytes.length < 4) {
        throw WinmdException('Bad signature');
      } else {
        return UncompressedData(
            (pBytes[0] & 0x1f) << 24 |
                (pBytes[1]) << 16 |
                (pBytes[2]) << 8 |
                (pBytes[3]),
            4);
      }
    } else // We don't recognize this encoding
    {
      throw WinmdException('Bad signature');
    }
  }
}
