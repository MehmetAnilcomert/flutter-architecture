import 'package:architecture_template/product/service/manager/service_path.dart';
import 'package:common/index.dart';
import 'package:vexana/vexana.dart';

/// A class responsible for managing login functionalities.
final class LoginService {
  /// Creates an instance of [LoginService] with the provided [INetworkManager].
  LoginService({required INetworkManager<EmptyModel> networkManager})
    : _networkManager = networkManager;

  /// The network manager used for handling network requests.
  final INetworkManager<EmptyModel> _networkManager;

  Future<List<User>> fetchUsers() async {
    final response = await _networkManager.send<User, List<User>>(
      ProductServicePath.posts.value,
      parseModel: const User(),
      method: RequestType.GET,
    );
    return response.data ?? [];
  }
}
