import 'package:hive/hive.dart';

abstract class LocalPersistenceProvider {
  Future<int> saveIntoPersistence({
    dynamic valueToSave,
    String boxToSaveInto,
  });
  Future<int> clearPersistence({String boxToClear});
  Future<void> removePositionFromPersistence({
    int positonToDelete,
    String boxToDeleteFrom,
  });
  Future<void> saveKeyValuePair({
    dynamic valueToSave,
    String boxToSaveInto,
  });
  Future<dynamic> getFromKeyValuePair({String boxToGetDataFrom});
  Future<dynamic> getLatestFromPersistence({String boxToGetDataFrom});
  Future<dynamic> getAllFromPersistence({String boxToGetDataFrom});
}

class LocalPersistenceProviderImpl implements LocalPersistenceProvider {
  // saveIntoPersistence can hold multiple objects inside the same box
  // EX:
  // If we add a object A into a box, it will be saved into the 0 index and we
  // can freely add another object of type A into the box, this is great
  // if we want to track previous entries, or wanna return all entries inside
  // a box.
  @override
  Future<int> saveIntoPersistence({
    dynamic valueToSave,
    String boxToSaveInto,
  }) async {
    final box = await Hive.openBox(boxToSaveInto);

    return await box.add(valueToSave);
  }

  // Get's the latest entry inside the box
  @override
  Future getLatestFromPersistence({String boxToGetDataFrom}) async {
    final box = await Hive.openBox(boxToGetDataFrom);

    return await box.get(box.length - 1);
  }

  // Get's all the entries from a box
  @override
  Future getAllFromPersistence({String boxToGetDataFrom}) async {
    final box = await Hive.openBox(boxToGetDataFrom);
    List<dynamic> listToReturn = [];

    for (int i = 0; i <= box.length - 1; i++) {
      final valueToSave = await box.getAt(i);
      listToReturn.add(valueToSave);
    }
    return listToReturn;
  }

  // Clears the content of box
  @override
  Future<int> clearPersistence({String boxToClear}) async {
    final box = await Hive.openBox(boxToClear);
    return box.clear();
  }

  // If we want to always have a single and always replace a value with the coresponding
  // key, we use saveKeyValuePair ( it functions like sharedPreferences in native Android )
  @override
  Future<void> saveKeyValuePair({
    valueToSave,
    String boxToSaveInto,
  }) async {
    final box = await Hive.openBox(boxToSaveInto);

    return await box.put(boxToSaveInto, valueToSave);
  }

  // If you something into the databse using [saveKeyValuePair] YOU HAVE to use this method
  // to retrive that data, the api [getLatestFromPersistence] will always return null!
  @override
  Future getFromKeyValuePair({String boxToGetDataFrom}) async {
    final box = await Hive.openBox(boxToGetDataFrom);

    return await box.get(boxToGetDataFrom);
  }

  @override
  Future<void> removePositionFromPersistence({
    int positonToDelete,
    String boxToDeleteFrom,
  }) async {
    final box = await Hive.openBox(boxToDeleteFrom);
    return await box.deleteAt(positonToDelete);
  }
}
