import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get counterAppBarTitle => 'Counter';

  @override
  String get newTask => 'New Task';

  @override
  String get submit => 'Submit';

  @override
  String get emptyTask => 'Add your first todo :D';

  @override
  String get updateProfile => 'Update Profile';
}
