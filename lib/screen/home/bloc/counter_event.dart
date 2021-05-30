enum CounterEvent {
  increment,

  /// Notifies bloc to decrement state.
  decrement,

  /// Notifies the bloc of an error
  error,
}
