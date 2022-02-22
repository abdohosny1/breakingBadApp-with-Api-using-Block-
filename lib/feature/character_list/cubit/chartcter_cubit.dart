import '../../../cort/model/characters_model.dart';
import '../data/repository/character_repostery.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../constant/colors.dart';

part 'chartcter_state.dart';

class ChartcterCubit extends Cubit<ChartcterState> {
  late CharacterRepository characterRepository;

  List<Character> allCharacters = [];
  List<Character> searchList = [];
  bool isSearch = false;
  final searchControler = TextEditingController();

  ChartcterCubit(this.characterRepository) : super(ChartcterInitial());

  static ChartcterCubit get(context) => BlocProvider.of(context);

  List<Character> getAllCharacter() {
    // emit(ChartcterLoadedText());
    characterRepository.getAllCgaracter().then((characters) {
      emit(ChartcterLoaded(characters));
      allCharacters = characters;
      print('Char');
      print(characters);
      // emit(ChartcterDon());
    });
    return allCharacters;
  }

  void addSearchForItem(String searchCharcter) {
    searchList = allCharacters
        .where((charcter) =>
            charcter.name.toLowerCase().startsWith(searchCharcter))
        .toList();
    print("search list ===> ${searchList}");
    //emit(SearchCharcter());
    emit(ChartcterLoaded(searchList));
  }

  Widget bulidAppbarListWidgetIsSearch(context) {
    return IconButton(
        onPressed: () {
          clearControler();
          getAllCharacter();
          //emit(ChartcterLoaded(allCharacters));
          Navigator.of(context).pop();
        },
        icon: const Icon(
          Icons.clear,
          color: MyColors.kGreyColor,
        ));
  }

  Widget bulidAppbarListWidgetIsNotSearch(context) {
    return IconButton(
        onPressed: () {
          ModalRoute.of(context)
              ?.addLocalHistoryEntry(LocalHistoryEntry(onRemove: stopSearch));

          isSearch = true;
          //  emit(ChangeSearchCharcter());
        },
        icon: const Icon(
          Icons.search,
          color: MyColors.kGreyColor,
        ));
  }

  void stopSearch() {
    clearControler();
    isSearch = false;
    // emit(StopSearchCharcter());
  }

  void clearControler() {
    searchControler.clear();
    //emit(ClearControlerSearchCharcter());
  }

  @override
  Future<void> close() {
    // TODO: implement close
    searchControler.dispose();
    return super.close();
  }
}
