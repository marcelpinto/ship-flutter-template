import 'package:lite_ref/lite_ref.dart';
import 'package:flutter_template/modules/base/home/home_service.dart';
import 'package:flutter_template/modules/base/home/model/home_item.dart';
import 'package:context_watch_signals/context_watch_signals.dart';

final detailsController = Ref.scopedFamily(
  (ctx, String key) => DetailsController(
    homeService.instance,
  )..dispatch(key),
);

class DetailsController extends Disposable {
  DetailsController(this._service);

  final HomeService _service;

  final _state = asyncSignal<HomeItem>(AsyncState.loading());
  ReadonlySignal<AsyncState<HomeItem>> get state => _state;

  Future<void> dispatch(String id) {
    _state.value = const AsyncLoading();
    return _service.loadSingle(id).then((item) {
      _state.value = AsyncData(item);
    }).catchError((e, s) {
      _state.value = AsyncError(e, s);
    });
  }

  @override
  void dispose() {
    _state.dispose();
  }
}
