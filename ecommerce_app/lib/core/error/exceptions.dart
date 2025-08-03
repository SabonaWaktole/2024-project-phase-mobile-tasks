class ServerException implements Exception {}
// You can define CacheException in a separate file for clean error handling
class CacheException implements Exception {
  final String message;
  CacheException(this.message);

  @override
  String toString() => 'CacheException: $message';
}