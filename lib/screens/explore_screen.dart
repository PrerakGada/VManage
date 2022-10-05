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
              SizedBox(height: 16),
              EventsMap(),
            ],
          ),
        ),
      ),
    );
  }
}
