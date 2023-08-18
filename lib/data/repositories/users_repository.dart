import 'dart:convert';
import 'dart:developer';

import 'package:frontend_challange/data/http/exception.dart';
import 'package:frontend_challange/data/http/http_client.dart';
import 'package:frontend_challange/data/models/repository_model.dart';

abstract class UserRepositoryImp {
  Future<List<RepositoryModel>> getUsers();
}

class UserRepository implements UserRepositoryImp {
  final HttpClientImp client;

  UserRepository({required this.client});

  @override
  Future<List<RepositoryModel>> getUsers() async {
    var response = await client.get(url: 'https://api.github.com/repositories');

    log('$response');

    if (response.statusCode == 200) {
      final List<RepositoryModel> repositories = [];

      final body = jsonDecode(response.body);

      body.map((item) {
        final RepositoryModel repositorie = RepositoryModel.fromMap(item);
        repositories.add(repositorie);
      }).toList();
      return repositories;
    } else if (response.statusCode == 404) {
      throw NotFoundExeception('A url informada não é válida!');
    } else {
      throw Exception('Não possivel carregar os repositórios');
    }
  }
}
