import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      //home: HomePage()
      localizationsDelegates: [
   // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
          const Locale('en', 'US'), // English, no country code
          const Locale('es', 'CL'), // Hebrew, no country code
          // ... other locales the app supports
        ],
      initialRoute: '/',
      routes: getAplicationRutes(),
      // onGenerateRoute: ( settings ){

      //     print('ruta llamada ${settings.name}');

      //     return MaterialPageRoute(
      //       builder: (BuildContext context) => AlertPage()
      //     );

          
      // },
    );
  }
}

