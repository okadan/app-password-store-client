import 'dart:async';

final class SubscriptionManager {
  final Map<int, StreamController> _controllers = {};
  final Map<int, StreamController> _subscribers = {};

  Stream<T> createStream<T>(Future<T> Function() fetcher) {
    final key = DateTime.now().microsecondsSinceEpoch;
    final controller = StreamController<T>(onCancel: () {
      _controllers.remove(key)?.close();
      _subscribers.remove(key)?.close();
    });
    void publisher(Future<T> future) => future
      .then(controller.add)
      .catchError(controller.addError);
    _subscribers[key] = StreamController(
      onListen: () => publisher(fetcher()),
    )..stream.listen((_) => publisher(fetcher()));
    _controllers[key] = controller;
    return controller.stream;
  }

  void publish() {
    for (final subscription in _subscribers.values) {
      subscription.add(null);
    }
  }
}
