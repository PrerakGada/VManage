import 'package:eos_hackover3/Theme/app_colors.dart';
import 'package:flutter/material.dart';

class EventScreen extends StatelessWidget {
  const EventScreen(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.description,
      required this.date,
      required this.price})
      : super(key: key);

  final String imageUrl;
  final String title;
  final String description;
  final String date;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Event Details')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    color: AppColors.black,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      children: [
                        Image(
                            image: NetworkImage(imageUrl),
                            width: MediaQuery.of(context).size.width * 0.9),
                        Container(
                          padding: EdgeInsets.all(16),
                          // color: Colors.red,
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '$title',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                              IconButton(onPressed: (){}, icon: Icon(Icons.share),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    color: AppColors.black,
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 200,
                    padding: EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Date: $date'),
                            Text('Time: $date'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Price: $price'),
                            Text('Location: $date'),
                          ],
                        ),
                        Text('Category: $date'),
                        SingleChildScrollView(
                           scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            TagChip(title: 'Web/App'),
                            TagChip(title: 'BlockChain'),
                            TagChip(title: 'UI/UX'),
                            TagChip(title: 'GDSC'),
                            TagChip(title: 'Game Development'),
                            TagChip(title: 'AI/ML'),
                          ],),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    color: AppColors.black,
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          'Description:',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 16),
                        Text(
                          '$description',
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),



              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TagChip extends StatelessWidget {
  final bool isSelected;
  final String title;

  const TagChip({
    Key? key,
    this.isSelected = false,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.grey : AppColors.greyDark,
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.all(10),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? AppColors.white : AppColors.greyLight,
          ),
        ),
      ),
    );
  }
}