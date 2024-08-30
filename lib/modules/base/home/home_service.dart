import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:lite_ref/lite_ref.dart';
import 'package:flutter_template/modules/base/home/model/home_item.dart';

final homeService = Ref.singleton(() => HomeService());

class HomeService {
  late final options = CacheOptions(
    store: MemCacheStore(),
    policy: CachePolicy.forceCache,
  );

  late final _dio = Dio()
    ..interceptors.add(
      DioCacheInterceptor(options: options),
    );

  List<HomeItem> _items = [];

  Future<HomeItem> loadSingle(String id) async {
    final cached = _items.firstWhereOrNull((item) => item.id == id);
    if (cached != null) {
      return cached.copyWith(imageUrl: "https://picsum.photos/id/$id/512/512");
    }
    return _dio.get("https://official-joke-api.appspot.com/jokes/$id").then(
          (response) => _parse(response.data, size: 512),
        );
  }

  Future<List<HomeItem>> load({bool force = false}) {
    return _dio.get("https://official-joke-api.appspot.com/random_ten").then(
      (response) {
        return _items = (response.data as List<dynamic>)
            .map((joke) => _parse(joke))
            .toList();
      },
    );
  }

  HomeItem _parse(dynamic json, {int size = 128}) => HomeItem(
        id: json["id"].toString(),
        title: json["setup"],
        description: json["punchline"],
        imageUrl: "https://picsum.photos/id/${json["id"]}/$size/$size",
        tags: [json["type"]],
      );
}
