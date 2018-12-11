import 'dart:async';
import 'dart:convert';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../model/card_model.dart';
import '../helpers/card_colors.dart';

class CardListBloc {
  BehaviorSubject<List<CardResult>> _cardCollection =
      BehaviorSubject<List<CardResult>>();

  List<CardResult> _cardResultes;

  Stream<List<CardResult>> get cardList => _cardCollection.stream;

  void initialData() async {
    var initialData = await rootBundle.loadString('data/initialData.json');
    var decodedJson = jsonDecode(initialData);
    _cardResultes = CardModel.fromJson(decodedJson).resultes;
    for (var i = 0; i < _cardResultes.length; i++) {
      _cardResultes[i].cardColor = CardColor.baseColors[i];
    }
    _cardCollection.sink.add(_cardResultes);
  }

  CardListBloc() {
    initialData();
  }

  void dispose() {
    _cardCollection.close();
  }
}

final cardListBloc = CardListBloc();
