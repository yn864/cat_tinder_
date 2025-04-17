import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cat_app/domain/entities/cat.dart';
import 'package:equatable/equatable.dart';

part 'liked_cats_state.dart';

class LikedCatsCubit extends Cubit<LikedCatsState> {
  LikedCatsCubit() : super(const LikedCatsInitial(filteredCats: []));

  final List<Cat> _allCats = [];
  List<Cat> _filteredCats = [];
  String? _selectedBreed;

  List<Cat> get allLikedCats => _allCats;

  List<Cat> get filteredCats => _filteredCats;

  void addLikedCat(Cat cat) {
    _allCats.add(cat);
    _filterCats();
    emit(LikedCatsUpdated(filteredCats: _filteredCats));
  }

  void deleteCat(String catId) {
    _allCats.removeWhere((cat) => cat.id == catId);
    _filterCats();
    emit(LikedCatsUpdated(filteredCats: _filteredCats));
  }

  void filterCats(String? breed) {
    _selectedBreed = breed;
    _filterCats();
    emit(LikedCatsUpdated(filteredCats: _filteredCats));
  }

  void searchCats(String query) {
    _filterCats(query);
    emit(LikedCatsUpdated(filteredCats: _filteredCats));
  }

  void _filterCats([String query = '']) {
    _filteredCats =
        _allCats.where((cat) {
          final breedMatch =
              _selectedBreed == null || cat.breed == _selectedBreed;
          final searchMatch = cat.breed.toLowerCase().contains(
            query.toLowerCase(),
          );
          return breedMatch && searchMatch;
        }).toList();
  }
}
