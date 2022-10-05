import 'dart:io';

import 'package:eos_hackover3/widgets/LabeledTextFormField.dart';
import 'package:eos_hackover3/widgets/location_screen.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../Theme/app_colors.dart';

class NewEventScreen extends StatefulWidget {
  NewEventScreen({Key? key}) : super(key: key);

  @override
  State<NewEventScreen> createState() => _NewEventScreenState();
}

class _NewEventScreenState extends State<NewEventScreen> {
  final TextEditingController _titleController = TextEditingController();

  final TextEditingController _descriptionController = TextEditingController();

  final TextEditingController _dateController = TextEditingController();

  final TextEditingController _timeController = TextEditingController();

  final TextEditingController _durationController = TextEditingController();

  final TextEditingController _priceController = TextEditingController();

  final List<String> list = ['Free', "Paid"];
  late String selectedType = 'Free';
  late File? image = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Event'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    LabeledTextFormField(
                      width: MediaQuery.of(context).size.width * 0.6,
                      controller: _titleController,
                      title: 'Title',
                      hintTitle: 'Enter the Event\'s Title',
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Image',
                          style: TextStyle(color: AppColors.greyLight),
                        ),
                        SizedBox(height: 8),
                        GestureDetector(
                          child: (image != null)
                              ? Image(
                                  height: 100,
                                  width: 100,
                                  image: FileImage(image!),
                                )
                              : Container(
                                  color: AppColors.black,
                                  height: 100,
                                  width: 100,
                                  child: Center(child: Text('Upload photo')),
                                ),
                          onTap: () async {
                            FilePickerResult? result =
                                await FilePicker.platform.pickFiles(
                              type: FileType.image,
                            );
                            print(result);
                            print(result!.files.single.path);
                            if (result != null) {
                              File file = File(result.files.single.path!);
                              print(file.path);
                              setState(() {
                                print(file.runtimeType);
                                image = file;
                              });
                              // _queryRepository.storeVideo(file);
                            } else {
                              print('User canceled the picker');
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),
                LabeledTextFormField(
                  controller: _descriptionController,
                  title: 'Description',
                  hintTitle: 'Enter the Event\'s Description',
                  maxLines: 5,
                ),
                SizedBox(height: 16),
                LabeledTextFormField(
                  controller: _dateController,
                  title: 'Date',
                  hintTitle: 'Enter the Event\'s Title',
                  icon: Icons.calendar_month_outlined,
                  function: () async {
                    DateTime selectedDate = DateTime.now();
                    final DateTimeRange? picked = await showDateRangePicker(
                      context: context,
                      firstDate: DateTime(1901, 1),
                      lastDate: DateTime(2100),
                    );
                    if (picked != null && picked != selectedDate)
                      _dateController.text =
                          "${picked.start.year}-${picked.start.month}-${picked.start.day} to ${picked.start.year}-${picked.start.month}-${picked.start.day}";
                  },
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LabeledTextFormField(
                      width: MediaQuery.of(context).size.width * 0.4,
                      controller: _timeController,
                      title: 'Time',
                      hintTitle: 'Select Time',
                      icon: Icons.access_time_rounded,
                      function: () async {
                        TimeOfDay selectedTime = TimeOfDay.now();
                        final TimeOfDay? picked = await showTimePicker(
                          context: context,
                          initialTime: selectedTime,
                        );
                        if (picked != null)
                          _timeController.text =
                              "${picked.hour}:${picked.minute} ${picked.period.name}";
                      },
                    ),
                    LabeledTextFormField(
                      controller: _priceController,
                      title: 'Price',
                      hintTitle: 'Enter the Price',
                      width: MediaQuery.of(context).size.width * 0.4,
                    ),
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   mainAxisSize: MainAxisSize.min,
                    //   children: [
                    //     Text(
                    //       'Type',
                    //       style: TextStyle(color: AppColors.greyLight),
                    //     ),
                    //     SizedBox(height: 8),
                    //     Container(
                    //       width: MediaQuery.of(context).size.width * 0.4,
                    //       padding: EdgeInsets.only(left: 16),
                    //       decoration: BoxDecoration(
                    //         color: AppColors.black,
                    //         borderRadius: BorderRadius.circular(8),
                    //       ),
                    //       child: DropdownButton(
                    //         underline: SizedBox(),
                    //         style: TextStyle(color: AppColors.white),
                    //         value: selectedType,
                    //         items: list
                    //             .map<DropdownMenuItem<String>>((String value) {
                    //           return DropdownMenuItem<String>(
                    //             value: value,
                    //             child: Text(value, textAlign: TextAlign.right),
                    //           );
                    //         }).toList(),
                    //         onChanged: (value) {
                    //           setState(() {
                    //             selectedType = value!;
                    //           });
                    //         },
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.only(left: 16),
                  decoration: BoxDecoration(
                    color: AppColors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: LocationScreen(),
                ),
                SizedBox(height: 32),
                MaterialButton(
                  minWidth: 200,
                  color: AppColors.primaryAccent,
                  padding: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.red),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Add Event',
                    style: TextStyle(color: AppColors.black, fontSize: 18),
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
