import 'package:breaking_bad_mobx/service/breaking_bad_service.dart';
import 'package:mobx/mobx.dart';

import '../model/breaking_bad_model.dart';
part 'breaking_bad_viewmodel.g.dart';

// ignore: library_private_types_in_public_api
class BreakingBadViewModel = _BreakingBadViewModelBase
    with _$BreakingBadViewModel;

abstract class _BreakingBadViewModelBase with Store {
  _BreakingBadViewModelBase() {
    allCharList();
  }
  final BreakingBadService breakingBadService = BreakingBadService();

  @observable
  List<BreakingBadModel> charlist = [];

  @observable
  bool isLoading = false;

  @action
  Future<void> allCharList() async {
    changeLoading();
    try {
      final response = await breakingBadService.allCharList();
      charlist = response;
    } catch (e) {
      print("Error");
    }
    changeLoading();
  }

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }
}
