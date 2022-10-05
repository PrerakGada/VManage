import 'dart:convert';
import 'dart:io';

class Event {
  final String id;
  final String title;
  final String details;
  final String event_held_date;
  final String event_held_time;
  final String views;
  final File event_image;

  const Event({
    required this.id,
    required this.title,
    required this.details,
    required this.event_held_date,
    required this.event_held_time,
    required this.views,
    required this.event_image,
  });

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      details: map['details'] ?? '',
      event_held_date: map['event_held_date'] ?? '',
      event_held_time: map['event_held_time'] ?? '',
      views: map['views'] ?? '',
      event_image: map['event_image'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'details': details,
      'event_held_date': event_held_date,
      'event_held_time': event_held_time,
      'views': views,
      'event_image': event_image,
    };
  }

  factory Event.fromJson(String source) {
    return Event.fromMap(json.decode(source));
  }

  String toJson() {
    return json.encode(toMap());
  }
}
