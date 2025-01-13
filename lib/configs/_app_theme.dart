part of 'configs.dart';

class AppTheme {
  static final _core = AppCoreTheme(
    primary: const Color(0xFF6164F2),
    accent: const Color(0xFF24A559),

    background: const Color(0xFF000000),
    backgroundSub: const Color(0xFF141317),
    fieldLight: const Color(0xFF212129),
    fieldDark: const Color(0xFF0F1016),

// shadow: const Color(0x40000000), // Black with 25% opacity
    shadowSub: const Color(0x26000000), // Black with 15% opacity

// text: const Color(0xFF6D8593),
    textGrey: const Color(0xFF828282),
    textLight: const Color(0xFFFFFFFF),
    lightGrey: const Color(0xFFBEC2C4),

// grey: const Color(0xFF2C2D31),
    danger: const Color(0xFFEB5757),
    yellow: const Color(0xFFFFC179),
    ghostGrey: const Color(0xFF333333),

// white: const Color(0xFFDADADF),
    pink: const Color(0xFF9796D0),
  );

  static AppCoreTheme light = _core;
  static AppCoreTheme dark = _core;

  static late AppCoreTheme c;

  // Init
  static bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;

  static init(BuildContext context) {
    c = isDark(context) ? dark : light;
  }
}
