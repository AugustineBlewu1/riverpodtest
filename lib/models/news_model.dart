// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class NewsModel {
  String? activity;
  String? type;
  int? participants;
  double? price;
  double? accessibility;
  NewsModel({
    this.activity,
    this.type,
    this.participants,
    this.price,
    this.accessibility,
  });

  NewsModel copyWith({
    String? activity,
    String? type,
    int? participants,
    double? price,
    double? accessibility,
  }) {
    return NewsModel(
      activity: activity ?? this.activity,
      type: type ?? this.type,
      participants: participants ?? this.participants,
      price: price ?? this.price,
      accessibility: accessibility ?? this.accessibility,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activity': activity,
      'type': type,
      'participants': participants,
      'price': price,
      'accessibility': accessibility,
    };
  }

  factory NewsModel.fromMap(Map<String, dynamic> map) {
    return NewsModel(
      activity: map['activity'] != null ? map['activity']!.toString(): null,
      type: map['type'] != null ? map['type']!.toString() : null,
      participants: map['participants'] != null ? int.parse(map['participants'])  : null,
      price: map['price'] != null ? double.parse(map['price']): null,
      accessibility: map['accessibility'] != null ? double.parse(map['accessibility'])  : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory NewsModel.fromJson(String source) => NewsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NewsModel(activity: $activity, type: $type, participants: $participants, price: $price, accessibility: $accessibility)';
  }

  @override
  bool operator ==(covariant NewsModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.activity == activity &&
      other.type == type &&
      other.participants == participants &&
      other.price == price &&
      other.accessibility == accessibility;
  }

  @override
  int get hashCode {
    return activity.hashCode ^
      type.hashCode ^
      participants.hashCode ^
      price.hashCode ^
      accessibility.hashCode;
  }
}
