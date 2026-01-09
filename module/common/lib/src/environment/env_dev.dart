import 'package:common/src/environment/prod_configuration.dart';
import 'package:envied/envied.dart';

part 'env_dev.g.dart';

@Envied(
  obfuscate: true,
  path: 'assets/env/.dev.env',
)
/// Development environment configuration implementation.
final class DevEnv implements ProductConfiguration {
  @EnviedField(varName: 'BASE_URL')
  final String _baseUrl = _DevEnv._baseUrl;

  @EnviedField(varName: 'API_KEY')
  final String _apiKey = _DevEnv._apiKey;

  @override
  String get baseUrl => _baseUrl;

  @override
  String get apiKey => _apiKey;
}
