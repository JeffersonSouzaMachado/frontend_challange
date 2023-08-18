import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:frontend_challange/data/http/exception.dart';
import 'package:frontend_challange/data/models/repository_model.dart';
import 'package:frontend_challange/data/repositories/users_repository.dart';

class RepositoriesStore {
  final UserRepositoryImp repositorie;

  final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);

  final ValueNotifier<List<RepositoryModel>> state = ValueNotifier<List<RepositoryModel>>([]);

  final ValueNotifier<String> error = ValueNotifier<String>('');

  RepositoriesStore({required this.repositorie});

  Future getRepos() async {
    isLoading.value = true;

    try {
      final result = await repositorie.getUsers();
      state.value = result;
    } on NotFoundExeception catch (e) {
      log(e.toString());
      error.value = e.message;
    } catch (e) {
      log(e.toString());
      error.value = e.toString();
    }

    isLoading.value = false;
  }
}
