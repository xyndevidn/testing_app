import 'package:flutter_test/flutter_test.dart';
import 'package:testing_app/provider/done_module_provider.dart';

void main() {
  group('Provider Test', () {
    // Skenario pengujian dituliskan di sini
    // arrange -> bagian di mana kita menyiapkan objek dan pengaturan yang akan diuji
    const testModuleName = 'Test Module';
    DoneModuleProvider? doneModuleProvider;

    setUp(() {
      doneModuleProvider = DoneModuleProvider();
    });
    test('should contain new item when module completed', () {
      // act -> aksi yang ingin dijalankan
      doneModuleProvider!.complete(testModuleName);

      // assert -> di mana kita memverifikasi nilai yang diekspektasikan dengan hasil pemanggilan metode ketika Act
      var result = doneModuleProvider!.doneModuleList.contains(testModuleName);
      expect(result, true);
    });

    test('should contain remove item when module removed', () {
      // act -> aksi yang ingin dijalankan
      doneModuleProvider!.remove(testModuleName);

      // assert -> di mana kita memverifikasi nilai yang diekspektasikan dengan hasil pemanggilan metode ketika Act
      var result = doneModuleProvider!.doneModuleList.contains(testModuleName);
      expect(result, false);
    });
  });
}
