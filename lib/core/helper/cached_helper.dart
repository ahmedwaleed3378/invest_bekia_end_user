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
  bool _initialized = false;

  /// Call this once at app startup
  Future<void> init() async {
    if (_initialized) return;
    _prefs = await SharedPreferences.getInstance();
    _initialized = true;
  }

  /// Direct access to SharedPreferences if needed
  SharedPreferences get storage => _prefs;

  // =================== SAVE METHODS ===================

  Future<void> saveLanguage(String languageCode) =>
      _prefs.setString("lang", languageCode);

  Future<void> saveToken(String token) => _prefs.setString("token", token);

  Future<void> saveUserName(String userName) =>
      _prefs.setString("user_name", userName);

  Future<void> savePhone(String phone) => _prefs.setString("phone", phone);

  Future<void> saveImage(String image) => _prefs.setString("image", image);

  Future<void> saveUserId(int userId) => _prefs.setInt("user_id", userId);

  Future<void> saveSelledAmount(int amount) =>
      _prefs.setInt("selled_amount", amount);

  Future<void> saveWalletBalance(int balance) =>
      _prefs.setInt("walletBalance", balance);

  Future<void> saveReservedCash(int amount) =>
      _prefs.setInt("reserved_cash", amount);

  Future<void> saveFcmToken(String fcmToken) =>
      _prefs.setString("fcmToken", fcmToken);

  Future<void> saveIsFirstTime(bool isFirstTime) =>
      _prefs.setBool("isFirstTime", isFirstTime);

  Future<void> saveIsNotificationsAllowed(bool isAllowed) =>
      _prefs.setBool("isNotificationsAllowed", isAllowed);

  Future<void> saveOnboardingViewed(bool viewed) =>
      _prefs.setBool("onboardingViewed", viewed);

  // =================== GET METHODS ===================

  String get language => _prefs.getString("lang") ?? "ar";

  String? get token => _prefs.getString("token");

  int? get userID => _prefs.getInt("user_id");

  int? get walletBalance => _prefs.getInt("walletBalance");

  int? get reservedCash => _prefs.getInt("reserved_cash");

  int? get selledAmount => _prefs.getInt("selled_amount");

  String? get phone => _prefs.getString("phone");

  String? get userName => _prefs.getString("user_name");

  String? get image => _prefs.getString("image");

  String? get fcmToken => _prefs.getString("fcmToken");

  /// Returns true if this is the first time the app is launched
  /// Default is true if no value is stored
  bool get isFirstTime => _prefs.getBool("isFirstTime") ?? true;

  bool get isNotificationsAllowed =>
      _prefs.getBool("isNotificationsAllowed") ?? false;

  bool get isOnboardingViewed => _prefs.getBool("onboardingViewed") ?? false;

  /// Returns true if user is logged in (has valid token)
  bool get isLoggedIn => token != null && token!.isNotEmpty;

  // =================== UTILITY METHODS ===================

  /// Check if language preference is saved
  bool isLanguageSaved() => _prefs.containsKey("lang");

  /// Check if token is saved
  bool isTokenSaved() => _prefs.containsKey("token");

  /// Check if first time flag is set
  bool isFirstTimeFlagSet() => _prefs.containsKey("isFirstTime");

  /// Get all stored keys (useful for debugging)
  Set<String> getAllKeys() => _prefs.getKeys();

  /// Remove specific key
  Future<bool> removeKey(String key) => _prefs.remove(key);

  /// Clear all stored data
  Future<bool> clearAll() => _prefs.clear();

  /// Clear user-specific data (keep app settings like language, first time, etc.)
  Future<void> clearUserData() async {
    final keysToRemove = [
      "token",
      "user_name",
      "phone",
      "image",
      "user_id",
      "selled_amount",
      "walletBalance",
      "reserved_cash",
      "fcmToken",
    ];

    for (String key in keysToRemove) {
      await _prefs.remove(key);
    }
  }

  Future<bool> handleFirstTimeLaunch() async {
    if (isFirstTime) {
      // Mark as no longer first time
      await saveIsFirstTime(false);
      return true;
    }
    return false;
  }
}
