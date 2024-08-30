import 'package:lite_ref/lite_ref.dart';
import 'package:flutter_template/modules/base/home/home_events.dart';
import 'package:flutter_template/modules/base/home/home_service.dart';
import 'package:flutter_template/modules/base/home/model/home_state.dart';
import 'package:context_watch_signals/context_watch_signals.dart';

final homeController = Ref.scoped(
  (ctx) => HomeController(
    homeService.instance,
  )..dispatch(HomeEvent.init),
);

class HomeController extends Disposable {
  HomeController(this._service);

  final HomeService _service;

  final _state = asyncSignal<HomeState>(AsyncState.loading());
  ReadonlySignal<AsyncState<HomeState>> get state => _state;

  Future<void> dispatch(HomeEvent event) {
    switch (event) {
      case HomeEvent.init:
        return _load();
      case HomeEvent.reload:
        return _load(force: true);
    }
  }

  Future<void> _load({bool force = false}) {
    _state.value = const AsyncLoading();
    return _service.load(force: force).then((items) {
      _state.value = AsyncData(
        HomeState(
          showBanner: true, // Add logic about showing or not the banner
          items: items,
        ),
      );
    }).catchError((e, s) {
      _state.value = AsyncError(e, s);
    });
  }

  @override
  void dispose() {
    _state.dispose();
  }
}
