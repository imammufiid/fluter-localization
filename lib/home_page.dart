import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Localization"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppLocalizations.of(context)!.helloWorld),
            Text(AppLocalizations.of(context)!.titleLocalization),
            Text(AppLocalizations.of(context)!.helloWithName("Imam")),
            Text(AppLocalizations.of(context)!.helloWithName("Mufiid")),
            // Returns 'no wombats'
            Text(AppLocalizations.of(context)!.nWombats(0)),
            // Returns '1 wombat'
            Text(AppLocalizations.of(context)!.nWombats(1)),
            // Returns '5 wombats'
            Text(AppLocalizations.of(context)!.nWombats(5)),
            // Returns 'he'
            Text(AppLocalizations.of(context)!.pronoun('male')),
            // Returns 'she'
            Text(AppLocalizations.of(context)!.pronoun('female')),
            // Returns 'they'
            Text(AppLocalizations.of(context)!.pronoun('other')),
            // Number
            Text(AppLocalizations.of(context)!.myAge(26))
          ],
        ),
      ),
    );
  }
}
