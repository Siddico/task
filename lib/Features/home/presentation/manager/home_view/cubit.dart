import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/Features/home/data/models/item.dart';
import 'package:task/Features/home/presentation/manager/home_view/states.dart';

class ItemCubit extends Cubit<ItemState> {
  ItemCubit() : super(ItemInitial());

  void fetchItems() {
    // Simulate fetching data
    final items = [
      Item(
          title: "معمل الصفوة",
          phone: "1158368887 20+",
          rating: 4.9,
          image: "images/Frame 2095585417.png",
          check2: 'ارسال نتيجة التحليل بعد 20 دقيقة عن طريق التطبيق أو الواتس',
          check1: 'يوجد طبيبات اناث لسحب العينة اذا احتاجت الحالة',
          location: 'الفشن, ش طريق المستشفي ',
          width: double.infinity,
          discount: 15),
      Item(
          title: "مركز الحمد",
          phone: "11245555555 20+",
          rating: 4.8,
          image: "images/Frame 2095585417 (1).png",
          check2: 'يكون طبيب علاج طبيعي مع العلاج',
          check1: 'يوجد جهاز 180',
          location: 'طما, شارع الثورة بجوار مسجد الوحدة',
          width: double.infinity,
          discount: 10),
      Item(
          title: "أ.د. أحمد فايز عبدالفتاح",
          phone: "11245555555 20+",
          rating: 4.9,
          image: 'images/Frame 2095585417 (2).png',
          check2: 'متابعة دورية بنص السعر كل 3 شهور',
          check1: 'يوجد جهاز إيكو',
          location: "طما, ش الثورة بجوار مسجد الوحدة",
          width: 100,
          discount: 25,
          description: "أستاذ دكتور أنف وأذن وحنجرة بجامعة أسيوط"),
    ];

    emit(ItemLoaded(items));
  }
}
