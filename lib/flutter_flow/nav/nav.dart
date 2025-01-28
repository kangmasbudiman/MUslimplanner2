import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const HomeScreenWidget() : const WelcomscreenWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? const HomeScreenWidget()
              : const WelcomscreenWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'welcomscreen',
          path: '/welcomscreen',
          builder: (context, params) => const WelcomscreenWidget(),
        ),
        FFRoute(
          name: 'register',
          path: '/register',
          builder: (context, params) => const RegisterWidget(),
        ),
        FFRoute(
          name: 'verivicationscreen',
          path: '/verivicationscreen',
          builder: (context, params) => const VerivicationscreenWidget(),
        ),
        FFRoute(
          name: 'verivicationSuccess',
          path: '/verivicationSuccess',
          builder: (context, params) => const VerivicationSuccessWidget(),
        ),
        FFRoute(
          name: 'verivicatiionFailed',
          path: '/verivicatiionFailed',
          builder: (context, params) => const VerivicatiionFailedWidget(),
        ),
        FFRoute(
          name: 'login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'HomeScreen',
          path: '/homeScreen',
          builder: (context, params) => const HomeScreenWidget(),
        ),
        FFRoute(
          name: 'subDetailTaskSunah',
          path: '/subDetailTaskSunah',
          builder: (context, params) => SubDetailTaskSunahWidget(
            idsunah: params.getParam(
              'idsunah',
              ParamType.int,
            ),
            namasunah: params.getParam(
              'namasunah',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'DetailTaskSunah',
          path: '/detailTaskSunah',
          builder: (context, params) => const DetailTaskSunahWidget(),
        ),
        FFRoute(
          name: 'statistik',
          path: '/statistik',
          builder: (context, params) => const StatistikWidget(),
        ),
        FFRoute(
          name: 'Substatistik',
          path: '/substatistik',
          builder: (context, params) => const SubstatistikWidget(),
        ),
        FFRoute(
          name: 'HomeSholat',
          path: '/homeSholat',
          builder: (context, params) => const HomeSholatWidget(),
        ),
        FFRoute(
          name: 'detailKiblat',
          path: '/detailKiblat',
          builder: (context, params) => const DetailKiblatWidget(),
        ),
        FFRoute(
          name: 'detailJadwalSholat',
          path: '/detailJadwalSholat',
          builder: (context, params) => const DetailJadwalSholatWidget(),
        ),
        FFRoute(
          name: 'kalenderMasehi',
          path: '/kalenderMasehi',
          builder: (context, params) => const KalenderMasehiWidget(),
        ),
        FFRoute(
          name: 'kalenderHijriah',
          path: '/kalenderHijriah',
          builder: (context, params) => const KalenderHijriahWidget(),
        ),
        FFRoute(
          name: 'detailazan',
          path: '/detailazan',
          builder: (context, params) => const DetailazanWidget(),
        ),
        FFRoute(
          name: 'location',
          path: '/location',
          builder: (context, params) => const LocationWidget(),
        ),
        FFRoute(
          name: 'Alquran',
          path: '/alquran',
          builder: (context, params) => AlquranWidget(
            nomorSurat: params.getParam(
              'nomorSurat',
              ParamType.String,
            ),
            namaID: params.getParam(
              'namaID',
              ParamType.String,
            ),
            revelationid: params.getParam(
              'revelationid',
              ParamType.String,
            ),
            idsurah: params.getParam(
              'idsurah',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'HomeDoa',
          path: '/homeDoa',
          builder: (context, params) => const HomeDoaWidget(),
        ),
        FFRoute(
          name: 'Doadoa',
          path: '/doadoa',
          builder: (context, params) => const DoadoaWidget(),
        ),
        FFRoute(
          name: 'DetailDoa',
          path: '/detailDoa',
          builder: (context, params) => DetailDoaWidget(
            judul: params.getParam(
              'judul',
              ParamType.String,
            ),
            arab: params.getParam(
              'arab',
              ParamType.String,
            ),
            latin: params.getParam(
              'latin',
              ParamType.String,
            ),
            terjemahan: params.getParam(
              'terjemahan',
              ParamType.String,
            ),
            hadis: params.getParam(
              'hadis',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'MyMenu',
          path: '/myMenu',
          builder: (context, params) => const MyMenuWidget(),
        ),
        FFRoute(
          name: 'MyProfile',
          path: '/myProfile',
          builder: (context, params) => const MyProfileWidget(),
        ),
        FFRoute(
          name: 'MyDashboard',
          path: '/myDashboard',
          builder: (context, params) => const MyDashboardWidget(),
        ),
        FFRoute(
          name: 'MySetting',
          path: '/mySetting',
          builder: (context, params) => const MySettingWidget(),
        ),
        FFRoute(
          name: 'MySettingCollor',
          path: '/mySettingCollor',
          builder: (context, params) => const MySettingCollorWidget(),
        ),
        FFRoute(
          name: 'MyNotifications',
          path: '/myNotifications',
          builder: (context, params) => const MyNotificationsWidget(),
        ),
        FFRoute(
          name: 'AdhansNotification',
          path: '/adhansNotification',
          builder: (context, params) => const AdhansNotificationWidget(),
        ),
        FFRoute(
          name: 'Prayertime',
          path: '/prayertime',
          builder: (context, params) => const PrayertimeWidget(),
        ),
        FFRoute(
          name: 'IslamicCalendar',
          path: '/islamicCalendar',
          builder: (context, params) => const IslamicCalendarWidget(),
        ),
        FFRoute(
          name: 'Dua',
          path: '/dua',
          builder: (context, params) => const DuaWidget(),
        ),
        FFRoute(
          name: 'DuaTranslation',
          path: '/duaTranslation',
          builder: (context, params) => const DuaTranslationWidget(),
        ),
        FFRoute(
          name: 'DuaRecitation',
          path: '/duaRecitation',
          builder: (context, params) => const DuaRecitationWidget(),
        ),
        FFRoute(
          name: 'Language',
          path: '/language',
          builder: (context, params) => const LanguageWidget(),
        ),
        FFRoute(
          name: 'LanguageApp',
          path: '/languageApp',
          builder: (context, params) => const LanguageAppWidget(),
        ),
        FFRoute(
          name: 'PrayerNames',
          path: '/prayerNames',
          builder: (context, params) => const PrayerNamesWidget(),
        ),
        FFRoute(
          name: 'Legal',
          path: '/legal',
          builder: (context, params) => const LegalWidget(),
        ),
        FFRoute(
          name: 'TermCOndition',
          path: '/termCOndition',
          builder: (context, params) => const TermCOnditionWidget(),
        ),
        FFRoute(
          name: 'PrivacyPolice',
          path: '/privacyPolice',
          builder: (context, params) => const PrivacyPoliceWidget(),
        ),
        FFRoute(
          name: 'AcknowledgementsIOS',
          path: '/acknowledgementsIOS',
          builder: (context, params) => const AcknowledgementsIOSWidget(),
        ),
        FFRoute(
          name: 'subscribe',
          path: '/subscribe',
          builder: (context, params) => const SubscribeWidget(),
        ),
        FFRoute(
          name: 'paymentsucces',
          path: '/paymentsucces',
          builder: (context, params) => PaymentsuccesWidget(
            linkUrl: params.getParam(
              'linkUrl',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'paymentfailed',
          path: '/paymentfailed',
          builder: (context, params) => const PaymentfailedWidget(),
        ),
        FFRoute(
          name: 'Rateandcomand',
          path: '/rateandcomand',
          builder: (context, params) => RateandcomandWidget(
            rateName: params.getParam(
              'rateName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'COmand',
          path: '/cOmand',
          builder: (context, params) => const COmandWidget(),
        ),
        FFRoute(
          name: 'HomeAlquran',
          path: '/homeAlquran',
          builder: (context, params) => const HomeAlquranWidget(),
        ),
        FFRoute(
          name: 'HomeAlquranCopy',
          path: '/homeAlquranCopy',
          builder: (context, params) => const HomeAlquranCopyWidget(),
        ),
        FFRoute(
          name: 'LanjutAlquran',
          path: '/lanjutAlquran',
          builder: (context, params) => LanjutAlquranWidget(
            nomorSurat: params.getParam(
              'nomorSurat',
              ParamType.String,
            ),
            namaID: params.getParam(
              'namaID',
              ParamType.String,
            ),
            revelationid: params.getParam(
              'revelationid',
              ParamType.String,
            ),
            idsurah: params.getParam(
              'idsurah',
              ParamType.int,
            ),
            ayatterahir: params.getParam(
              'ayatterahir',
              ParamType.int,
            ),
            idbookmark: params.getParam(
              'idbookmark',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'DoadoaByKategori',
          path: '/doadoaByKategori',
          builder: (context, params) => DoadoaByKategoriWidget(
            idkategori: params.getParam(
              'idkategori',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'MyeditProfil',
          path: '/myeditProfil',
          builder: (context, params) => const MyeditProfilWidget(),
        ),
        FFRoute(
          name: 'kiblat',
          path: '/kiblat',
          builder: (context, params) => const KiblatWidget(),
        ),
        FFRoute(
          name: 'listUserHelpSupport',
          path: '/listUserHelpSupport',
          builder: (context, params) => const ListUserHelpSupportWidget(),
        ),
        FFRoute(
          name: 'ListUser',
          path: '/listUser',
          builder: (context, params) => const ListUserWidget(),
        ),
        FFRoute(
          name: 'detailUser',
          path: '/detailUser',
          builder: (context, params) => DetailUserWidget(
            userid: params.getParam(
              'userid',
              ParamType.String,
            ),
            email: params.getParam(
              'email',
              ParamType.String,
            ),
            photo: params.getParam(
              'photo',
              ParamType.String,
            ),
            gender: params.getParam(
              'gender',
              ParamType.String,
            ),
            userStatus: params.getParam(
              'userStatus',
              ParamType.int,
            ),
            displayname: params.getParam(
              'displayname',
              ParamType.String,
            ),
            startuserpremium: params.getParam(
              'startuserpremium',
              ParamType.DateTime,
            ),
            enddate: params.getParam(
              'enddate',
              ParamType.DateTime,
            ),
            statusPremium: params.getParam(
              'statusPremium',
              ParamType.String,
            ),
            referenUser: params.getParam(
              'referenUser',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'alqurancoba',
          path: '/alqurancoba',
          builder: (context, params) => const AlqurancobaWidget(),
        ),
        FFRoute(
          name: 'Listmybookmark',
          path: '/listmybookmark',
          builder: (context, params) => const ListmybookmarkWidget(),
        ),
        FFRoute(
          name: 'DoadoaByKategorinew',
          path: '/doadoaByKategorinew',
          builder: (context, params) => DoadoaByKategorinewWidget(
            idkategori: params.getParam(
              'idkategori',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'listRateCommand',
          path: '/listRateCommand',
          builder: (context, params) => const ListRateCommandWidget(),
        ),
        FFRoute(
          name: 'webviewPembayaran',
          path: '/webviewPembayaran',
          builder: (context, params) => WebviewPembayaranWidget(
            linkUlr: params.getParam(
              'linkUlr',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'List10OrderHistory',
          path: '/list10OrderHistory',
          builder: (context, params) => const List10OrderHistoryWidget(),
        ),
        FFRoute(
          name: 'detailAlquran',
          path: '/detailAlquran',
          builder: (context, params) => DetailAlquranWidget(
            nomorSurat: params.getParam(
              'nomorSurat',
              ParamType.String,
            ),
            namaID: params.getParam(
              'namaID',
              ParamType.String,
            ),
            idsurah: params.getParam(
              'idsurah',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'subscribeCopy',
          path: '/subscribeCopy',
          builder: (context, params) => const SubscribeCopyWidget(),
        ),
        FFRoute(
          name: 'newkiblat',
          path: '/newkiblat',
          builder: (context, params) => const NewkiblatWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/welcomscreen';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 20.0,
                    height: 20.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).secondary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
