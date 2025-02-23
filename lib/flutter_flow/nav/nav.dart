import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

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
          appStateNotifier.loggedIn ? HomeScreenWidget() : WelcomscreenWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? HomeScreenWidget()
              : WelcomscreenWidget(),
        ),
        FFRoute(
          name: HomePageWidget.routeName,
          path: HomePageWidget.routePath,
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: WelcomscreenWidget.routeName,
          path: WelcomscreenWidget.routePath,
          builder: (context, params) => WelcomscreenWidget(),
        ),
        FFRoute(
          name: RegisterWidget.routeName,
          path: RegisterWidget.routePath,
          builder: (context, params) => RegisterWidget(),
        ),
        FFRoute(
          name: VerivicationscreenWidget.routeName,
          path: VerivicationscreenWidget.routePath,
          builder: (context, params) => VerivicationscreenWidget(),
        ),
        FFRoute(
          name: VerivicationSuccessWidget.routeName,
          path: VerivicationSuccessWidget.routePath,
          builder: (context, params) => VerivicationSuccessWidget(),
        ),
        FFRoute(
          name: VerivicatiionFailedWidget.routeName,
          path: VerivicatiionFailedWidget.routePath,
          builder: (context, params) => VerivicatiionFailedWidget(),
        ),
        FFRoute(
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: HomeScreenWidget.routeName,
          path: HomeScreenWidget.routePath,
          builder: (context, params) => HomeScreenWidget(),
        ),
        FFRoute(
          name: SubDetailTaskSunahWidget.routeName,
          path: SubDetailTaskSunahWidget.routePath,
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
          name: DetailTaskSunahWidget.routeName,
          path: DetailTaskSunahWidget.routePath,
          builder: (context, params) => DetailTaskSunahWidget(),
        ),
        FFRoute(
          name: StatistikWidget.routeName,
          path: StatistikWidget.routePath,
          builder: (context, params) => StatistikWidget(),
        ),
        FFRoute(
          name: SubstatistikWidget.routeName,
          path: SubstatistikWidget.routePath,
          builder: (context, params) => SubstatistikWidget(),
        ),
        FFRoute(
          name: HomeSholatWidget.routeName,
          path: HomeSholatWidget.routePath,
          builder: (context, params) => HomeSholatWidget(),
        ),
        FFRoute(
          name: DetailKiblatWidget.routeName,
          path: DetailKiblatWidget.routePath,
          builder: (context, params) => DetailKiblatWidget(),
        ),
        FFRoute(
          name: DetailJadwalSholatWidget.routeName,
          path: DetailJadwalSholatWidget.routePath,
          builder: (context, params) => DetailJadwalSholatWidget(),
        ),
        FFRoute(
          name: KalenderMasehiWidget.routeName,
          path: KalenderMasehiWidget.routePath,
          builder: (context, params) => KalenderMasehiWidget(),
        ),
        FFRoute(
          name: KalenderHijriahWidget.routeName,
          path: KalenderHijriahWidget.routePath,
          builder: (context, params) => KalenderHijriahWidget(),
        ),
        FFRoute(
          name: DetailazanWidget.routeName,
          path: DetailazanWidget.routePath,
          builder: (context, params) => DetailazanWidget(),
        ),
        FFRoute(
          name: LocationWidget.routeName,
          path: LocationWidget.routePath,
          builder: (context, params) => LocationWidget(),
        ),
        FFRoute(
          name: AlquranWidget.routeName,
          path: AlquranWidget.routePath,
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
          name: HomeDoaWidget.routeName,
          path: HomeDoaWidget.routePath,
          builder: (context, params) => HomeDoaWidget(),
        ),
        FFRoute(
          name: DoadoaWidget.routeName,
          path: DoadoaWidget.routePath,
          builder: (context, params) => DoadoaWidget(),
        ),
        FFRoute(
          name: DetailDoaWidget.routeName,
          path: DetailDoaWidget.routePath,
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
          name: MyMenuWidget.routeName,
          path: MyMenuWidget.routePath,
          builder: (context, params) => MyMenuWidget(),
        ),
        FFRoute(
          name: MyProfileWidget.routeName,
          path: MyProfileWidget.routePath,
          builder: (context, params) => MyProfileWidget(),
        ),
        FFRoute(
          name: MyDashboardWidget.routeName,
          path: MyDashboardWidget.routePath,
          builder: (context, params) => MyDashboardWidget(),
        ),
        FFRoute(
          name: MySettingWidget.routeName,
          path: MySettingWidget.routePath,
          builder: (context, params) => MySettingWidget(),
        ),
        FFRoute(
          name: MySettingCollorWidget.routeName,
          path: MySettingCollorWidget.routePath,
          builder: (context, params) => MySettingCollorWidget(),
        ),
        FFRoute(
          name: MyNotificationsWidget.routeName,
          path: MyNotificationsWidget.routePath,
          builder: (context, params) => MyNotificationsWidget(),
        ),
        FFRoute(
          name: AdhansNotificationWidget.routeName,
          path: AdhansNotificationWidget.routePath,
          builder: (context, params) => AdhansNotificationWidget(),
        ),
        FFRoute(
          name: PrayertimeWidget.routeName,
          path: PrayertimeWidget.routePath,
          builder: (context, params) => PrayertimeWidget(),
        ),
        FFRoute(
          name: IslamicCalendarWidget.routeName,
          path: IslamicCalendarWidget.routePath,
          builder: (context, params) => IslamicCalendarWidget(),
        ),
        FFRoute(
          name: DuaWidget.routeName,
          path: DuaWidget.routePath,
          builder: (context, params) => DuaWidget(),
        ),
        FFRoute(
          name: DuaTranslationWidget.routeName,
          path: DuaTranslationWidget.routePath,
          builder: (context, params) => DuaTranslationWidget(),
        ),
        FFRoute(
          name: DuaRecitationWidget.routeName,
          path: DuaRecitationWidget.routePath,
          builder: (context, params) => DuaRecitationWidget(),
        ),
        FFRoute(
          name: LanguageWidget.routeName,
          path: LanguageWidget.routePath,
          builder: (context, params) => LanguageWidget(),
        ),
        FFRoute(
          name: LanguageAppWidget.routeName,
          path: LanguageAppWidget.routePath,
          builder: (context, params) => LanguageAppWidget(),
        ),
        FFRoute(
          name: PrayerNamesWidget.routeName,
          path: PrayerNamesWidget.routePath,
          builder: (context, params) => PrayerNamesWidget(),
        ),
        FFRoute(
          name: LegalWidget.routeName,
          path: LegalWidget.routePath,
          builder: (context, params) => LegalWidget(),
        ),
        FFRoute(
          name: TermCOnditionWidget.routeName,
          path: TermCOnditionWidget.routePath,
          builder: (context, params) => TermCOnditionWidget(),
        ),
        FFRoute(
          name: PrivacyPoliceWidget.routeName,
          path: PrivacyPoliceWidget.routePath,
          builder: (context, params) => PrivacyPoliceWidget(),
        ),
        FFRoute(
          name: AcknowledgementsIOSWidget.routeName,
          path: AcknowledgementsIOSWidget.routePath,
          builder: (context, params) => AcknowledgementsIOSWidget(),
        ),
        FFRoute(
          name: SubscribeWidget.routeName,
          path: SubscribeWidget.routePath,
          builder: (context, params) => SubscribeWidget(),
        ),
        FFRoute(
          name: PaymentsuccesWidget.routeName,
          path: PaymentsuccesWidget.routePath,
          builder: (context, params) => PaymentsuccesWidget(
            linkUrl: params.getParam(
              'linkUrl',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: PaymentfailedWidget.routeName,
          path: PaymentfailedWidget.routePath,
          builder: (context, params) => PaymentfailedWidget(),
        ),
        FFRoute(
          name: RateandcomandWidget.routeName,
          path: RateandcomandWidget.routePath,
          builder: (context, params) => RateandcomandWidget(
            rateName: params.getParam(
              'rateName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: COmandWidget.routeName,
          path: COmandWidget.routePath,
          builder: (context, params) => COmandWidget(),
        ),
        FFRoute(
          name: HomeAlquranWidget.routeName,
          path: HomeAlquranWidget.routePath,
          builder: (context, params) => HomeAlquranWidget(),
        ),
        FFRoute(
          name: HomeAlquranCopyWidget.routeName,
          path: HomeAlquranCopyWidget.routePath,
          builder: (context, params) => HomeAlquranCopyWidget(),
        ),
        FFRoute(
          name: LanjutAlquranWidget.routeName,
          path: LanjutAlquranWidget.routePath,
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
          name: DoadoaByKategoriWidget.routeName,
          path: DoadoaByKategoriWidget.routePath,
          builder: (context, params) => DoadoaByKategoriWidget(
            idkategori: params.getParam(
              'idkategori',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: MyeditProfilWidget.routeName,
          path: MyeditProfilWidget.routePath,
          builder: (context, params) => MyeditProfilWidget(),
        ),
        FFRoute(
          name: KiblatWidget.routeName,
          path: KiblatWidget.routePath,
          builder: (context, params) => KiblatWidget(),
        ),
        FFRoute(
          name: ListUserHelpSupportWidget.routeName,
          path: ListUserHelpSupportWidget.routePath,
          builder: (context, params) => ListUserHelpSupportWidget(),
        ),
        FFRoute(
          name: ListUserWidget.routeName,
          path: ListUserWidget.routePath,
          builder: (context, params) => ListUserWidget(),
        ),
        FFRoute(
          name: DetailUserWidget.routeName,
          path: DetailUserWidget.routePath,
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
          name: AlqurancobaWidget.routeName,
          path: AlqurancobaWidget.routePath,
          builder: (context, params) => AlqurancobaWidget(),
        ),
        FFRoute(
          name: ListmybookmarkWidget.routeName,
          path: ListmybookmarkWidget.routePath,
          builder: (context, params) => ListmybookmarkWidget(),
        ),
        FFRoute(
          name: DoadoaByKategorinewWidget.routeName,
          path: DoadoaByKategorinewWidget.routePath,
          builder: (context, params) => DoadoaByKategorinewWidget(
            idkategori: params.getParam(
              'idkategori',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: ListRateCommandWidget.routeName,
          path: ListRateCommandWidget.routePath,
          builder: (context, params) => ListRateCommandWidget(),
        ),
        FFRoute(
          name: WebviewPembayaranWidget.routeName,
          path: WebviewPembayaranWidget.routePath,
          builder: (context, params) => WebviewPembayaranWidget(
            linkUlr: params.getParam(
              'linkUlr',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: List10OrderHistoryWidget.routeName,
          path: List10OrderHistoryWidget.routePath,
          builder: (context, params) => List10OrderHistoryWidget(),
        ),
        FFRoute(
          name: DetailAlquranWidget.routeName,
          path: DetailAlquranWidget.routePath,
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
          name: SubscribeCopyWidget.routeName,
          path: SubscribeCopyWidget.routePath,
          builder: (context, params) => SubscribeCopyWidget(),
        ),
        FFRoute(
          name: NewkiblatWidget.routeName,
          path: NewkiblatWidget.routePath,
          builder: (context, params) => NewkiblatWidget(),
        ),
        FFRoute(
          name: ListsunnahWidget.routeName,
          path: ListsunnahWidget.routePath,
          builder: (context, params) => ListsunnahWidget(),
        ),
        FFRoute(
          name: DaftaradminsunnahWidget.routeName,
          path: DaftaradminsunnahWidget.routePath,
          builder: (context, params) => DaftaradminsunnahWidget(),
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

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
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
