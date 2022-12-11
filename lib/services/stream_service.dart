
import 'package:flutter_riverpod/flutter_riverpod.dart';

final streamServiveProvider = Provider<StreamService>((ref) => StreamService());

class StreamService {
    Stream<int> getStream() {
        return Stream.periodic(const Duration(seconds: 1), (x) => x).take(10);
    }
}