// import 'package:eos_hackover3/models/event.dart';
// import 'package:http/http.dart';

// class GetAllEvents {
//   void getEventList() async {
//     final response = await get(
//         "https://hackoverhackathon.pythonanywhere.com/accounts/Alleventsview");
//     final items = json.decode(response.body).cast<Map<String, dynamic>>();
//     List<Event> events = items.map<Event>((json) {
//       return Event.fromJson(json);
//     }).toList();
//     return events;
//   }
// }
