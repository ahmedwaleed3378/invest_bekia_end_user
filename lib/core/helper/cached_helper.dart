// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';


class CacheHelper {
  // 1. Private constructor
  CacheHelper._();

  // 2. The one & only instance
  static final CacheHelper _instance = CacheHelper._();

  // 3. Factory that always returns the same instance
  factory CacheHelper() => _instance;

  // 4. Convenient static getter
  static CacheHelper get to => _instance;

  late final SharedPreferences _prefs;

  /// Call this once at app startup:
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  SharedPreferences get storage => _prefs;

  Future<void> saveLanguage(String languageCode) =>
      _prefs.setString("lang", languageCode);

  Future<void> saveToken(String token) => _prefs.setString("token", token);
  Future<void> saveUserId(int userId) => _prefs.setInt("user_id", userId);

  Future<void> saveFcmToken(String fcmToken) =>
      _prefs.setString("fcmToken", fcmToken);

  Future<void> savePhone(String phone) => _prefs.setString("phone", phone);

  Future<void> saveIsFirstTime(bool isFirstTime) =>
      _prefs.setBool("isFirstTime", isFirstTime);

  Future<void> saveIsNotificationsAllowed(bool isAllowed) =>
      _prefs.setBool("isNotificationsAllowed", isAllowed);

  Future<void> saveOnboardingViewed(bool viewed) =>
      _prefs.setBool("onboardingViewed", viewed);

  String get language => _prefs.getString("lang") ?? "ar";

  String? get token => _prefs.getString("token");

  int? get userID => _prefs.getInt("user_id");

  bool get isLoggedIn => token != null && token!.isNotEmpty;

  String? get phone => _prefs.getString("phone");

  String? get fcmToken => _prefs.getString("fcmToken");

  bool get isFirstTime => _prefs.getBool("isFirstTime") ?? true;

  bool get isNotificationsAllowed =>
      _prefs.getBool("isNotificationsAllowed") ?? false;

  bool get isOnboardingViewed => _prefs.getBool("onboardingViewed") ?? false;

  bool isLanguageSaved() => _prefs.containsKey("lang");

  bool isTokenSaved() => _prefs.containsKey("token");

  Future<void> clearAll() => _prefs.clear();
}

