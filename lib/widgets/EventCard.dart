import 'package:flutter/material.dart';

import '../Theme/app_colors.dart';
import '../screens/EventScreen.dart';
import '../services/get_it_service.dart';
import '../services/navigation_service.dart';

class EventCard extends StatelessWidget {
  EventCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.date,
    required this.price,
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final String description;
  final String date;
  final String price;

  final NavigationService _navigationService =
  get_it_instance_const<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        clipBehavior: Clip.antiAlias,
        child: GestureDetector(
          onTap: () {
            // _navigationService.navigateTo(RoutePath.Event);
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (_) => EventScreen()));
          },
          child: Container(
            color: AppColors.black,
            // padding: EdgeInsets.all(8),
            width: 400,
            height: 120,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  // width: 100,
                    height: 120,
                    imageUrl),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                SizedBox(width: 130, child: Text(title, overflow: TextOverflow.ellipsis)),
                                SizedBox(
                                  width: 110,
                                  child: Text(description,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(date),
                                Text(price),
                              ],
                            ),
                          ],
                        ),
                        MaterialButton(
                          minWidth: 100,
                          height: 30,
                          color: AppColors.primaryAccent,
                          padding: EdgeInsets.all(2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => EventScreen(
                                  imageUrl: imageUrl,
                                  title: title,
                                  price: price,
                                  description: description,
                                  date: date,
                                ),
                              ),
                            );
                          },
                          child: Text(
                            'See Details',
                            style: TextStyle(color: AppColors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}