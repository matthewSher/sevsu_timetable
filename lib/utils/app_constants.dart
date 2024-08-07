import 'dart:ui';

import 'package:flutter_svg/svg.dart';
import 'package:sevsu_timetable_2/models/navigation_bar_item_data.dart';
import 'package:sevsu_timetable_2/utils/app_colors.dart';

abstract class AppConstants {
  /// Список элементов [NavigationBarItemData] служит для структуризации пунктов
  /// нижнего навигационного меню приложения.
  ///
  /// Если существует необходимость убрать, редактировать существующие и/или
  /// добавить новые элементы для [NavigationBar], следует редактировать данный
  /// список, поскольку при формировании меню данные о заголовках, внешнем виде
  /// (иконки) и порядке пунктов берётся напрямую из этого списка.
  static final List<NavigationBarItemData> navigationBarItems = [
    NavigationBarItemData(
      selectedIcon: SvgPicture.asset(
        'assets/icons/schedule_icon_filled.svg',
        colorFilter:
            const ColorFilter.mode(AppColors.primaryColor800, BlendMode.srcIn),
      ),
      unselectedIcon: SvgPicture.asset(
        'assets/icons/schedule_icon_outlined.svg',
        colorFilter: const ColorFilter.mode(
            AppColors.secondaryColor600, BlendMode.srcIn),
      ),
      label: 'Расписание',
    ),
    NavigationBarItemData(
      selectedIcon: SvgPicture.asset(
        'assets/icons/calendar_icon_filled.svg',
        colorFilter:
            const ColorFilter.mode(AppColors.primaryColor800, BlendMode.srcIn),
      ),
      unselectedIcon: SvgPicture.asset(
        'assets/icons/calendar_icon_outlined.svg',
        colorFilter: const ColorFilter.mode(
            AppColors.secondaryColor600, BlendMode.srcIn),
      ),
      label: 'Календарь',
    ),
    NavigationBarItemData(
      selectedIcon: SvgPicture.asset(
        'assets/icons/groups_icon_filled.svg',
        colorFilter:
            const ColorFilter.mode(AppColors.primaryColor800, BlendMode.srcIn),
      ),
      unselectedIcon: SvgPicture.asset(
        'assets/icons/groups_icon_outlined.svg',
        colorFilter: const ColorFilter.mode(
            AppColors.secondaryColor600, BlendMode.srcIn),
      ),
      label: 'Выбор групп',
    ),
  ];
}
