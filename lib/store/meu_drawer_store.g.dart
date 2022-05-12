// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meu_drawer_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MeuDrawerStore on _MeuDrawerStoreBase, Store {
  final _$selectedAtom = Atom(name: '_MeuDrawerStoreBase.selected');

  @override
  int get selected {
    _$selectedAtom.reportRead();
    return super.selected;
  }

  @override
  set selected(int value) {
    _$selectedAtom.reportWrite(value, super.selected, () {
      super.selected = value;
    });
  }

  final _$_MeuDrawerStoreBaseActionController =
      ActionController(name: '_MeuDrawerStoreBase');

  @override
  void setSelected(int v) {
    final _$actionInfo = _$_MeuDrawerStoreBaseActionController.startAction(
        name: '_MeuDrawerStoreBase.setSelected');
    try {
      return super.setSelected(v);
    } finally {
      _$_MeuDrawerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selected: ${selected}
    ''';
  }
}
