/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 50
///
/// Built on 2024-08-30 at 14:54 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/api/translation_overrides.dart';
import 'package:slang/builder/model/build_model_config.dart';
import 'package:slang/builder/model/enums.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

/// Generated by the "Translation Overrides" feature.
/// This config is needed to recreate the translation model exactly
/// the same way as this file was created.
final _buildConfig = BuildModelConfig(
	fallbackStrategy: FallbackStrategy.baseLocale,
	keyCase: null,
	keyMapCase: null,
	paramCase: null,
	stringInterpolation: StringInterpolation.dart,
	maps: [],
	pluralAuto: PluralAuto.cardinal,
	pluralParameter: 'n',
	pluralCardinal: [],
	pluralOrdinal: [],
	contexts: [],
	interfaces: [], // currently not supported
);

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
	static void overrideTranslations({required AppLocale locale, required FileType fileType, required String content}) => instance.overrideTranslations(locale: locale, fileType: fileType, content: content);
	static void overrideTranslationsFromMap({required AppLocale locale, required bool isFlatMap, required Map map}) => instance.overrideTranslationsFromMap(locale: locale, isFlatMap: isFlatMap, map: map);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values, buildConfig: _buildConfig);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static Translations buildWithOverrides({required AppLocale locale, required FileType fileType, required String content, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.buildWithOverrides(locale: locale, fileType: fileType, content: content, cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);
	static Translations buildWithOverridesFromMap({required AppLocale locale, required bool isFlatMap, required Map map, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.buildWithOverridesFromMap(locale: locale, isFlatMap: isFlatMap, map: map, cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	/// [AppLocaleUtils.buildWithOverrides] is recommended for overriding.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get app_name => TranslationOverrides.string(_root.$meta, 'app_name', {}) ?? 'ShipFlutter template';
	String get privacy_url => TranslationOverrides.string(_root.$meta, 'privacy_url', {}) ?? 'https://shipflutter.com/privacy';
	String get terms_url => TranslationOverrides.string(_root.$meta, 'terms_url', {}) ?? 'https://shipflutter.com/terms';
	String get support_url => TranslationOverrides.string(_root.$meta, 'support_url', {}) ?? 'https://shipflutter.com/#contact';
	String get rate_url => TranslationOverrides.string(_root.$meta, 'rate_url', {}) ?? 'https://shipflutter.com/#feedback';
	String get cancel => TranslationOverrides.string(_root.$meta, 'cancel', {}) ?? 'Cancel';
	String get retry => TranslationOverrides.string(_root.$meta, 'retry', {}) ?? 'Retry';
	late final _TranslationsErrorsEn errors = _TranslationsErrorsEn._(_root);
	late final _TranslationsNavigationEn navigation = _TranslationsNavigationEn._(_root);
	late final _TranslationsHomeEn home = _TranslationsHomeEn._(_root);
	late final _TranslationsAboutEn about = _TranslationsAboutEn._(_root);
	late final _TranslationsSettingsEn settings = _TranslationsSettingsEn._(_root);
	late final _TranslationsOnboardingEn onboarding = _TranslationsOnboardingEn._(_root);
}

// Path: errors
class _TranslationsErrorsEn {
	_TranslationsErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get generic_title => TranslationOverrides.string(_root.$meta, 'errors.generic_title', {}) ?? 'Oops...';
	String get generic_text => TranslationOverrides.string(_root.$meta, 'errors.generic_text', {}) ?? 'Something went wrong';
	String get network_title => TranslationOverrides.string(_root.$meta, 'errors.network_title', {}) ?? 'Hmmm...';
	String get network_text => TranslationOverrides.string(_root.$meta, 'errors.network_text', {}) ?? 'The operation failed. Do you have connection?';
	late final _TranslationsErrorsErrorViewEn error_view = _TranslationsErrorsErrorViewEn._(_root);
}

// Path: navigation
class _TranslationsNavigationEn {
	_TranslationsNavigationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get home => TranslationOverrides.string(_root.$meta, 'navigation.home', {}) ?? 'Home';
	String get about => TranslationOverrides.string(_root.$meta, 'navigation.about', {}) ?? 'About';
	String get settings => TranslationOverrides.string(_root.$meta, 'navigation.settings', {}) ?? 'Settings';
}

// Path: home
class _TranslationsHomeEn {
	_TranslationsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => TranslationOverrides.string(_root.$meta, 'home.title', {}) ?? 'ShipFlutter template';
	String get subtitle => TranslationOverrides.string(_root.$meta, 'home.subtitle', {}) ?? 'Ship everywhere with Flutter. Fast!';
	String get details_title => TranslationOverrides.string(_root.$meta, 'home.details_title', {}) ?? 'Details';
	late final _TranslationsHomeCtaEn cta = _TranslationsHomeCtaEn._(_root);
}

// Path: about
class _TranslationsAboutEn {
	_TranslationsAboutEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => TranslationOverrides.string(_root.$meta, 'about.title', {}) ?? '👋 Hi there!';
	String get learn_more => TranslationOverrides.string(_root.$meta, 'about.learn_more', {}) ?? 'Learn more';
	String get learn_more_url => TranslationOverrides.string(_root.$meta, 'about.learn_more_url', {}) ?? 'https://pibi.studio';
	String get intro_title => TranslationOverrides.string(_root.$meta, 'about.intro_title', {}) ?? 'About us';
	String get intro_content => TranslationOverrides.string(_root.$meta, 'about.intro_content', {}) ?? 'We are ex-Googlers, GDEs and experts from top companies helping Founders and Makers build high-quality consumer apps.';
	String get purpose_title => TranslationOverrides.string(_root.$meta, 'about.purpose_title', {}) ?? 'Our purpose';
	String get purpose_content => TranslationOverrides.string(_root.$meta, 'about.purpose_content', {}) ?? 'We build our own consumer apps with our tools and expertise. The same quality is offered to our clients. We built this template to show Flutter base template of ShipFlutter project. It shows best practices and base structure';
	String get hint_title => TranslationOverrides.string(_root.$meta, 'about.hint_title', {}) ?? 'Did you know...';
	String get hint_content => TranslationOverrides.string(_root.$meta, 'about.hint_content', {}) ?? 'ShipFlutter is more than a boilerplate. It\'s a fully customizable starter kit to seamlessly launch responsive Android, iOS, and Web apps with Flutter powered by Firebase and Vertex AI.';
}

// Path: settings
class _TranslationsSettingsEn {
	_TranslationsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => TranslationOverrides.string(_root.$meta, 'settings.title', {}) ?? 'Settings';
	String get theme_mode => TranslationOverrides.string(_root.$meta, 'settings.theme_mode', {}) ?? 'Light/Dark mode';
	String get privacy => TranslationOverrides.string(_root.$meta, 'settings.privacy', {}) ?? 'Privacy Policy';
	String get terms => TranslationOverrides.string(_root.$meta, 'settings.terms', {}) ?? 'Terms of service';
	String get support => TranslationOverrides.string(_root.$meta, 'settings.support', {}) ?? 'Support';
	String get rate => TranslationOverrides.string(_root.$meta, 'settings.rate', {}) ?? 'Rate us';
	String get feedback => TranslationOverrides.string(_root.$meta, 'settings.feedback', {}) ?? 'Share feedback';
	String get disconnect => TranslationOverrides.string(_root.$meta, 'settings.disconnect', {}) ?? 'Disconnect';
	String get delete => TranslationOverrides.string(_root.$meta, 'settings.delete', {}) ?? 'Delete account';
}

// Path: onboarding
class _TranslationsOnboardingEn {
	_TranslationsOnboardingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get hero_title_start => TranslationOverrides.string(_root.$meta, 'onboarding.hero_title_start', {}) ?? 'Welcome to ShipFlutter template!';
	String get hero_text_start => TranslationOverrides.string(_root.$meta, 'onboarding.hero_text_start', {}) ?? 'A base template to show Flutter power';
	String get hero_title_end => TranslationOverrides.string(_root.$meta, 'onboarding.hero_title_end', {}) ?? 'Flutter template Tutorial end title';
	String get hero_text_end => TranslationOverrides.string(_root.$meta, 'onboarding.hero_text_end', {}) ?? 'Create an account now to enjoy all the features';
	String get skip => TranslationOverrides.string(_root.$meta, 'onboarding.skip', {}) ?? 'Skip';
	String get login => TranslationOverrides.string(_root.$meta, 'onboarding.login', {}) ?? 'Continue';
	String get not_now => TranslationOverrides.string(_root.$meta, 'onboarding.not_now', {}) ?? 'Not now';
}

// Path: errors.error_view
class _TranslationsErrorsErrorViewEn {
	_TranslationsErrorsErrorViewEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => TranslationOverrides.string(_root.$meta, 'errors.error_view.title', {}) ?? 'Argh... :(';
	String get content => TranslationOverrides.string(_root.$meta, 'errors.error_view.content', {}) ?? 'We are really sorry, but something went wrong and we could not display the view. You can restart the app or try to navigate back home';
	String get back => TranslationOverrides.string(_root.$meta, 'errors.error_view.back', {}) ?? 'Go Home';
	String get exit => TranslationOverrides.string(_root.$meta, 'errors.error_view.exit', {}) ?? 'Exit';
}

// Path: home.cta
class _TranslationsHomeCtaEn {
	_TranslationsHomeCtaEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => TranslationOverrides.string(_root.$meta, 'home.cta.title', {}) ?? 'Bootstrap your app';
	String get button => TranslationOverrides.string(_root.$meta, 'home.cta.button', {}) ?? 'Try now';
	String get content => TranslationOverrides.string(_root.$meta, 'home.cta.content', {}) ?? 'Use our AI-powered builder to generate and customize your project.';
	String get link => TranslationOverrides.string(_root.$meta, 'home.cta.link', {}) ?? 'https://builder.shipflutter.com';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app_name': return TranslationOverrides.string(_root.$meta, 'app_name', {}) ?? 'ShipFlutter template';
			case 'privacy_url': return TranslationOverrides.string(_root.$meta, 'privacy_url', {}) ?? 'https://shipflutter.com/privacy';
			case 'terms_url': return TranslationOverrides.string(_root.$meta, 'terms_url', {}) ?? 'https://shipflutter.com/terms';
			case 'support_url': return TranslationOverrides.string(_root.$meta, 'support_url', {}) ?? 'https://shipflutter.com/#contact';
			case 'rate_url': return TranslationOverrides.string(_root.$meta, 'rate_url', {}) ?? 'https://shipflutter.com/#feedback';
			case 'cancel': return TranslationOverrides.string(_root.$meta, 'cancel', {}) ?? 'Cancel';
			case 'retry': return TranslationOverrides.string(_root.$meta, 'retry', {}) ?? 'Retry';
			case 'errors.generic_title': return TranslationOverrides.string(_root.$meta, 'errors.generic_title', {}) ?? 'Oops...';
			case 'errors.generic_text': return TranslationOverrides.string(_root.$meta, 'errors.generic_text', {}) ?? 'Something went wrong';
			case 'errors.network_title': return TranslationOverrides.string(_root.$meta, 'errors.network_title', {}) ?? 'Hmmm...';
			case 'errors.network_text': return TranslationOverrides.string(_root.$meta, 'errors.network_text', {}) ?? 'The operation failed. Do you have connection?';
			case 'errors.error_view.title': return TranslationOverrides.string(_root.$meta, 'errors.error_view.title', {}) ?? 'Argh... :(';
			case 'errors.error_view.content': return TranslationOverrides.string(_root.$meta, 'errors.error_view.content', {}) ?? 'We are really sorry, but something went wrong and we could not display the view. You can restart the app or try to navigate back home';
			case 'errors.error_view.back': return TranslationOverrides.string(_root.$meta, 'errors.error_view.back', {}) ?? 'Go Home';
			case 'errors.error_view.exit': return TranslationOverrides.string(_root.$meta, 'errors.error_view.exit', {}) ?? 'Exit';
			case 'navigation.home': return TranslationOverrides.string(_root.$meta, 'navigation.home', {}) ?? 'Home';
			case 'navigation.about': return TranslationOverrides.string(_root.$meta, 'navigation.about', {}) ?? 'About';
			case 'navigation.settings': return TranslationOverrides.string(_root.$meta, 'navigation.settings', {}) ?? 'Settings';
			case 'home.title': return TranslationOverrides.string(_root.$meta, 'home.title', {}) ?? 'ShipFlutter template';
			case 'home.subtitle': return TranslationOverrides.string(_root.$meta, 'home.subtitle', {}) ?? 'Ship everywhere with Flutter. Fast!';
			case 'home.details_title': return TranslationOverrides.string(_root.$meta, 'home.details_title', {}) ?? 'Details';
			case 'home.cta.title': return TranslationOverrides.string(_root.$meta, 'home.cta.title', {}) ?? 'Bootstrap your app';
			case 'home.cta.button': return TranslationOverrides.string(_root.$meta, 'home.cta.button', {}) ?? 'Try now';
			case 'home.cta.content': return TranslationOverrides.string(_root.$meta, 'home.cta.content', {}) ?? 'Use our AI-powered builder to generate and customize your project.';
			case 'home.cta.link': return TranslationOverrides.string(_root.$meta, 'home.cta.link', {}) ?? 'https://builder.shipflutter.com';
			case 'about.title': return TranslationOverrides.string(_root.$meta, 'about.title', {}) ?? '👋 Hi there!';
			case 'about.learn_more': return TranslationOverrides.string(_root.$meta, 'about.learn_more', {}) ?? 'Learn more';
			case 'about.learn_more_url': return TranslationOverrides.string(_root.$meta, 'about.learn_more_url', {}) ?? 'https://pibi.studio';
			case 'about.intro_title': return TranslationOverrides.string(_root.$meta, 'about.intro_title', {}) ?? 'About us';
			case 'about.intro_content': return TranslationOverrides.string(_root.$meta, 'about.intro_content', {}) ?? 'We are ex-Googlers, GDEs and experts from top companies helping Founders and Makers build high-quality consumer apps.';
			case 'about.purpose_title': return TranslationOverrides.string(_root.$meta, 'about.purpose_title', {}) ?? 'Our purpose';
			case 'about.purpose_content': return TranslationOverrides.string(_root.$meta, 'about.purpose_content', {}) ?? 'We build our own consumer apps with our tools and expertise. The same quality is offered to our clients. We built this template to show Flutter base template of ShipFlutter project. It shows best practices and base structure';
			case 'about.hint_title': return TranslationOverrides.string(_root.$meta, 'about.hint_title', {}) ?? 'Did you know...';
			case 'about.hint_content': return TranslationOverrides.string(_root.$meta, 'about.hint_content', {}) ?? 'ShipFlutter is more than a boilerplate. It\'s a fully customizable starter kit to seamlessly launch responsive Android, iOS, and Web apps with Flutter powered by Firebase and Vertex AI.';
			case 'settings.title': return TranslationOverrides.string(_root.$meta, 'settings.title', {}) ?? 'Settings';
			case 'settings.theme_mode': return TranslationOverrides.string(_root.$meta, 'settings.theme_mode', {}) ?? 'Light/Dark mode';
			case 'settings.privacy': return TranslationOverrides.string(_root.$meta, 'settings.privacy', {}) ?? 'Privacy Policy';
			case 'settings.terms': return TranslationOverrides.string(_root.$meta, 'settings.terms', {}) ?? 'Terms of service';
			case 'settings.support': return TranslationOverrides.string(_root.$meta, 'settings.support', {}) ?? 'Support';
			case 'settings.rate': return TranslationOverrides.string(_root.$meta, 'settings.rate', {}) ?? 'Rate us';
			case 'settings.feedback': return TranslationOverrides.string(_root.$meta, 'settings.feedback', {}) ?? 'Share feedback';
			case 'settings.disconnect': return TranslationOverrides.string(_root.$meta, 'settings.disconnect', {}) ?? 'Disconnect';
			case 'settings.delete': return TranslationOverrides.string(_root.$meta, 'settings.delete', {}) ?? 'Delete account';
			case 'onboarding.hero_title_start': return TranslationOverrides.string(_root.$meta, 'onboarding.hero_title_start', {}) ?? 'Welcome to ShipFlutter template!';
			case 'onboarding.hero_text_start': return TranslationOverrides.string(_root.$meta, 'onboarding.hero_text_start', {}) ?? 'A base template to show Flutter power';
			case 'onboarding.hero_title_end': return TranslationOverrides.string(_root.$meta, 'onboarding.hero_title_end', {}) ?? 'Flutter template Tutorial end title';
			case 'onboarding.hero_text_end': return TranslationOverrides.string(_root.$meta, 'onboarding.hero_text_end', {}) ?? 'Create an account now to enjoy all the features';
			case 'onboarding.skip': return TranslationOverrides.string(_root.$meta, 'onboarding.skip', {}) ?? 'Skip';
			case 'onboarding.login': return TranslationOverrides.string(_root.$meta, 'onboarding.login', {}) ?? 'Continue';
			case 'onboarding.not_now': return TranslationOverrides.string(_root.$meta, 'onboarding.not_now', {}) ?? 'Not now';
			default: return null;
		}
	}
}
