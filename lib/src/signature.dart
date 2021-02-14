import 'dart:typed_data';

import 'utils.dart';

// attr: [1, 0, 0, 0]

// AddFontResourceW
//   #prolog LPWSTR  // // // #nmd fld BOOL 16 IsNullTerminated                                                TRUE
// attr: [1, 0, 15, 0, 0, 0, 1, 0, 53, 02, 10, 49, 73, 4e, 75, 6c, 6c, 54, 65, 72, 6d, 69, 6e, 61, 74, 65, 64, 1]

// AddFontResourceA
// attr: [1, 0, 14, 0, 0, 0, 1, 0, 53, 02, 10, 49, 73, 4e, 75, 6c, 6c, 54, 65, 72, 6d, 69, 6e, 61, 74, 65, 64, 1]

// PolyBezier
//     #prolog  ARRAY// // // #nmd//fld U2  14 SizeParamIndex                                          0x0002
// attr: [1, 0, 2a, 0, 0, 0, 1, 0, 53, 06, 0e, 53, 69, 7a, 65, 50, 61, 72, 61, 6d, 49, 6e, 64, 65, 78, 2, 0]

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
