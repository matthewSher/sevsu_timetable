import 'package:flutter_svg/svg.dart';
import 'package:sevsu_timetable_2/screens/home/navigation_bar/navigation_bar_item_data.dart';

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
      selectedIcon: SvgPicture.asset('assets\\icons\\schedule_icon_filled.svg'),
      unselectedIcon:
          SvgPicture.asset('assets\\icons\\schedule_icon_outlined.svg'),
      label: 'Расписание',
    ),
    NavigationBarItemData(
      selectedIcon: SvgPicture.asset('assets\\icons\\schedule_icon_filled.svg'),
      unselectedIcon:
          SvgPicture.asset('assets\\icons\\schedule_icon_outlined.svg'),
      label: 'Календарь',
    ),
    NavigationBarItemData(
      selectedIcon: SvgPicture.asset('assets\\icons\\schedule_icon_filled.svg'),
      unselectedIcon:
          SvgPicture.asset('assets\\icons\\schedule_icon_outlined.svg'),
      label: 'Выбор групп',
    ),
  ];
}
