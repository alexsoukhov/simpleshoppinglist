import 'package:hive_ce/hive_ce.dart';
import 'package:simpleshoppinglist/sources/hive/dto/cart_item_dto.dart';
import 'package:simpleshoppinglist/sources/hive/dto/cart_dto.dart';

@GenerateAdapters([AdapterSpec<CartDto>(), AdapterSpec<CartItemDto>()])
part 'hive_adapters.g.dart';