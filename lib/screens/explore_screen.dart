import 'package:flutter/material.dart';

import '../Theme/app_colors.dart';
import '../widgets/EventsMap.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({Key? key}) : super(key: key);

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                  color: AppColors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextFormField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search_rounded),
                    hintText: 'Search Events',
                    hintStyle: Theme.of(context).textTheme.bodySmall,
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ExploreChip(title: 'Filters', isSelected: true),
                        ExploreChip(title: '10km'),
                        ExploreChip(title: '50km'),
                        ExploreChip(title: 'Tech', isSelected: true),
                        ExploreChip(title: 'Free'),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
              SizedBox(height: 16),
              EventsMap(),
            ],
          ),
        ),
      ),
    );
  }
}

class ExploreChip extends StatelessWidget {
  final bool isSelected;
  final String title;

  const ExploreChip({
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
          color: isSelected ? AppColors.grey : AppColors.black,
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
