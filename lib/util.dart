import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// TextTheme createTextTheme(
//     BuildContext context, String bodyFontString, String displayFontString) {
//   TextTheme baseTextTheme = Theme.of(context).textTheme;
//   TextTheme bodyTextTheme = GoogleFonts.getTextTheme(bodyFontString, baseTextTheme);
//   TextTheme displayTextTheme =
//       GoogleFonts.getTextTheme(displayFontString, baseTextTheme);
//   TextTheme textTheme = displayTextTheme.copyWith(
//     displayLarge: GoogleFonts.sourceSerif4(fontWeight: FontWeight.w900),
//     bodyLarge: bodyTextTheme.bodyLarge,
//     bodyMedium: bodyTextTheme.bodyMedium,
//     bodySmall: bodyTextTheme.bodySmall,
//     labelLarge: bodyTextTheme.labelLarge,
//     labelMedium: bodyTextTheme.labelMedium,
//     labelSmall: bodyTextTheme.labelSmall,
//   );
//   return textTheme;
// }

// TextTheme getCustomTextTheme(BuildContext context) {
//   String? interFontFamily = GoogleFonts.inter().fontFamily;
//   String? sourceSerif4FontFamily = GoogleFonts.sourceSerif4().fontFamily;
//   return TextTheme(
//     displayLarge: Theme.of(context).textTheme.displayLarge!.copyWith(fontWeight: FontWeight.w900, fontFamily: sourceSerif4FontFamily),
//     displayMedium: Theme.of(context).textTheme.displayMedium!.copyWith(fontWeight: FontWeight.w900, fontFamily: sourceSerif4FontFamily),
//     displaySmall: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.w900, fontFamily: sourceSerif4FontFamily),
//     headlineLarge: Theme.of(context).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.w900, fontFamily: sourceSerif4FontFamily),
//     headlineMedium: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.w900, fontFamily: sourceSerif4FontFamily),
//     headlineSmall: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.w900, fontFamily: sourceSerif4FontFamily),
//     titleLarge: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w900, fontFamily: sourceSerif4FontFamily),
//     titleMedium: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w900, fontFamily: sourceSerif4FontFamily),
//     titleSmall: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w900, fontFamily: sourceSerif4FontFamily),
//     bodyLarge: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w900, fontFamily: interFontFamily),
//     bodyMedium: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w900, fontFamily: interFontFamily),
//     bodySmall: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w900, fontFamily: interFontFamily),
//     labelLarge: Theme.of(context).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w900, fontFamily: interFontFamily),
//     labelMedium: Theme.of(context).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.w900, fontFamily: interFontFamily),
//     labelSmall: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w900, fontFamily: interFontFamily),
//   );
// }

TextTheme getCustomTextTheme(BuildContext context) {
  return TextTheme(
      titleLarge: GoogleFonts.sourceSerif4(
          fontWeight: FontWeight.w900,
          fontSize:
              24.0), // UPDATE THIS TO WHATEVER NEEDED. IT IS USED BY THE APPBAR TITLE,
      titleMedium:
          GoogleFonts.sourceSerif4(fontWeight: FontWeight.bold, fontSize: 22.0),
      bodyLarge: GoogleFonts.inter(fontWeight: FontWeight.w900, fontSize: 44.0),
      bodyMedium:
          GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 14.0),
      labelLarge:
          GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 14.0));
}
