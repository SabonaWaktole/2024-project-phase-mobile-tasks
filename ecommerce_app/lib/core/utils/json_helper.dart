import 'dart:convert';


class JsonHelper {
  /// Decodes a JSON string into a list of models using a provided `fromJson` method.
  static List<T> decodeFromStringList<T>(
    String jsonStr,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    final List decoded = json.decode(jsonStr) as List;
    return decoded.map((e) => fromJson(e)).toList();
  }

  /// Encodes a list of models into a list of JSON strings using `toJson`.
  static List<String> encodeToStringList<T>(
    List<T> items,
    Map<String, dynamic> Function(T) toJson,
  ) {
    return items.map((e) => json.encode(toJson(e))).toList();
  }

  /// Decodes a JSON string into a single model using a provided `fromJson` method.
  static T decodeSingle<T>(
    String jsonStr,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    final Map<String, dynamic> decoded = json.decode(jsonStr);
    return fromJson(decoded);
  }

  /// Encodes a single model into a JSON string using a provided `toJson` method.
  static String encodeSingle<T>(
    T item,
    Map<String, dynamic> Function(T) toJson,
  ) {
    return json.encode(toJson(item));
  }

}
