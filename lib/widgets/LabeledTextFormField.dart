import 'package:flutter/material.dart';

import '../Theme/app_colors.dart';

class LabeledTextFormField extends StatefulWidget {
  LabeledTextFormField({
    Key? key,
    required TextEditingController controller,
    required this.title,
    required this.hintTitle,
    this.preText = '',
    this.maxLines = 1,
    this.icon,
    this.function,
    this.width,
  })  : controller = controller,
        super(key: key);

  final TextEditingController controller;
  final String title;
  final String hintTitle;
  final String preText;
  final int maxLines;
  final IconData? icon;
  final VoidCallback? function;
  final double? width;

  @override
  State<LabeledTextFormField> createState() => _LabeledTextFormFieldState();
}

class _LabeledTextFormFieldState extends State<LabeledTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.title,
          style: TextStyle(color: AppColors.greyLight),
        ),
        SizedBox(height: 8),
        Container(
          width: widget.width == null ? null : widget.width,
          padding: EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
            color: AppColors.black,
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextFormField(
            maxLines: widget.maxLines,
            controller: widget.controller,
            decoration: InputDecoration(
              suffixIcon: (widget.icon != null)
                  ? IconButton(
                      onPressed: widget.function,
                      icon: Icon(widget.icon),
                    )
                  : null,
              hintText: widget.hintTitle,
              hintStyle: Theme.of(context).textTheme.bodySmall,
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
