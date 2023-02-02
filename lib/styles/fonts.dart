part of styles;

class AppFonts {
  static TextStyle getAppFont({
    FontWeight? fontWeight,
    double? fontSize,
    Color? color,
  }) {
    return GoogleFonts.inter(
        textStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ));
  }
}

class TextFonts {
  static TextStyle getAppFont({
    FontWeight? fontWeight,
    double? fontSize,
    Color? color,
  }) {
    return GoogleFonts.amita(
        textStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ));
  }
}

class HomePage {
  static TextStyle getAppFont({
    FontWeight? fontWeight,
    double? fontSize,
    Color? color,
  }) {
    return GoogleFonts.holtwoodOneSc(
        textStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ));
  }
}

class HeaderFonts {
  static final primaryText = AppFonts.getAppFont(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: TextColor.secondaryColor,
  );
  static final secondaryText = TextFonts.getAppFont(
    fontSize: 20,
    color: TextColor.secondaryColor,
  );
  static final teritaryText = TextFonts.getAppFont(
    fontSize: 20,
    color: TextColor.teritaryColor,
  );
  static final quadinary = TextFonts.getAppFont(
      fontSize: 60,
      color: TextColor.secondaryColor,
      fontWeight: FontWeight.w500);
}
