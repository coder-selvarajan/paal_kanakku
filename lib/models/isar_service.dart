import 'package:isar/isar.dart';
import 'package:paal_kanakku/models/provision.dart';
import 'package:paal_kanakku/models/service.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [ProvisionSchema, ServiceSchema],
        inspector: true,
      );
    }

    return Future.value(Isar.getInstance());
  }

  Future<void> deleteProvision(Provision provision) async {
    final isar = await db;
    await isar.writeTxn(() async {
      final success = await isar.provisions.delete(provision.id);
    });
  }

  Future<void> saveProvision(Provision provision) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.provisions.putSync(provision));
  }

  //
  // Future<void> deleteGame(Id gameId) async {
  //   final isar = await db;
  //   await isar.writeTxn(() async {
  //     final success = await isar.games.delete(gameId);
  //   });
  // }
  //
  // Future<void> updateGameStatus() async {
  //   final isar = await db;
  //
  //   // get the auto-closure hour value from settings
  //   var setting = await getSettings();
  //
  //   await isar.writeTxn(() async {
  //     List<Game> games = await isar.games
  //         .filter()
  //         .statusEqualTo(Status.Ongoing)
  //         .timeLessThan(DateTime.now()
  //         .subtract(Duration(hours: setting!.autoClosureHours)))
  //         .findAll();
  //
  //     for (var game in games) {
  //       game.status = Status.Ended;
  //       await isar.games.put(game);
  //     }
  //   });
  // }
  //
  Stream<List<Provision>> streamProvisions() async* {
    final isar = await db;
    yield* isar.provisions.where().watch(fireImmediately: true);
  }
  //
  // Future<Setting?> getSettings() async {
  //   final isar = await db;
  //   var temp = await isar.settings.where().findFirst();
  //   // if no settings
  //   if (temp == null) {
  //     await isar.writeTxnSync<int>(() => isar.settings.putSync(Setting()));
  //     temp = await isar.settings.where().findFirst();
  //   }
  //   return await temp;
  // }
  //
  // Future<void> saveSetting(Setting newSetting) async {
  //   final isar = await db;
  //   isar.writeTxnSync<int>(() => isar.settings.putSync(newSetting));
  // }
  //
  // Future<List<Player>> getPlayersList() async {
  //   final isar = await db;
  //   return await isar.players.where().findAll();
  // }
  //
  // Future<int> getPlayersCount() async {
  //   final isar = await db;
  //   return await isar.players.count();
  // }
  //
  // Stream<List<Game>> streamGames() async* {
  //   final isar = await db;
  //   yield* isar.games.where().sortByTimeDesc().watch(fireImmediately: true);
  // }
  //
  // Stream<List<Game>> streamRecentGames() async* {
  //   final isar = await db;
  //   yield* isar.games
  //       .where()
  //       .sortByTimeDesc()
  //       .limit(3)
  //       .watch(fireImmediately: true);
  // }
  //
  // Stream<List<Game>> getGameById(Id id) async* {
  //   final isar = await db;
  //   yield* isar.games
  //       .filter()
  //       .idEqualTo(id.toInt())
  //       .watch(fireImmediately: true);
  // }
}
