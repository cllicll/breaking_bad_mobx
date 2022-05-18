// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breaking_bad_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BreakingBadViewModel on _BreakingBadViewModelBase, Store {
  late final _$charlistAtom =
      Atom(name: '_BreakingBadViewModelBase.charlist', context: context);

  @override
  List<BreakingBadModel> get charlist {
    _$charlistAtom.reportRead();
    return super.charlist;
  }

  @override
  set charlist(List<BreakingBadModel> value) {
    _$charlistAtom.reportWrite(value, super.charlist, () {
      super.charlist = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_BreakingBadViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$allCharListAsyncAction =
      AsyncAction('_BreakingBadViewModelBase.allCharList', context: context);

  @override
  Future<void> allCharList() {
    return _$allCharListAsyncAction.run(() => super.allCharList());
  }

  late final _$_BreakingBadViewModelBaseActionController =
      ActionController(name: '_BreakingBadViewModelBase', context: context);

  @override
  void changeLoading() {
    final _$actionInfo = _$_BreakingBadViewModelBaseActionController
        .startAction(name: '_BreakingBadViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_BreakingBadViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
charlist: ${charlist},
isLoading: ${isLoading}
    ''';
  }
}
