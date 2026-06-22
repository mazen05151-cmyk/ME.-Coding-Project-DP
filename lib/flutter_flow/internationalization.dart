import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // A-A-login
  {
    '74t6fvx2': {
      'en': 'Welcome Back,',
      'ar': '',
    },
    'q9t7vyqq': {
      'en': 'Full Name',
      'ar': '',
    },
    '5k9w2ycy': {
      'en': 'Enter your full name here...',
      'ar': '',
    },
    'tkk05prr': {
      'en': 'Email Address',
      'ar': '',
    },
    'cmzf72pf': {
      'en': 'Enter your email here...',
      'ar': '',
    },
    'cl1ahvvu': {
      'en': 'Password',
      'ar': '',
    },
    'kp7aaoir': {
      'en': 'Enter your email here...',
      'ar': '',
    },
    'adt9gnib': {
      'en': 'Forgot Password?',
      'ar': '',
    },
    '4dc3m7px': {
      'en': 'Login',
      'ar': '',
    },
    '6gokwwrt': {
      'en': 'Don\'t have an account?',
      'ar': '',
    },
    'e4lhz9ms': {
      'en': 'Create An Account!',
      'ar': '',
    },
    '3cu3hwzp': {
      'en': 'Home',
      'ar': '',
    },
  },
  // A-A-createAccount
  {
    'ivr6kb4l': {
      'en': 'Get Started Below,',
      'ar': '',
    },
    'f8fbp0uy': {
      'en': 'Full Name',
      'ar': '',
    },
    '3te81zfz': {
      'en': 'Enter your full name here...',
      'ar': '',
    },
    '41duwl3n': {
      'en': 'Email Address',
      'ar': '',
    },
    'yu3tjuep': {
      'en': 'Enter your email here...',
      'ar': '',
    },
    'v3npeyrt': {
      'en': 'Phone Number',
      'ar': '',
    },
    'gbmah6wr': {
      'en': 'Enter Your Phone Number',
      'ar': '',
    },
    '4f9wt74x': {
      'en': 'Password',
      'ar': '',
    },
    'vvc2ektp': {
      'en': 'Enter your password here...',
      'ar': '',
    },
    'ir1eghe1': {
      'en': 'Confirm Password',
      'ar': '',
    },
    '3um8yag4': {
      'en': 'Confirm Password Here...',
      'ar': '',
    },
    's9uf00c2': {
      'en': 'I want to be...',
      'ar': '',
    },
    '2slwebqz': {
      'en': 'V',
      'ar': '',
    },
    'h09k5se0': {
      'en': 'Volunteer...Or..Request...',
      'ar': '',
    },
    'iabafnds': {
      'en': 'Search...',
      'ar': '',
    },
    'so53326r': {
      'en': 'Volunteer',
      'ar': '',
    },
    '7iybzkfg': {
      'en': 'Requester',
      'ar': '',
    },
    'pmx5o0ul': {
      'en': 'Create Account',
      'ar': '',
    },
    '2sfqv5ys': {
      'en': 'Already have an account?',
      'ar': '',
    },
    '0rcasxx7': {
      'en': 'Login',
      'ar': '',
    },
    'ep963okb': {
      'en': 'Home',
      'ar': '',
    },
  },
  // A-homePage_MAIN
  {
    'h4agyupp': {
      'en': 'Welcome To Saaedny!',
      'ar': '',
    },
    'dwmp0dfg': {
      'en': 'Explore Options for your needs through here:',
      'ar': '',
    },
    'huwfncvp': {
      'en': 'Need a Certain Service?',
      'ar': '',
    },
    'gnooh88i': {
      'en': 'Search',
      'ar': '',
    },
    'knxg0ux1': {
      'en': 'Volunteer Name',
      'ar': '',
    },
    '1ndel5wl': {
      'en': 'Proposed Service: ...',
      'ar': '',
    },
    'qsjr6lr9': {
      'en': '4/5 Reviews',
      'ar': '',
    },
    '8wjxgw2s': {
      'en': 'Rating',
      'ar': '',
    },
    'ctoe32xu': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Volunteerdetails
  {
    'm9op5wen': {
      'en': 'Ahmed Mohsen',
      'ar': '',
    },
    'ilzod1wc': {
      'en': 'Academic Tutor',
      'ar': '',
    },
    'xdtgs00i': {
      'en': '4/5 Reviews',
      'ar': '',
    },
    '6ulyadp9': {
      'en': 'Reviews',
      'ar': '',
    },
    'jky6krqq': {
      'en': 'DESCRIPTION',
      'ar': '',
    },
    'vo49uq2p': {
      'en':
          'Ahmed Mohsen is a professional certified academic tutor verified by a wealth of experience.',
      'ar': '',
    },
    'kr4petzx': {
      'en': 'Skills',
      'ar': '',
    },
    '9ww7pibk': {
      'en': 'What people are saying',
      'ar': '',
    },
    'h0475eo5': {
      'en': 'Ahmed Mohsen',
      'ar': '',
    },
    'lcbtagkf': {
      'en': 'Ahmed Mohsen is a chad',
      'ar': '',
    },
    '5b4sxhkw': {
      'en': 'Josh Richardson',
      'ar': '',
    },
    'zlc3wia8': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam...',
      'ar': '',
    },
    'gxylsyvc': {
      'en': 'Josh Richardson',
      'ar': '',
    },
    '13cj8ha0': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam...',
      'ar': '',
    },
    'npvy7x17': {
      'en': 'Request Now',
      'ar': '',
    },
    'l460xido': {
      'en': 'Home',
      'ar': '',
    },
  },
  // SearchVolunteers
  {
    '97q1b1pv': {
      'en': 'Search',
      'ar': '',
    },
    'b543ih6i': {
      'en': 'Address, city, state...',
      'ar': '',
    },
    'qzfzum92': {
      'en': 'Search',
      'ar': '',
    },
    'ed6owad7': {
      'en': '',
      'ar': '',
    },
    'veocv7d9': {
      'en': '',
      'ar': '',
    },
    'htwj1dtj': {
      'en': '4/5 Reviews',
      'ar': '',
    },
    'mmko415a': {
      'en': 'Rating',
      'ar': '',
    },
    '9bvxmv5a': {
      'en': 'Home',
      'ar': '',
    },
  },
  // VolunteerReview
  {
    'exe8kdkf': {
      'en': 'Reviews',
      'ar': '',
    },
    '2glmxcrm': {
      'en': '2,503',
      'ar': '',
    },
    'sabugnc3': {
      'en': '# of Ratings',
      'ar': '',
    },
    'xaco4qdk': {
      'en': '4.6',
      'ar': '',
    },
    'hizccab2': {
      'en': 'Avg. Rating',
      'ar': '',
    },
    'jzmokor6': {
      'en': 'Ahmed Mohsen',
      'ar': '',
    },
    'i2t82bqt': {
      'en': 'Ahmed Mohsen is a chad.',
      'ar': '',
    },
    'gtwvzt39': {
      'en': 'Home',
      'ar': '',
    },
  },
  // A-bookvolunteer
  {
    'ynevdxj7': {
      'en': 'Request Now',
      'ar': '',
    },
    'nyhfo5bp': {
      'en': 'Academic Tutor',
      'ar': '',
    },
    'ykcvtwr5': {
      'en': 'Choose Dates',
      'ar': '',
    },
    'gnrzz62v': {
      'en':
          'Specify Duration (Hours)\n! Notice: Volunteer has to check the duration \nbefore accepting',
      'ar': '',
    },
    'xsjdn56b': {
      'en': 'Choose an Option',
      'ar': '',
    },
    'ptckg6d7': {
      'en': 'Details on Expertise',
      'ar': '',
    },
    'vaktr6wv': {
      'en': 'Request Now',
      'ar': '',
    },
    '997zy3xi': {
      'en': 'Home',
      'ar': '',
    },
  },
  // profilePage
  {
    'sz69b0vk': {
      'en': '',
      'ar': '',
    },
    'oqmj3ej4': {
      'en': '',
      'ar': '',
    },
    'hdcs6x96': {
      'en': 'Switch to Dark Mode',
      'ar': '',
    },
    'n1rrknlw': {
      'en': 'Switch to Light Mode',
      'ar': '',
    },
    '0hjpwhya': {
      'en': 'Account Details',
      'ar': '',
    },
    'ko0qofjl': {
      'en': 'Edit Profile',
      'ar': '',
    },
    't5fxei9s': {
      'en': 'Personalized Information',
      'ar': '',
    },
    'suoof4it': {
      'en': 'Change Password',
      'ar': '',
    },
    '022fi9ou': {
      'en': 'My Achievements',
      'ar': '',
    },
    'u4botz23': {
      'en': 'My Requests',
      'ar': '',
    },
    'p5mcsp2p': {
      'en': 'Log Out',
      'ar': '',
    },
    'v2k5p4eg': {
      'en': 'Add Property',
      'ar': '',
    },
    'yswsxdm5': {
      'en': 'Profile',
      'ar': '',
    },
  },
  // editProfile
  {
    'vha9ezov': {
      'en': 'Edit Profile',
      'ar': '',
    },
    '479mzec9': {
      'en': 'Change Photo',
      'ar': '',
    },
    '57nwhnku': {
      'en': 'Full Name',
      'ar': '',
    },
    'nkul6tsc': {
      'en': 'Your full name...',
      'ar': '',
    },
    'o2voc79d': {
      'en': '[display_name]',
      'ar': '',
    },
    'aheexi7v': {
      'en': 'Email Address',
      'ar': '',
    },
    'jljhrjsz': {
      'en': 'Your email..',
      'ar': '',
    },
    'auhoh46o': {
      'en': '[display_name]',
      'ar': '',
    },
    'foij4e1y': {
      'en': 'Bio',
      'ar': '',
    },
    '6ax45v69': {
      'en': 'A little about you...',
      'ar': '',
    },
    'y3pvzoux': {
      'en': '[bio]',
      'ar': '',
    },
    'uuqhkqnx': {
      'en': 'Save Changes',
      'ar': '',
    },
    'ir6157em': {
      'en': 'Home',
      'ar': '',
    },
  },
  // A-changePassword
  {
    'lpo4zm18': {
      'en': 'Email Address',
      'ar': '',
    },
    '0bfva7ll': {
      'en': 'Your email..',
      'ar': '',
    },
    'zyzgfmoi': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account above.',
      'ar': '',
    },
    'w1d9ujo7': {
      'en': 'Send Reset Link',
      'ar': '',
    },
    '55t0gmss': {
      'en': 'Change Password',
      'ar': '',
    },
    'khv3t8mp': {
      'en': 'Home',
      'ar': '',
    },
  },
  // HomePage_ALT
  {
    'qj6ohqmh': {
      'en': 'Welcome!',
      'ar': '',
    },
    'rshxkr1b': {
      'en': 'Find your Dream Space',
      'ar': '',
    },
    'zto6zxx0': {
      'en': 'Address, city, state...',
      'ar': '',
    },
    'pasxkegj': {
      'en': 'Search',
      'ar': '',
    },
    'gl7g0p6a': {
      'en': 'Home on Beachront',
      'ar': '',
    },
    'p3f1b46o': {
      'en': '123 disney Way, Willingmington, WV, 20492',
      'ar': '',
    },
    '85e03ajr': {
      'en': '4/5 reviews',
      'ar': '',
    },
    'xesihwz2': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Categories
  {
    'n3cmb095': {
      'en': 'Explore Categories',
      'ar': '',
    },
    '6xbh9lr5': {
      'en': 'CHOOSE YOUR AMENITIES',
      'ar': '',
    },
    't5qgj0bc': {
      'en': 'Pool',
      'ar': '',
    },
    'll1xwz5j': {
      'en': 'EV Car Charging',
      'ar': '',
    },
    'wu7w2jlu': {
      'en': 'Extra Outlets',
      'ar': '',
    },
    'gjqj1u5h': {
      'en': 'Air Conditioning (AC)',
      'ar': '',
    },
    'bc556o2j': {
      'en': 'Heating',
      'ar': '',
    },
    'mqhw4pwx': {
      'en': 'Washer',
      'ar': '',
    },
    'nqmolc8e': {
      'en': 'Dryer',
      'ar': '',
    },
    '91y8qnqq': {
      'en': 'Pet Friendly',
      'ar': '',
    },
    'v6pc04u3': {
      'en': 'Workout Facility',
      'ar': '',
    },
    'pmko0ffi': {
      'en': 'Hip',
      'ar': '',
    },
    'l7k7o6fc': {
      'en': 'Night Life',
      'ar': '',
    },
    'gxk622ie': {
      'en': 'NEXT',
      'ar': '',
    },
    'gznw45ou': {
      'en': 'Home',
      'ar': '',
    },
  },
  // MissionVolunteer
  {
    'pekempjz': {
      'en': 'Service Details',
      'ar': '',
    },
    'dq1tkztk': {
      'en': 'Date of Service',
      'ar': '',
    },
    '7p7fv9n2': {
      'en': 'Home on Beachront',
      'ar': '',
    },
    'p11vdbj2': {
      'en': ' - ',
      'ar': '',
    },
    '3xpuhcyh': {
      'en': 'Home on Beachront',
      'ar': '',
    },
    'qul0qgse': {
      'en': 'Location',
      'ar': '',
    },
    'ayaej1wy': {
      'en': 'East Los Angeles',
      'ar': '',
    },
    'j5kwsfo8': {
      'en': 'Vacation Home',
      'ar': '',
    },
    'htc1dij8': {
      'en': '123 Disney Way, Willingmington, WV 24921',
      'ar': '',
    },
    'kgf9xizs': {
      'en': 'Price Breakdown',
      'ar': '',
    },
    'gqvt3y7n': {
      'en': 'Base Price',
      'ar': '',
    },
    '6zndocwa': {
      'en': '\$156.00',
      'ar': '',
    },
    'd7xmmudj': {
      'en': 'Taxes',
      'ar': '',
    },
    'xi7cum8g': {
      'en': '\$24.20',
      'ar': '',
    },
    'woxf6oli': {
      'en': 'Cleaning Fee',
      'ar': '',
    },
    '5e9yl678': {
      'en': '\$40.00',
      'ar': '',
    },
    'byyr9jlx': {
      'en': 'Total',
      'ar': '',
    },
    '06hqf4z0': {
      'en': '\$230.20',
      'ar': '',
    },
    'emlwuy05': {
      'en': 'Review Current Progress',
      'ar': '',
    },
    '2szuzsim': {
      'en': 'Review Service',
      'ar': '',
    },
    'frxyo4yk': {
      'en': 'Requester Info',
      'ar': '',
    },
    'jl7lwllo': {
      'en': 'East Los Angeles',
      'ar': '',
    },
    '3adxhz46': {
      'en': 'Home',
      'ar': '',
    },
  },
  // A-UserHistoryVOLUNTEER
  {
    'qyu5nqql': {
      'en': 'Upcoming',
      'ar': '',
    },
    'jrzms4sx': {
      'en': 'Home on Beachront',
      'ar': '',
    },
    'tax2frma': {
      'en': ' - ',
      'ar': '',
    },
    '39rqie0t': {
      'en': 'Home on Beachront',
      'ar': '',
    },
    '7o5ulxva': {
      'en': '123 disney Way, Willingmington, WV, 20492',
      'ar': '',
    },
    'dt91f4ew': {
      'en': 'Hello World',
      'ar': '',
    },
    'nssza5ps': {
      'en': 'Total',
      'ar': '',
    },
    '2wp2y9le': {
      'en': 'Completed',
      'ar': '',
    },
    'lmbzoh1c': {
      'en': 'Cancelled',
      'ar': '',
    },
    'guig7jwa': {
      'en': 'Home on Beachront',
      'ar': '',
    },
    'b7yqpc9p': {
      'en': ' - ',
      'ar': '',
    },
    'e6u20uiv': {
      'en': 'Home on Beachront',
      'ar': '',
    },
    'rf82hcv0': {
      'en': 'Hello World',
      'ar': '',
    },
    '2xz5aoq3': {
      'en': 'Rate Trip',
      'ar': '',
    },
    '3k35n4zk': {
      'en': 'My Services',
      'ar': '',
    },
    '5iecaxnr': {
      'en': 'History',
      'ar': '',
    },
  },
  // A-UserHistoryRequester
  {
    '1e6kstxw': {
      'en': 'Upcoming',
      'ar': '',
    },
    '007elcx7': {
      'en': 'Home on Beachront',
      'ar': '',
    },
    'scvtdy06': {
      'en': ' - ',
      'ar': '',
    },
    'g8ii668n': {
      'en': 'Home on Beachront',
      'ar': '',
    },
    '2lupvn9u': {
      'en': '123 disney Way, Willingmington, WV, 20492',
      'ar': '',
    },
    'kbu46acd': {
      'en': 'Hello World',
      'ar': '',
    },
    'rxt6b2h8': {
      'en': 'Total',
      'ar': '',
    },
    'kssk0y6p': {
      'en': 'Completed',
      'ar': '',
    },
    'hauld5ca': {
      'en': 'Cancelled',
      'ar': '',
    },
    '2ky6v27n': {
      'en': 'Home on Beachront',
      'ar': '',
    },
    'm3jeydf1': {
      'en': ' - ',
      'ar': '',
    },
    'pqjl35fm': {
      'en': 'Home on Beachront',
      'ar': '',
    },
    'vsy54nhr': {
      'en': 'Hello World',
      'ar': '',
    },
    '2ynhwolr': {
      'en': 'Rate Trip',
      'ar': '',
    },
    '98eyh7di': {
      'en': 'My Requests',
      'ar': '',
    },
    'wuby7w7n': {
      'en': 'History',
      'ar': '',
    },
  },
  // MissionVolunteerCopy
  {
    'h040vh80': {
      'en': 'Service Details',
      'ar': '',
    },
    '7jt9tgsx': {
      'en': 'Date of Service',
      'ar': '',
    },
    '8qt0edou': {
      'en': 'Home on Beachront',
      'ar': '',
    },
    'ftan7rcp': {
      'en': ' - ',
      'ar': '',
    },
    '7no5kwvf': {
      'en': 'Home on Beachront',
      'ar': '',
    },
    're776rix': {
      'en': 'Location',
      'ar': '',
    },
    'mlcum1se': {
      'en': 'East Los Angeles',
      'ar': '',
    },
    'jzhywt7c': {
      'en': 'Vacation Home',
      'ar': '',
    },
    'nzg9l5qf': {
      'en': '123 Disney Way, Willingmington, WV 24921',
      'ar': '',
    },
    'duxxlwqt': {
      'en': 'Price Breakdown',
      'ar': '',
    },
    '38ulgwsj': {
      'en': 'Base Price',
      'ar': '',
    },
    'xlsr3q87': {
      'en': '\$156.00',
      'ar': '',
    },
    'bbwjp6jo': {
      'en': 'Taxes',
      'ar': '',
    },
    'ekz3wqbk': {
      'en': '\$24.20',
      'ar': '',
    },
    '0bny7kbg': {
      'en': 'Cleaning Fee',
      'ar': '',
    },
    'akkz0b5z': {
      'en': '\$40.00',
      'ar': '',
    },
    '2yztqurs': {
      'en': 'Total',
      'ar': '',
    },
    'vxpdvzce': {
      'en': '\$230.20',
      'ar': '',
    },
    'cb562i9m': {
      'en': 'Mark this trip as complete below.',
      'ar': '',
    },
    '4l3wmbi0': {
      'en': 'Mark as Complete',
      'ar': '',
    },
    'ew00cvk0': {
      'en': 'Volunteer Info',
      'ar': '',
    },
    'artw531q': {
      'en': 'East Los Angeles',
      'ar': '',
    },
    '5twne6bq': {
      'en': 'Home',
      'ar': '',
    },
  },
  // ModernCleanMobilePage
  {
    '7nbx9wba': {
      'en': 'JS',
      'ar': '',
    },
    '7wm0g7x3': {
      'en': 'Saaedny',
      'ar': '',
    },
    'b0en3tog': {
      'en': 'My Requests',
      'ar': '',
    },
    'uw5mul6i': {
      'en': 'See All',
      'ar': '',
    },
  },
  // CleanMobileDashboardPage
  {
    'pqv3g9p8': {
      'en': 'Active Tasks',
      'ar': '',
    },
    '7y1ioo2p': {
      'en': 'See All',
      'ar': '',
    },
  },
  // ModernCleanMinimalistPage
  {
    'gcxc1njg': {
      'en': 'Request Sent Successfully!',
      'ar': '',
    },
    'oubxpix3': {
      'en':
          'Your volunteer booking has been broadcasted and is awaiting confirmation.',
      'ar': '',
    },
  },
  // ModernCleanMinimalistPage2
  {
    'vq21i20o': {
      'en': 'Request Sent Successfully!',
      'ar': '',
    },
    'qicja9lr': {
      'en':
          'Your volunteer booking has been broadcasted and is awaiting confirmation.',
      'ar': '',
    },
  },
  // MinimalistCardPage
  {
    'seud7hf1': {
      'en': 'Request Status',
      'ar': '',
    },
    'rm67g9sc': {
      'en': 'Request Sent Successfully!',
      'ar': '',
    },
    'iautapme': {
      'en': 'Status: Broadcasted',
      'ar': '',
    },
    'gismirds': {
      'en':
          'Your volunteer booking has been sent and is currently awaiting confirmation.',
      'ar': '',
    },
  },
  // bottomSheet
  {
    'wuivi55u': {
      'en': 'Session Booked!',
      'ar': '',
    },
    'txag64ia': {
      'en': 'You have successfully booked a session on:',
      'ar': '',
    },
    'ss9od6y3': {
      'en': 'Mon, Dec 11 - 2021',
      'ar': '',
    },
  },
  // total
  {
    'u8o76oco': {
      'en': 'Order Total',
      'ar': '',
    },
    'ip1v4ekm': {
      'en':
          'Your order total is a summary of all items in your order minus any fees and taxes associated with your purchase.',
      'ar': '',
    },
    'gamfvium': {
      'en': 'Okay',
      'ar': '',
    },
  },
  // changePhoto
  {
    'mdax0szb': {
      'en': 'Change Profile Photo',
      'ar': '',
    },
    'n8vtiqww': {
      'en': 'Upload Photo',
      'ar': '',
    },
    'qudz5cjr': {
      'en': 'Save Photo',
      'ar': '',
    },
  },
  // reviewTrip
  {
    'rb81pukk': {
      'en': 'Rate Your Trip',
      'ar': '',
    },
    '3oduqqgd': {
      'en': 'Let us know what you thought of the place below!',
      'ar': '',
    },
    'kwcb3tft': {
      'en': 'How would you rate it?',
      'ar': '',
    },
    's4lodg46': {
      'en': 'Please leave a description of the place...',
      'ar': '',
    },
    'u3otg9sn': {
      'en': 'Submit Review',
      'ar': '',
    },
  },
  // changeMainPhoto
  {
    '2po4pyab': {
      'en': 'Change Main Photo',
      'ar': '',
    },
    'kdgk0scn': {
      'en': 'Upload Photo',
      'ar': '',
    },
    'anc2th1a': {
      'en': 'Save Photo',
      'ar': '',
    },
  },
  // cancelTrip
  {
    '1se6xeh9': {
      'en': 'Cancel Trip',
      'ar': '',
    },
    '3gv56ikz': {
      'en':
          'If you want to cancel your tripl please leave a note below to send to the host.',
      'ar': '',
    },
    's6l3bq3l': {
      'en': 'Your reason for cancelling...',
      'ar': '',
    },
    'mtpy15n0': {
      'en': 'Yes, Cancel Trip',
      'ar': '',
    },
    '0orp16pe': {
      'en': 'Never Mind',
      'ar': '',
    },
  },
  // cancelTripHOST
  {
    'by43rvvq': {
      'en': 'Cancel Trip',
      'ar': '',
    },
    'tw9v3rtk': {
      'en':
          'If you want to cancel your tripl please leave a note below to send to the host.',
      'ar': '',
    },
    'x39gfwxb': {
      'en': 'Your reason for cancelling...',
      'ar': '',
    },
    'p6wkloe3': {
      'en': 'Yes, Cancel Trip',
      'ar': '',
    },
    'qg3jusez': {
      'en': 'Never Mind',
      'ar': '',
    },
  },
  // Miscellaneous
  {
    'sm624lrg': {
      'en': '',
      'ar': '',
    },
    'bpwqopsz': {
      'en': '',
      'ar': '',
    },
    '0kg9d9id': {
      'en': '',
      'ar': '',
    },
    '5ji2n1pk': {
      'en': '',
      'ar': '',
    },
    'e99l4yqi': {
      'en': '',
      'ar': '',
    },
    'hkfce8s7': {
      'en': '',
      'ar': '',
    },
    'a0vu9aio': {
      'en': '',
      'ar': '',
    },
    'tcbmn1w6': {
      'en': '',
      'ar': '',
    },
    'bvjl2zkv': {
      'en': '',
      'ar': '',
    },
    'cqhbqepw': {
      'en': '',
      'ar': '',
    },
    'pm8ejp38': {
      'en': '',
      'ar': '',
    },
    'pb3nmbez': {
      'en': '',
      'ar': '',
    },
    'qp1kjqcm': {
      'en': '',
      'ar': '',
    },
    '56bkk8f5': {
      'en': '',
      'ar': '',
    },
    'byth12sp': {
      'en': '',
      'ar': '',
    },
    '4qm3tu2q': {
      'en': '',
      'ar': '',
    },
    'o282sl9t': {
      'en': '',
      'ar': '',
    },
    '84peomfe': {
      'en': '',
      'ar': '',
    },
    'j9407aqs': {
      'en': '',
      'ar': '',
    },
    'ns4v981l': {
      'en': '',
      'ar': '',
    },
    'z3zxb2wi': {
      'en': '',
      'ar': '',
    },
    'hx7glce7': {
      'en': '',
      'ar': '',
    },
    'kz932lgq': {
      'en': '',
      'ar': '',
    },
    'hswfl5w7': {
      'en': '',
      'ar': '',
    },
    'fnvysvpc': {
      'en': '',
      'ar': '',
    },
    '59h9cp1c': {
      'en': '',
      'ar': '',
    },
    'gzfw5wgm': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
