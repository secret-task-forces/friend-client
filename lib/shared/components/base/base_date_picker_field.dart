import 'package:flutter_template/shared/assets/asset_svg.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter_template/shared/widgets/calendar_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BaseDatePickerField extends StatefulWidget {
  const BaseDatePickerField({
    super.key,
    this.firstDay,
    this.lastDay,
    this.initialDate,
    required this.onDateSelected,
    this.dateFormat,
    this.placeholder = 'YYYY.MM.DD',
  });

  final DateTime? firstDay;
  final DateTime? lastDay;
  final DateTime? initialDate;
  final Function(DateTime) onDateSelected;
  final DateFormat? dateFormat;
  final String placeholder;

  @override
  State<BaseDatePickerField> createState() => _BaseDatePickerFieldState();
}

class _BaseDatePickerFieldState extends State<BaseDatePickerField> {
  late DateTime? selectedDate;
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;
  final DateFormat _dateFormat = DateFormat('yyyy.MM.dd');

  @override
  void initState() {
    super.initState();
    selectedDate = widget.initialDate;
  }

  @override
  void didUpdateWidget(BaseDatePickerField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialDate != widget.initialDate) {
      selectedDate = widget.initialDate;
    }
  }

  @override
  void dispose() {
    _removeOverlay();
    super.dispose();
  }

  void _showCalendarOverlay(BuildContext context) {
    _removeOverlay();

    _overlayEntry = OverlayEntry(
      builder: (context) => Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: _removeOverlay,
              behavior: HitTestBehavior.opaque,
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
          Positioned(
            width: 280,
            child: CompositedTransformFollower(
              link: _layerLink,
              showWhenUnlinked: false,
              offset: const Offset(0, 52),
              child: Material(
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                color: AppColors.white,
                child: CalendarWidget(
                  firstDay: widget.firstDay,
                  lastDay: widget.lastDay,
                  initialDate: selectedDate,
                  onDateSelected: (date) {
                    setState(() {
                      selectedDate = date;
                    });
                    widget.onDateSelected(date);
                    _removeOverlay();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );

    Overlay.of(context).insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    final hasDate = selectedDate != null;

    return CompositedTransformTarget(
      link: _layerLink,
      child: InkWell(
        onTap: () => _showCalendarOverlay(context),
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: 160,
          height: 48,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.gray.shade200,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                hasDate
                    ? (widget.dateFormat ?? _dateFormat).format(selectedDate!)
                    : widget.placeholder,
                style: hasDate ? AppTypo.bodyLarge : AppTypo.bodyLarge.gray600,
              ),
              AssetSvg.asset(Svgs.calendar, size: 24),
            ],
          ),
        ),
      ),
    );
  }
}
