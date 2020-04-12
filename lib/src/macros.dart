// ((COLORREF)(((BYTE)(r)|((WORD)((BYTE)(g))<<8))|(((DWORD)(BYTE)(b))<<16)))
int RGB(int r, int g, int b) => r + (g << 8) + (b << 16);

// #define SUCCEEDED(hr) (((HRESULT)(hr)) >= 0)
bool SUCCEEDED(int result) => (result >= 0);

// #define FAILED(hr) (((HRESULT)(hr)) < 0)
bool FAILED(int result) => (result < 0);

// #define LOWORD(l)           ((WORD)(((DWORD_PTR)(l)) & 0xffff))
int LOWORD(int l) => l & 0xffff;

// #define HIWORD(l)           ((WORD)((((DWORD_PTR)(l)) >> 16) & 0xffff))
int HIWORD(int l) => (l >> 16) & 0xffff;

// #define LOBYTE(w)           ((BYTE)(((DWORD_PTR)(w)) & 0xff))
int LOBYTE(int w) => w & 0xff;

// #define HIBYTE(w)           ((BYTE)((((DWORD_PTR)(w)) >> 8) & 0xff))
int HIBYTE(int w) => (w >> 8) & 0xff;
