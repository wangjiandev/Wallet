import 'package:flutter/material.dart';

class CardModel {
  List<CardResult> resultes;

  CardModel({this.resultes});

  CardModel.fromJson(Map<String, dynamic> json) {
    if (json['cardResultes'] != null) {
      resultes = List<CardResult>();
      json['cardResultes'].forEach((v) {
        resultes.add(CardResult.fromJson(v));
      });
    }
  }
}

class CardResult {
  String cardHolderName;
  String cardNumber;
  String cardMonth;
  String cardYear;
  String cardCvv;
  Color cardColor;
  String cardType;

  CardResult({
    this.cardHolderName,
    this.cardNumber,
    this.cardMonth,
    this.cardYear,
    this.cardCvv,
    this.cardColor,
    this.cardType,
  });

  CardResult.fromJson(Map<String, dynamic> json) {
    cardHolderName = json['cardHolderName'];
    cardNumber = json['cardNumber'];
    cardMonth = json['cardMonth'];
    cardYear = json['cardYear'];
    cardCvv = json['cardCvv'];
    cardColor = json['cardColor'];
    cardType = json['cardType'];
  }
}
