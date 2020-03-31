// ((COLORREF)(((BYTE)(r)|((WORD)((BYTE)(g))<<8))|(((DWORD)(BYTE)(b))<<16)))
int RGB(int r, int g, int b) => r + (g << 8) + (b << 16);

// #define SUCCEEDED(hr) (((HRESULT)(hr)) >= 0)
bool SUCCEEDED(int result) => (result >= 0);

// #define FAILED(hr) (((HRESULT)(hr)) < 0)
bool FAILED(int result) => (result < 0);
