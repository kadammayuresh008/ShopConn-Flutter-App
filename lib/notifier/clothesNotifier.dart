
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:shopconn/models/clothes.dart';

class ClothesNotifier with ChangeNotifier{
  List<Clothes> _clothesList=[];
  Clothes _currentClothes;

  UnmodifiableListView<Clothes> get  clothesList=>UnmodifiableListView(_clothesList);
  Clothes get currentClothes =>_currentClothes;

  set clothesList(List<Clothes> clothesList){
    _clothesList = clothesList;
    notifyListeners();
  } 

   set currentClothes(Clothes clothes){
    _currentClothes= clothes;
    notifyListeners();
  } 

   addCloth(Clothes clothes){
     _clothesList.insert(0,clothes);
      notifyListeners();
   }

   deleteCloth(Clothes clothes){
     _clothesList.remove((_clothes)=>_clothes.id==clothes.id);
      notifyListeners();
   }

}