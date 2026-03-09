import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'package:simpleshoppinglist/sources/hive/dto/cart_dto.dart';
import 'package:simpleshoppinglist/sources/hive/hive_source.dart';

import 'unit_test.mocks.dart';

@GenerateMocks([], customMocks: [MockSpec<HiveSource>(as: #MockHiveSource)])
void main() {
  group('test', () {
    test('test rep', () async {
      final hive = MockHiveSource();

      when(
        hive.getCart(1),
      ).thenAnswer(
            (_) => CartDto(id: "1", name: "a", date: DateTime.now()),
      );
    });
  });
}