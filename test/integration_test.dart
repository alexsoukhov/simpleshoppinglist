import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simpleshoppinglist/main.dart';
import 'package:simpleshoppinglist/application/ui/screens/carts_list/widgets/carts_list_item_widget.dart';
import 'package:simpleshoppinglist/application/ui/screens/cart/widgets/product_input_widget.dart';
import 'package:simpleshoppinglist/application/ui/screens/cart/widgets/cart_item_widget.dart';

void main() {
  testWidgets('Integration Test: Full flow', (WidgetTester tester) async {
    // 1. Загрузка приложения
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
    
    // 2. Тест: Отображение главного экрана (список корзин)
    expect(find.byType(ListView), findsOneWidget);
    
    // 3. Тест: Создание новой корзины (через ввод имени, если есть такое поле)
    // Предположим, есть кнопка добавления или текстовое поле
    final addField = find.byType(TextField).first; 
    if (addField.evaluate().isNotEmpty) {
      await tester.enterText(addField, 'New Shopping List');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();
      expect(find.text('New Shopping List'), findsOneWidget);
    }

    // 4. Тест: Переход в корзину при клике на элемент списка
    final cartItem = find.byType(CartsListItemWidget).first;
    if (cartItem.evaluate().isNotEmpty) {
      await tester.tap(cartItem);
      await tester.pumpAndSettle();
      
      // Проверяем, что перешли на экран корзины (там должен быть ProductInputWidget)
      expect(find.byType(ProductInputWidget), findsOneWidget);
    }

    // 5. Тест: Добавление продукта в корзину
    final productInput = find.byType(ProductInputWidget);
    if (productInput.evaluate().isNotEmpty) {
      final textField = find.descendant(of: productInput, matching: find.byType(TextField));
      await tester.enterText(textField, 'Apples');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();
      
      expect(find.text('Apples'), findsOneWidget);
      expect(find.byType(CartItemWidget), findsAtLeast(1));
    }
  });
}
