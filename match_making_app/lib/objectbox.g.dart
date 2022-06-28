// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';

import 'model/dataModel.dart';
import 'src/features/auth/domain/entities/auth-model.dart';
import 'src/features/auth/domain/entities/user-model.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 6472301739385310921),
      name: 'Answer',
      lastPropertyId: const IdUid(4, 4083706776689490255),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 8744040036596885958),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 8278282173521443409),
            name: 'user_id',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 5465040152070552051),
            name: 'quiz_id',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 4083706776689490255),
            name: 'choice_id',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(2, 1188853720646485139),
      name: 'Choice',
      lastPropertyId: const IdUid(3, 217690910082064715),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 8842073858731496021),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4596943297952682059),
            name: 'value',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 217690910082064715),
            name: 'weight',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(3, 9159601570021502883),
      name: 'CompatibilityLog',
      lastPropertyId: const IdUid(6, 7976531580411381899),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 5121168611169939021),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 7301020072609838727),
            name: 'user_id',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 4562262347021482325),
            name: 'compatible_user_id',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 4044161026372032824),
            name: 'date_stamp',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 4453909198251476735),
            name: 'percentage',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 7976531580411381899),
            name: 'difference',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(4, 5061761277555233049),
      name: 'Quiz',
      lastPropertyId: const IdUid(4, 9201379737467929079),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 5863082578607844649),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 347054291489039802),
            name: 'question',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 226317538043341897),
            name: 'weight',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 9201379737467929079),
            name: 'choice_id',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(5, 5124142928903474907),
      name: 'User',
      lastPropertyId: const IdUid(12, 4584239490190255432),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6089875662408391639),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 3182939628418991648),
            name: 'firstName',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 3314493759131318689),
            name: 'lastName',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 2251611690820482707),
            name: 'age',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 3178234555416737606),
            name: 'gender',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 2581139115555071114),
            name: 'religion',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 7224523908431479266),
            name: 'address',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 7264539978352266184),
            name: 'education',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 2311280138682069157),
            name: 'employment',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 4584239490190255432),
            name: 'about',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(6, 4370376266044418217),
      name: 'UserAuth',
      lastPropertyId: const IdUid(4, 8662178085288955513),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 5272269372904463803),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 1148989859785802394),
            name: 'userId',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 6355105005577232512),
            name: 'email',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 8662178085288955513),
            name: 'password',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Store openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) =>
    Store(getObjectBoxModel(),
        directory: directory,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(6, 4370376266044418217),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [3052925254038129445, 7976769273959785358],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    Answer: EntityDefinition<Answer>(
        model: _entities[0],
        toOneRelations: (Answer object) => [],
        toManyRelations: (Answer object) => {},
        getId: (Answer object) => object.id,
        setId: (Answer object, int id) {
          object.id = id;
        },
        objectToFB: (Answer object, fb.Builder fbb) {
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addInt64(1, object.user_id);
          fbb.addInt64(2, object.quiz_id);
          fbb.addInt64(3, object.choice_id);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Answer(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              user_id:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 6, 0),
              quiz_id:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0),
              choice_id:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0));

          return object;
        }),
    Choice: EntityDefinition<Choice>(
        model: _entities[1],
        toOneRelations: (Choice object) => [],
        toManyRelations: (Choice object) => {},
        getId: (Choice object) => object.id,
        setId: (Choice object, int id) {
          object.id = id;
        },
        objectToFB: (Choice object, fb.Builder fbb) {
          final valueOffset = fbb.writeString(object.value);
          fbb.startTable(4);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, valueOffset);
          fbb.addInt64(2, object.weight);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Choice(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              value: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              weight:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0));

          return object;
        }),
    CompatibilityLog: EntityDefinition<CompatibilityLog>(
        model: _entities[2],
        toOneRelations: (CompatibilityLog object) => [],
        toManyRelations: (CompatibilityLog object) => {},
        getId: (CompatibilityLog object) => object.id,
        setId: (CompatibilityLog object, int id) {
          object.id = id;
        },
        objectToFB: (CompatibilityLog object, fb.Builder fbb) {
          fbb.startTable(7);
          fbb.addInt64(0, object.id);
          fbb.addInt64(1, object.user_id);
          fbb.addInt64(2, object.compatible_user_id);
          fbb.addInt64(3, object.date_stamp.millisecondsSinceEpoch);
          fbb.addInt64(4, object.percentage);
          fbb.addInt64(5, object.difference);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = CompatibilityLog(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              user_id:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 6, 0),
              compatible_user_id:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0),
              percentage:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 12, 0),
              difference:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 14, 0),
              date_stamp: DateTime.fromMillisecondsSinceEpoch(
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0)));

          return object;
        }),
    Quiz: EntityDefinition<Quiz>(
        model: _entities[3],
        toOneRelations: (Quiz object) => [],
        toManyRelations: (Quiz object) => {},
        getId: (Quiz object) => object.id,
        setId: (Quiz object, int id) {
          object.id = id;
        },
        objectToFB: (Quiz object, fb.Builder fbb) {
          final questionOffset = fbb.writeString(object.question);
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, questionOffset);
          fbb.addInt64(2, object.weight);
          fbb.addInt64(3, object.choice_id);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Quiz(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              question: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              weight:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0),
              choice_id:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0));

          return object;
        }),
    User: EntityDefinition<User>(
        model: _entities[4],
        toOneRelations: (User object) => [],
        toManyRelations: (User object) => {},
        getId: (User object) => object.id,
        setId: (User object, int id) {
          object.id = id;
        },
        objectToFB: (User object, fb.Builder fbb) {
          final firstNameOffset = fbb.writeString(object.firstName);
          final lastNameOffset = fbb.writeString(object.lastName);
          final genderOffset = fbb.writeString(object.gender);
          final religionOffset = fbb.writeString(object.religion);
          final addressOffset = fbb.writeString(object.address);
          final educationOffset = fbb.writeString(object.education);
          final employmentOffset = fbb.writeString(object.employment);
          final aboutOffset = fbb.writeString(object.about);
          fbb.startTable(13);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, firstNameOffset);
          fbb.addOffset(2, lastNameOffset);
          fbb.addInt64(3, object.age);
          fbb.addOffset(4, genderOffset);
          fbb.addOffset(7, religionOffset);
          fbb.addOffset(8, addressOffset);
          fbb.addOffset(9, educationOffset);
          fbb.addOffset(10, employmentOffset);
          fbb.addOffset(11, aboutOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = User(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              firstName: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              lastName: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 8, ''),
              age: const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0),
              gender: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 12, ''),
              religion: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 18, ''),
              address: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 20, ''),
              education: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 22, ''),
              employment: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 24, ''),
              about:
                  const fb.StringReader(asciiOptimization: true).vTableGet(buffer, rootOffset, 26, ''));

          return object;
        }),
    UserAuth: EntityDefinition<UserAuth>(
        model: _entities[5],
        toOneRelations: (UserAuth object) => [],
        toManyRelations: (UserAuth object) => {},
        getId: (UserAuth object) => object.id,
        setId: (UserAuth object, int id) {
          object.id = id;
        },
        objectToFB: (UserAuth object, fb.Builder fbb) {
          final emailOffset = fbb.writeString(object.email);
          final passwordOffset = fbb.writeString(object.password);
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addInt64(1, object.userId);
          fbb.addOffset(2, emailOffset);
          fbb.addOffset(3, passwordOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = UserAuth(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              userId:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 6, 0),
              email: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 8, ''),
              password: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 10, ''));

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [Answer] entity fields to define ObjectBox queries.
class Answer_ {
  /// see [Answer.id]
  static final id = QueryIntegerProperty<Answer>(_entities[0].properties[0]);

  /// see [Answer.user_id]
  static final user_id =
      QueryIntegerProperty<Answer>(_entities[0].properties[1]);

  /// see [Answer.quiz_id]
  static final quiz_id =
      QueryIntegerProperty<Answer>(_entities[0].properties[2]);

  /// see [Answer.choice_id]
  static final choice_id =
      QueryIntegerProperty<Answer>(_entities[0].properties[3]);
}

/// [Choice] entity fields to define ObjectBox queries.
class Choice_ {
  /// see [Choice.id]
  static final id = QueryIntegerProperty<Choice>(_entities[1].properties[0]);

  /// see [Choice.value]
  static final value = QueryStringProperty<Choice>(_entities[1].properties[1]);

  /// see [Choice.weight]
  static final weight =
      QueryIntegerProperty<Choice>(_entities[1].properties[2]);
}

/// [CompatibilityLog] entity fields to define ObjectBox queries.
class CompatibilityLog_ {
  /// see [CompatibilityLog.id]
  static final id =
      QueryIntegerProperty<CompatibilityLog>(_entities[2].properties[0]);

  /// see [CompatibilityLog.user_id]
  static final user_id =
      QueryIntegerProperty<CompatibilityLog>(_entities[2].properties[1]);

  /// see [CompatibilityLog.compatible_user_id]
  static final compatible_user_id =
      QueryIntegerProperty<CompatibilityLog>(_entities[2].properties[2]);

  /// see [CompatibilityLog.date_stamp]
  static final date_stamp =
      QueryIntegerProperty<CompatibilityLog>(_entities[2].properties[3]);

  /// see [CompatibilityLog.percentage]
  static final percentage =
      QueryIntegerProperty<CompatibilityLog>(_entities[2].properties[4]);

  /// see [CompatibilityLog.difference]
  static final difference =
      QueryIntegerProperty<CompatibilityLog>(_entities[2].properties[5]);
}

/// [Quiz] entity fields to define ObjectBox queries.
class Quiz_ {
  /// see [Quiz.id]
  static final id = QueryIntegerProperty<Quiz>(_entities[3].properties[0]);

  /// see [Quiz.question]
  static final question = QueryStringProperty<Quiz>(_entities[3].properties[1]);

  /// see [Quiz.weight]
  static final weight = QueryIntegerProperty<Quiz>(_entities[3].properties[2]);

  /// see [Quiz.choice_id]
  static final choice_id =
      QueryIntegerProperty<Quiz>(_entities[3].properties[3]);
}

/// [User] entity fields to define ObjectBox queries.
class User_ {
  /// see [User.id]
  static final id = QueryIntegerProperty<User>(_entities[4].properties[0]);

  /// see [User.firstName]
  static final firstName =
      QueryStringProperty<User>(_entities[4].properties[1]);

  /// see [User.lastName]
  static final lastName = QueryStringProperty<User>(_entities[4].properties[2]);

  /// see [User.age]
  static final age = QueryIntegerProperty<User>(_entities[4].properties[3]);

  /// see [User.gender]
  static final gender = QueryStringProperty<User>(_entities[4].properties[4]);

  /// see [User.religion]
  static final religion = QueryStringProperty<User>(_entities[4].properties[5]);

  /// see [User.address]
  static final address = QueryStringProperty<User>(_entities[4].properties[6]);

  /// see [User.education]
  static final education =
      QueryStringProperty<User>(_entities[4].properties[7]);

  /// see [User.employment]
  static final employment =
      QueryStringProperty<User>(_entities[4].properties[8]);

  /// see [User.about]
  static final about = QueryStringProperty<User>(_entities[4].properties[9]);
}

/// [UserAuth] entity fields to define ObjectBox queries.
class UserAuth_ {
  /// see [UserAuth.id]
  static final id = QueryIntegerProperty<UserAuth>(_entities[5].properties[0]);

  /// see [UserAuth.userId]
  static final userId =
      QueryIntegerProperty<UserAuth>(_entities[5].properties[1]);

  /// see [UserAuth.email]
  static final email =
      QueryStringProperty<UserAuth>(_entities[5].properties[2]);

  /// see [UserAuth.password]
  static final password =
      QueryStringProperty<UserAuth>(_entities[5].properties[3]);
}
