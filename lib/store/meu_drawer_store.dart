import 'package:mobx/mobx.dart';
part 'meu_drawer_store.g.dart';

class MeuDrawerStore = _MeuDrawerStoreBase with _$MeuDrawerStore;

abstract class _MeuDrawerStoreBase with Store {
  @observable
  int selected = 0;
  @action
  void setSelected(int v) => selected = v;
}
