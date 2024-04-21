import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_tasarim_1/themes/ThemeClass.dart";
import "package:flutter_tasarim_1/view/SplashPage.dart";
import "package:grock/grock.dart";

void main() {
  //ReverPod kullanabilmek için ProviderScope ile sarmalamak gerekiyor
  runApp(ProviderScope(child:  MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Tasarim App",
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: ThemeClass.darkTheme,
      theme: ThemeClass.lightheme,
      //Sayfa Değiştirme işlemleri için Grock kullanacağız.
      navigatorKey: Grock.navigationKey,
      //Snackbar göstermek için Grock kullanacağız
      scaffoldMessengerKey: Grock.scaffoldMessengerKey,
      home: SplashPage(),
    );
  }
}
