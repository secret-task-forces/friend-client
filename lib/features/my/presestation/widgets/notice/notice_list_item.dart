import 'package:flutter/material.dart';
import 'package:flutter_template/features/my/domain/entities/notice.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter_template/shared/assets/asset_svg.dart';
import 'package:flutter_template/core/utils/date_time_utils.dart';

class NoticeListItem extends StatefulWidget {
  const NoticeListItem({
    super.key,
    required this.notice,
  });

  final Notice notice;

  @override
  State<NoticeListItem> createState() => _NoticeListItemState();
}

class _NoticeListItemState extends State<NoticeListItem> {
  bool isExpansion = false;

  @override
  Widget build(BuildContext context) {
    final svg = isExpansion ? Svgs.caret_up : Svgs.caret_down;

    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: ExpansionTile(
        initiallyExpanded: isExpansion,
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        minTileHeight: 24,
        onExpansionChanged: (value) {
          setState(() {
            isExpansion = value;
          });
        },
        trailing: AssetSvg.asset(
          svg,
          size: 24,
          color: AppColors.gray.shade600,
        ),
        shape: const Border(),
        dense: true,
        title: Row(
          children: [
            Expanded(
              child: Text(
                widget.notice.title,
                style: AppTypo.bodyLargeBold,
              ),
            ),
          ],
        ),
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
              color: AppColors.gray.shade100,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.notice.content,
                  style: AppTypo.body,
                ),
                const SizedBox(height: 12),
                Text(
                  DateTimeUtils.formatLocalDateFromUTC(
                    DateTime.fromMillisecondsSinceEpoch(
                        widget.notice.publishedAt),
                    format: 'yy.MM.dd',
                  ).toString(),
                  style: AppTypo.sub.copyWith(
                    color: AppColors.gray.shade600,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
