/// {@category Enum}
class ACTIVATE_KEYBOARD_LAYOUT_FLAGS {
  static const KLF_REORDER = 0x00000008;
  static const KLF_RESET = 0x40000000;
  static const KLF_SETFORPROCESS = 0x00000100;
  static const KLF_SHIFTLOCK = 0x00010000;
  static const KLF_ACTIVATE = 0x00000001;
  static const KLF_NOTELLSHELL = 0x00000080;
  static const KLF_REPLACELANG = 0x00000010;
  static const KLF_SUBSTITUTE_OK = 0x00000002;
}

/// {@category Enum}
class GET_MOUSE_MOVE_POINTS_EX_RESOLUTION {
  static const GMMP_USE_DISPLAY_POINTS = 0x00000001;
  static const GMMP_USE_HIGH_RESOLUTION_POINTS = 0x00000002;
}

/// {@category Enum}
class HOT_KEY_MODIFIERS {
  static const MOD_ALT = 0x00000001;
  static const MOD_CONTROL = 0x00000002;
  static const MOD_NOREPEAT = 0x00004000;
  static const MOD_SHIFT = 0x00000004;
  static const MOD_WIN = 0x00000008;
}

/// {@category Enum}
class INPUT_TYPE {
  static const INPUT_MOUSE = 0x00000000;
  static const INPUT_KEYBOARD = 0x00000001;
  static const INPUT_HARDWARE = 0x00000002;
}

/// {@category Enum}
class KEYBD_EVENT_FLAGS {
  static const KEYEVENTF_EXTENDEDKEY = 0x00000001;
  static const KEYEVENTF_KEYUP = 0x00000002;
  static const KEYEVENTF_SCANCODE = 0x00000008;
  static const KEYEVENTF_UNICODE = 0x00000004;
}

/// {@category Enum}
class MOUSE_EVENT_FLAGS {
  static const MOUSEEVENTF_ABSOLUTE = 0x00008000;
  static const MOUSEEVENTF_LEFTDOWN = 0x00000002;
  static const MOUSEEVENTF_LEFTUP = 0x00000004;
  static const MOUSEEVENTF_MIDDLEDOWN = 0x00000020;
  static const MOUSEEVENTF_MIDDLEUP = 0x00000040;
  static const MOUSEEVENTF_MOVE = 0x00000001;
  static const MOUSEEVENTF_RIGHTDOWN = 0x00000008;
  static const MOUSEEVENTF_RIGHTUP = 0x00000010;
  static const MOUSEEVENTF_WHEEL = 0x00000800;
  static const MOUSEEVENTF_XDOWN = 0x00000080;
  static const MOUSEEVENTF_XUP = 0x00000100;
  static const MOUSEEVENTF_HWHEEL = 0x00001000;
  static const MOUSEEVENTF_MOVE_NOCOALESCE = 0x00002000;
  static const MOUSEEVENTF_VIRTUALDESK = 0x00004000;
}

/// {@category Enum}
class TRACKMOUSEEVENT_FLAGS {
  static const TME_CANCEL = 0x80000000;
  static const TME_HOVER = 0x00000001;
  static const TME_LEAVE = 0x00000002;
  static const TME_NONCLIENT = 0x00000010;
  static const TME_QUERY = 0x40000000;
}

/// {@category Enum}
class VIRTUAL_KEY {
  static const VK_0 = 0x31020030;
  static const VK_1 = 0x32020031;
  static const VK_2 = 0x33020032;
  static const VK_3 = 0x34020033;
  static const VK_4 = 0x35020034;
  static const VK_5 = 0x36020035;
  static const VK_6 = 0x37020036;
  static const VK_7 = 0x38020037;
  static const VK_8 = 0x39020038;
  static const VK_9 = 0x41020039;
  static const VK_A = 0x42020041;
  static const VK_B = 0x43020042;
  static const VK_C = 0x44020043;
  static const VK_D = 0x45020044;
  static const VK_E = 0x46020045;
  static const VK_F = 0x47020046;
  static const VK_G = 0x48020047;
  static const VK_H = 0x49020048;
  static const VK_I = 0x4a020049;
  static const VK_J = 0x4b02004a;
  static const VK_K = 0x4c02004b;
  static const VK_L = 0x4d02004c;
  static const VK_M = 0x4e02004d;
  static const VK_N = 0x4f02004e;
  static const VK_O = 0x5002004f;
  static const VK_P = 0x51020050;
  static const VK_Q = 0x52020051;
  static const VK_R = 0x53020052;
  static const VK_S = 0x54020053;
  static const VK_T = 0x55020054;
  static const VK_U = 0x56020055;
  static const VK_V = 0x57020056;
  static const VK_W = 0x58020057;
  static const VK_X = 0x59020058;
  static const VK_Y = 0x5a020059;
  static const VK_Z = 0x1202005a;
  static const VK_LBUTTON = 0x02020001;
  static const VK_RBUTTON = 0x04020002;
  static const VK_CANCEL = 0x10020003;
  static const VK_MBUTTON = 0x00020004;
  static const VK_XBUTTON1 = 0x06020005;
  static const VK_XBUTTON2 = 0x20140006;
  static const VK_BACK = 0x09020008;
  static const VK_TAB = 0x0a020009;
  static const VK_CLEAR = 0x0d02000c;
  static const VK_RETURN = 0x0e02000d;
  static const VK_SHIFT = 0x05020010;
  static const VK_CONTROL = 0x06040011;
  static const VK_MENU = 0x13020012;
  static const VK_PAUSE = 0x14020013;
  static const VK_CAPITAL = 0x15020014;
  static const VK_KANA = 0x16020015;
  static const VK_HANGEUL = 0x16020015;
  static const VK_HANGUL = 0x16020015;
  static const VK_IME_ON = 0x17020016;
  static const VK_JUNJA = 0x18020017;
  static const VK_FINAL = 0x19020018;
  static const VK_HANJA = 0x1a020019;
  static const VK_KANJI = 0x1a020019;
  static const VK_IME_OFF = 0x1b02001a;
  static const VK_ESCAPE = 0x1c02001b;
  static const VK_CONVERT = 0x1d02001c;
  static const VK_NONCONVERT = 0x1e02001d;
  static const VK_ACCEPT = 0x1f02001e;
  static const VK_MODECHANGE = 0x2102001f;
  static const VK_SPACE = 0x40020020;
  static const VK_PRIOR = 0x22020021;
  static const VK_NEXT = 0x23020022;
  static const VK_END = 0x24020023;
  static const VK_HOME = 0x25020024;
  static const VK_LEFT = 0x26020025;
  static const VK_UP = 0x27020026;
  static const VK_RIGHT = 0x28020027;
  static const VK_DOWN = 0x29020028;
  static const VK_SELECT = 0x2a020029;
  static const VK_PRINT = 0x2b02002a;
  static const VK_EXECUTE = 0x2c02002b;
  static const VK_SNAPSHOT = 0x2d02002c;
  static const VK_INSERT = 0x2e02002d;
  static const VK_DELETE = 0x2f02002e;
  static const VK_HELP = 0x5b02002f;
  static const VK_LWIN = 0x5c02005b;
  static const VK_RWIN = 0x5d02005c;
  static const VK_APPS = 0x5f02005d;
  static const VK_SLEEP = 0x6002005f;
  static const VK_NUMPAD0 = 0x61020060;
  static const VK_NUMPAD1 = 0x62020061;
  static const VK_NUMPAD2 = 0x63020062;
  static const VK_NUMPAD3 = 0x64020063;
  static const VK_NUMPAD4 = 0x65020064;
  static const VK_NUMPAD5 = 0x66020065;
  static const VK_NUMPAD6 = 0x67020066;
  static const VK_NUMPAD7 = 0x68020067;
  static const VK_NUMPAD8 = 0x69020068;
  static const VK_NUMPAD9 = 0x6a020069;
  static const VK_MULTIPLY = 0x6b02006a;
  static const VK_ADD = 0x6c02006b;
  static const VK_SEPARATOR = 0x6d02006c;
  static const VK_SUBTRACT = 0x6e02006d;
  static const VK_DECIMAL = 0x6f02006e;
  static const VK_DIVIDE = 0x7002006f;
  static const VK_F1 = 0x71020070;
  static const VK_F2 = 0x72020071;
  static const VK_F3 = 0x73020072;
  static const VK_F4 = 0x74020073;
  static const VK_F5 = 0x75020074;
  static const VK_F6 = 0x76020075;
  static const VK_F7 = 0x77020076;
  static const VK_F8 = 0x78020077;
  static const VK_F9 = 0x79020078;
  static const VK_F10 = 0x7a020079;
  static const VK_F11 = 0x7b02007a;
  static const VK_F12 = 0x7c02007b;
  static const VK_F13 = 0x7d02007c;
  static const VK_F14 = 0x7e02007d;
  static const VK_F15 = 0x7f02007e;
  static const VK_F16 = 0x8102007f;
  static const VK_F17 = 0x00020080;
  static const VK_F18 = 0x82020081;
  static const VK_F19 = 0x83020082;
  static const VK_F20 = 0x84020083;
  static const VK_F21 = 0x85020084;
  static const VK_F22 = 0x86020085;
  static const VK_F23 = 0x87020086;
  static const VK_F24 = 0x88020087;
  static const VK_NAVIGATION_VIEW = 0x89020088;
  static const VK_NAVIGATION_MENU = 0x8a020089;
  static const VK_NAVIGATION_UP = 0x8b02008a;
  static const VK_NAVIGATION_DOWN = 0x8c02008b;
  static const VK_NAVIGATION_LEFT = 0x8d02008c;
  static const VK_NAVIGATION_RIGHT = 0x8e02008d;
  static const VK_NAVIGATION_ACCEPT = 0x8f02008e;
  static const VK_NAVIGATION_CANCEL = 0x9002008f;
  static const VK_NUMLOCK = 0x91020090;
  static const VK_SCROLL = 0x92020091;
  static const VK_OEM_NEC_EQUAL = 0x93020092;
  static const VK_OEM_FJ_JISHO = 0x93020092;
  static const VK_OEM_FJ_MASSHOU = 0x94020093;
  static const VK_OEM_FJ_TOUROKU = 0x95020094;
  static const VK_OEM_FJ_LOYA = 0x96020095;
  static const VK_OEM_FJ_ROYA = 0xa0020096;
  static const VK_LSHIFT = 0xa10200a0;
  static const VK_RSHIFT = 0xa20200a1;
  static const VK_LCONTROL = 0xa30200a2;
  static const VK_RCONTROL = 0xa40200a3;
  static const VK_LMENU = 0xa50200a4;
  static const VK_RMENU = 0xa60200a5;
  static const VK_BROWSER_BACK = 0xa70200a6;
  static const VK_BROWSER_FORWARD = 0xa80200a7;
  static const VK_BROWSER_REFRESH = 0xa90200a8;
  static const VK_BROWSER_STOP = 0xaa0200a9;
  static const VK_BROWSER_SEARCH = 0xab0200aa;
  static const VK_BROWSER_FAVORITES = 0xac0200ab;
  static const VK_BROWSER_HOME = 0xad0200ac;
  static const VK_VOLUME_MUTE = 0xae0200ad;
  static const VK_VOLUME_DOWN = 0xaf0200ae;
  static const VK_VOLUME_UP = 0xb00200af;
  static const VK_MEDIA_NEXT_TRACK = 0xb10200b0;
  static const VK_MEDIA_PREV_TRACK = 0xb20200b1;
  static const VK_MEDIA_STOP = 0xb30200b2;
  static const VK_MEDIA_PLAY_PAUSE = 0xb40200b3;
  static const VK_LAUNCH_MAIL = 0xb50200b4;
  static const VK_LAUNCH_MEDIA_SELECT = 0xb60200b5;
  static const VK_LAUNCH_APP1 = 0xb70200b6;
  static const VK_LAUNCH_APP2 = 0xba0200b7;
  static const VK_OEM_1 = 0xbb0200ba;
  static const VK_OEM_PLUS = 0xbc0200bb;
  static const VK_OEM_COMMA = 0xbd0200bc;
  static const VK_OEM_MINUS = 0xbe0200bd;
  static const VK_OEM_PERIOD = 0xbf0200be;
  static const VK_OEM_2 = 0xc00200bf;
  static const VK_OEM_3 = 0xc30200c0;
  static const VK_GAMEPAD_A = 0xc40200c3;
  static const VK_GAMEPAD_B = 0xc50200c4;
  static const VK_GAMEPAD_X = 0xc60200c5;
  static const VK_GAMEPAD_Y = 0xc70200c6;
  static const VK_GAMEPAD_RIGHT_SHOULDER = 0xc80200c7;
  static const VK_GAMEPAD_LEFT_SHOULDER = 0xc90200c8;
  static const VK_GAMEPAD_LEFT_TRIGGER = 0xca0200c9;
  static const VK_GAMEPAD_RIGHT_TRIGGER = 0xcb0200ca;
  static const VK_GAMEPAD_DPAD_UP = 0xcc0200cb;
  static const VK_GAMEPAD_DPAD_DOWN = 0xcd0200cc;
  static const VK_GAMEPAD_DPAD_LEFT = 0xce0200cd;
  static const VK_GAMEPAD_DPAD_RIGHT = 0xcf0200ce;
  static const VK_GAMEPAD_MENU = 0xd00200cf;
  static const VK_GAMEPAD_VIEW = 0xd10200d0;
  static const VK_GAMEPAD_LEFT_THUMBSTICK_BUTTON = 0xd20200d1;
  static const VK_GAMEPAD_RIGHT_THUMBSTICK_BUTTON = 0xd30200d2;
  static const VK_GAMEPAD_LEFT_THUMBSTICK_UP = 0xd40200d3;
  static const VK_GAMEPAD_LEFT_THUMBSTICK_DOWN = 0xd50200d4;
  static const VK_GAMEPAD_LEFT_THUMBSTICK_RIGHT = 0xd60200d5;
  static const VK_GAMEPAD_LEFT_THUMBSTICK_LEFT = 0xd70200d6;
  static const VK_GAMEPAD_RIGHT_THUMBSTICK_UP = 0xd80200d7;
  static const VK_GAMEPAD_RIGHT_THUMBSTICK_DOWN = 0xd90200d8;
  static const VK_GAMEPAD_RIGHT_THUMBSTICK_RIGHT = 0xda0200d9;
  static const VK_GAMEPAD_RIGHT_THUMBSTICK_LEFT = 0xdb0200da;
  static const VK_OEM_4 = 0xdc0200db;
  static const VK_OEM_5 = 0xdd0200dc;
  static const VK_OEM_6 = 0xde0200dd;
  static const VK_OEM_7 = 0xdf0200de;
  static const VK_OEM_8 = 0xe10200df;
  static const VK_OEM_AX = 0xe20200e1;
  static const VK_OEM_102 = 0xe30200e2;
  static const VK_ICO_HELP = 0xe40200e3;
  static const VK_ICO_00 = 0xe50200e4;
  static const VK_PROCESSKEY = 0xe60200e5;
  static const VK_ICO_CLEAR = 0xe70200e6;
  static const VK_PACKET = 0xe90200e7;
  static const VK_OEM_RESET = 0xea0200e9;
  static const VK_OEM_JUMP = 0xeb0200ea;
  static const VK_OEM_PA1 = 0xec0200eb;
  static const VK_OEM_PA2 = 0xed0200ec;
  static const VK_OEM_PA3 = 0xee0200ed;
  static const VK_OEM_WSCTRL = 0xef0200ee;
  static const VK_OEM_CUSEL = 0xf00200ef;
  static const VK_OEM_ATTN = 0xf10200f0;
  static const VK_OEM_FINISH = 0xf20200f1;
  static const VK_OEM_COPY = 0xf30200f2;
  static const VK_OEM_AUTO = 0xf40200f3;
  static const VK_OEM_ENLW = 0xf50200f4;
  static const VK_OEM_BACKTAB = 0xf60200f5;
  static const VK_ATTN = 0xf70200f6;
  static const VK_CRSEL = 0xf80200f7;
  static const VK_EXSEL = 0xf90200f8;
  static const VK_EREOF = 0xfa0200f9;
  static const VK_PLAY = 0xfb0200fa;
  static const VK_ZOOM = 0xfc0200fb;
  static const VK_NONAME = 0xfd0200fc;
  static const VK_PA1 = 0xfe0200fd;
  static const VK_OEM_CLEAR = 0x060400fe;
}
