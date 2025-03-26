import 'package:flutter_template/shared/assets/asset_svg.dart';
import 'package:flutter_template/shared/components/base/base_button.dart';
import 'package:flutter_template/shared/foundation/app_color.dart';
import 'package:flutter_template/shared/foundation/app_typo.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({
    super.key,
    this.firstDay,
    this.lastDay,
    this.initialDate,
    this.onDateSelected,
  });

  final DateTime? firstDay;
  final DateTime? lastDay;
  final DateTime? initialDate;
  final Function(DateTime)? onDateSelected;

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime? selectedDate;
  late DateTime _focusedDay;

  @override
  void initState() {
    super.initState();
    // 초기 focusedDay 설정 시 제약 확인
    DateTime now = DateTime.now();
    if (widget.firstDay != null && now.isBefore(widget.firstDay!)) {
      _focusedDay = widget.firstDay!;
    } else if (widget.lastDay != null && now.isAfter(widget.lastDay!)) {
      _focusedDay = widget.lastDay!;
    } else if (widget.initialDate != null) {
      _focusedDay = widget.initialDate!;
    } else {
      _focusedDay = now;
    }
    selectedDate = widget.initialDate;
  }

  @override
  void didUpdateWidget(CalendarWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    // 제약 조건이 변경되었을 때 focusedDay 업데이트
    if (widget.firstDay != null && _focusedDay.isBefore(widget.firstDay!)) {
      setState(() {
        _focusedDay = widget.firstDay!;
      });
    } else if (widget.lastDay != null && _focusedDay.isAfter(widget.lastDay!)) {
      setState(() {
        _focusedDay = widget.lastDay!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool canGoToPrevious = _canMoveToPreviousMonth();
    final bool canGoToNext = _canMoveToNextMonth();

    return Container(
      width: 280,
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.gray.shade200),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Row(
              children: [
                Text(_formatYearMonth(_focusedDay),
                    style: AppTypo.bodyLargeBold),
                const Spacer(),
                InkWell(
                  onTap: canGoToPrevious ? _moveToPreviousMonth : null,
                  child: AssetSvg.asset(
                    Svgs.chevron_left,
                    color: canGoToPrevious
                        ? AppColors.gray
                        : AppColors.gray.shade200,
                  ),
                ),
                const SizedBox(width: 8),
                InkWell(
                  onTap: canGoToNext ? _moveToNextMonth : null,
                  child: AssetSvg.asset(
                    Svgs.chevron_right,
                    color:
                        canGoToNext ? AppColors.gray : AppColors.gray.shade200,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 280,
            height: 210,
            child: TableCalendar(
              locale: 'ko_KR',
              firstDay: widget.firstDay ?? DateTime.utc(2000, 1, 1),
              lastDay: widget.lastDay ?? DateTime.utc(2100, 12, 31),
              focusedDay: _focusedDay,
              headerVisible: false,
              daysOfWeekHeight: 30,
              rowHeight: 30,
              selectedDayPredicate: (day) {
                return isSameDay(selectedDate, day);
              },
              onDaySelected: (selected, focused) {
                setState(() {
                  selectedDate = selected;
                  _focusedDay = focused;
                });
              },
              enabledDayPredicate: (day) {
                // firstDay 이후이고 lastDay 이전인 날짜만 선택 가능
                if (widget.firstDay != null && day.isBefore(widget.firstDay!)) {
                  return false;
                }
                if (widget.lastDay != null && day.isAfter(widget.lastDay!)) {
                  return false;
                }
                return true;
              },
              onPageChanged: (focusedDay) {
                setState(() {
                  // 페이지가 변경될 때 focusedDay 제약 확인
                  if (widget.firstDay != null &&
                      focusedDay.isBefore(widget.firstDay!)) {
                    _focusedDay = widget.firstDay!;
                  } else if (widget.lastDay != null &&
                      focusedDay.isAfter(widget.lastDay!)) {
                    _focusedDay = widget.lastDay!;
                  } else {
                    _focusedDay = focusedDay;
                  }
                });
              },
              calendarStyle: CalendarStyle(
                tablePadding: const EdgeInsets.fromLTRB(8, 0, 12, 0),
                disabledTextStyle: TextStyle(color: AppColors.gray.shade200),
              ),
              calendarBuilders: CalendarBuilders(
                // 요일 헤더를 개별적으로 커스터마이징
                dowBuilder: (context, day) {
                  // 일요일(day.weekday == 7)만 빨간색, 나머지는 기본 스타일
                  final textStyle =
                      day.weekday == 7 ? AppTypo.body.error : AppTypo.body;

                  // 요일 표시 (한글 요일 직접 매핑)
                  final weekdayString = _getWeekdayString(day.weekday);

                  return Center(
                    child: Text(
                      weekdayString,
                      style: textStyle,
                    ),
                  );
                },
                selectedBuilder: (context, day, focusedDay) {
                  return Container(
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      color: AppColors.gray,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        day.day.toString(),
                        style: AppTypo.body.white,
                      ),
                    ),
                  );
                },
                defaultBuilder: (context, day, focusedDay) {
                  final textStyle =
                      day.weekday == 7 ? AppTypo.body.error : AppTypo.body;

                  return SizedBox(
                    width: 24,
                    height: 24,
                    child: Center(
                      child: Text(
                        day.day.toString(),
                        style: textStyle,
                      ),
                    ),
                  );
                },
                todayBuilder: (context, day, focusedDay) {
                  final textStyle =
                      day.weekday == 7 ? AppTypo.body.error : AppTypo.body;

                  return SizedBox(
                    width: 24,
                    height: 24,
                    child: Center(
                      child: Text(
                        day.day.toString(),
                        style: textStyle,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: BaseButton(
              type: BaseButtonType.main,
              label: '선택',
              onPressed: () {
                if (selectedDate != null && widget.onDateSelected != null) {
                  widget.onDateSelected!(selectedDate!);
                }
              },
            ),
          )
        ],
      ),
    );
  }

  void _moveToPreviousMonth() {
    final previousMonth = DateTime(_focusedDay.year, _focusedDay.month - 1, 1);

    // 제약 조건 확인
    if (widget.firstDay != null && previousMonth.isBefore(widget.firstDay!)) {
      setState(() {
        _focusedDay = widget.firstDay!;
      });
    } else {
      setState(() {
        _focusedDay = previousMonth;
      });
    }
  }

  void _moveToNextMonth() {
    final nextMonth = DateTime(_focusedDay.year, _focusedDay.month + 1, 1);

    // 제약 조건 확인
    if (widget.lastDay != null && nextMonth.isAfter(widget.lastDay!)) {
      setState(() {
        _focusedDay = widget.lastDay!;
      });
    } else {
      setState(() {
        _focusedDay = nextMonth;
      });
    }
  }

  String _formatYearMonth(DateTime date) {
    return '${date.year}년 ${date.month}월';
  }

  // 요일에 해당하는 한글 문자열 반환
  String _getWeekdayString(int weekday) {
    switch (weekday) {
      case 1:
        return '월';
      case 2:
        return '화';
      case 3:
        return '수';
      case 4:
        return '목';
      case 5:
        return '금';
      case 6:
        return '토';
      case 7:
        return '일';
      default:
        return '';
    }
  }

  // 이전 월로 이동 가능한지 확인하는 메서드
  bool _canMoveToPreviousMonth() {
    if (widget.firstDay == null) {
      return true;
    }

    // 이전 달의 마지막 날이 firstDay보다 이전인지 확인
    final lastDayOfPreviousMonth =
        DateTime(_focusedDay.year, _focusedDay.month, 0);
    return !lastDayOfPreviousMonth.isBefore(widget.firstDay!);
  }

  // 다음 월로 이동 가능한지 확인하는 메서드
  bool _canMoveToNextMonth() {
    if (widget.lastDay == null) {
      return true;
    }

    final nextMonth = DateTime(_focusedDay.year, _focusedDay.month + 1, 1);
    // 다음 달의 첫 날이 lastDay보다 이후인지 확인
    return !nextMonth.isAfter(widget.lastDay!);
  }
}
