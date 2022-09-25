import 'app_localizations.dart';

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get counterAppBarTitle => 'Counter';

  @override
  String get newTask => 'Task Baru';

  @override
  String get submit => 'Kirim';

  @override
  String get emptyTask => 'Tambahkan To do pertamamu :D';

  @override
  String get updateProfile => 'Update Profil';

  @override
  String get emailLabel => 'Email';

  @override
  String get emailHint => 'Masukkan email kamu di sini..';

  @override
  String get passwordLabel => 'Password';

  @override
  String get passwordHint => 'Masukkan password kamu di sini..';
}
