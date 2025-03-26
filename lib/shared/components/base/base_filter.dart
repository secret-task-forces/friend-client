import 'package:flutter/material.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';

class BaseFilter<T> extends StatefulWidget {
  final List<T> items;
  final T? selectedItem;
  final Function(T) onChanged;
  final String Function(T) itemLabelBuilder;
  final String hintText;

  const BaseFilter({
    super.key,
    required this.items,
    this.selectedItem,
    required this.onChanged,
    required this.itemLabelBuilder,
    this.hintText = '선택하세요',
  });

  @override
  State<BaseFilter<T>> createState() => _BaseFilterState<T>();
}

class _BaseFilterState<T> extends State<BaseFilter<T>> {
  bool _isExpanded = false;
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: SizedBox(
        width: 160,
        height: 48,
        child: InkWell(
          onTap: _toggleDropdown,
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.gray.shade100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.selectedItem != null
                        ? widget.itemLabelBuilder(widget.selectedItem as T)
                        : widget.hintText,
                    style: AppTypo.body,
                  ),
                ),
                const SizedBox(width: 10),
                AssetSvg.asset(
                  _isExpanded ? Svgs.caret_up : Svgs.caret_down,
                  size: 24,
                  color: AppColors.gray.shade600,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _toggleDropdown() {
    if (_isExpanded) {
      _overlayEntry?.remove();
      _overlayEntry = null;
    } else {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry!);
    }
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;

    return OverlayEntry(
      builder: (context) => Positioned(
        width: size.width,
        child: CompositedTransformFollower(
          link: _layerLink,
          offset: Offset(0, size.height + 2), // 2픽셀 간격
          child: Material(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: AppColors.gray.shade200),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: widget.items.length,
                itemBuilder: (context, index) {
                  bool isSelected = widget.selectedItem == widget.items[index];

                  return InkWell(
                    onTap: () {
                      widget.onChanged(widget.items[index]);
                      _toggleDropdown();
                    },
                    child: Text(
                      widget.itemLabelBuilder(widget.items[index]),
                      style: AppTypo.body.copyWith(
                        color: isSelected ? null : AppColors.gray.shade600,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _overlayEntry?.remove();
    super.dispose();
  }
}
