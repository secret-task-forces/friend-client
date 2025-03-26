import 'package:flutter/material.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';

class BaseInputField extends StatefulWidget {
  const BaseInputField({
    super.key,
    required this.controller,
    this.onChanged,
    this.onSubmitted,
    this.hintText,
    this.maxLength,
    this.enabled = true,
    this.minLines,
    this.maxLines,
    this.autofocus = false,
  });

  final TextEditingController controller;
  final void Function(String text)? onChanged;
  final void Function(String text)? onSubmitted;
  final String? hintText;
  final int? maxLength;
  final bool enabled;
  final int? minLines;
  final int? maxLines;
  final bool autofocus;
  @override
  State<BaseInputField> createState() => _BaseInputFieldState();
}

class _BaseInputFieldState extends State<BaseInputField> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            enabled: widget.enabled,
            maxLength: widget.maxLength,
            controller: widget.controller,
            onChanged: widget.onChanged,
            onFieldSubmitted: widget.onSubmitted,
            autofocus: widget.autofocus,
            cursorColor: AppColors.gray,
            cursorErrorColor: AppColors.error,
            cursorWidth: 2,
            cursorHeight: 18,
            cursorRadius: const Radius.circular(99),
            style: AppTypo.bodyLarge,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(12, 14, 12, 14),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: AppColors.gray.shade100,
              hintText: widget.hintText,
              hintStyle:
                  AppTypo.bodyLarge.copyWith(color: AppColors.gray.shade600),
              counterText: '',
            ),
            minLines: widget.minLines,
            maxLines: widget.maxLines,
            onTapOutside: (value) {
              FocusScope.of(context).unfocus();
            },
          ),
        ),
      ],
    );
  }
}
