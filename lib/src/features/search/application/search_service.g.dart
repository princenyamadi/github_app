// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositorySearchHash() => r'621895b7b38eac9429b961fe0cacde35e1af529d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [repositorySearch].
@ProviderFor(repositorySearch)
const repositorySearchProvider = RepositorySearchFamily();

/// See also [repositorySearch].
class RepositorySearchFamily extends Family<
    AsyncValue<Either<Failure, GithubRepositorySearchResponse>>> {
  /// See also [repositorySearch].
  const RepositorySearchFamily();

  /// See also [repositorySearch].
  RepositorySearchProvider call(
    String query,
  ) {
    return RepositorySearchProvider(
      query,
    );
  }

  @override
  RepositorySearchProvider getProviderOverride(
    covariant RepositorySearchProvider provider,
  ) {
    return call(
      provider.query,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'repositorySearchProvider';
}

/// See also [repositorySearch].
class RepositorySearchProvider
    extends FutureProvider<Either<Failure, GithubRepositorySearchResponse>> {
  /// See also [repositorySearch].
  RepositorySearchProvider(
    String query,
  ) : this._internal(
          (ref) => repositorySearch(
            ref as RepositorySearchRef,
            query,
          ),
          from: repositorySearchProvider,
          name: r'repositorySearchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$repositorySearchHash,
          dependencies: RepositorySearchFamily._dependencies,
          allTransitiveDependencies:
              RepositorySearchFamily._allTransitiveDependencies,
          query: query,
        );

  RepositorySearchProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final String query;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, GithubRepositorySearchResponse>> Function(
            RepositorySearchRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RepositorySearchProvider._internal(
        (ref) => create(ref as RepositorySearchRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  FutureProviderElement<Either<Failure, GithubRepositorySearchResponse>>
      createElement() {
    return _RepositorySearchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RepositorySearchProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RepositorySearchRef
    on FutureProviderRef<Either<Failure, GithubRepositorySearchResponse>> {
  /// The parameter `query` of this provider.
  String get query;
}

class _RepositorySearchProviderElement extends FutureProviderElement<
    Either<Failure, GithubRepositorySearchResponse>> with RepositorySearchRef {
  _RepositorySearchProviderElement(super.provider);

  @override
  String get query => (origin as RepositorySearchProvider).query;
}

String _$userSearchHash() => r'48fd0893c200744d3663f7f72746cfd3389386ad';

/// See also [userSearch].
@ProviderFor(userSearch)
const userSearchProvider = UserSearchFamily();

/// See also [userSearch].
class UserSearchFamily
    extends Family<AsyncValue<Either<Failure, GithubUserSearchResponse>>> {
  /// See also [userSearch].
  const UserSearchFamily();

  /// See also [userSearch].
  UserSearchProvider call(
    String query,
  ) {
    return UserSearchProvider(
      query,
    );
  }

  @override
  UserSearchProvider getProviderOverride(
    covariant UserSearchProvider provider,
  ) {
    return call(
      provider.query,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userSearchProvider';
}

/// See also [userSearch].
class UserSearchProvider
    extends FutureProvider<Either<Failure, GithubUserSearchResponse>> {
  /// See also [userSearch].
  UserSearchProvider(
    String query,
  ) : this._internal(
          (ref) => userSearch(
            ref as UserSearchRef,
            query,
          ),
          from: userSearchProvider,
          name: r'userSearchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userSearchHash,
          dependencies: UserSearchFamily._dependencies,
          allTransitiveDependencies:
              UserSearchFamily._allTransitiveDependencies,
          query: query,
        );

  UserSearchProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final String query;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, GithubUserSearchResponse>> Function(
            UserSearchRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserSearchProvider._internal(
        (ref) => create(ref as UserSearchRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  FutureProviderElement<Either<Failure, GithubUserSearchResponse>>
      createElement() {
    return _UserSearchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserSearchProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserSearchRef
    on FutureProviderRef<Either<Failure, GithubUserSearchResponse>> {
  /// The parameter `query` of this provider.
  String get query;
}

class _UserSearchProviderElement
    extends FutureProviderElement<Either<Failure, GithubUserSearchResponse>>
    with UserSearchRef {
  _UserSearchProviderElement(super.provider);

  @override
  String get query => (origin as UserSearchProvider).query;
}

String _$githubUserHash() => r'027aee6344673ed4befffce216607ca061d588cd';

/// See also [githubUser].
@ProviderFor(githubUser)
const githubUserProvider = GithubUserFamily();

/// See also [githubUser].
class GithubUserFamily
    extends Family<AsyncValue<Either<Failure, UserResponse>>> {
  /// See also [githubUser].
  const GithubUserFamily();

  /// See also [githubUser].
  GithubUserProvider call(
    String username,
  ) {
    return GithubUserProvider(
      username,
    );
  }

  @override
  GithubUserProvider getProviderOverride(
    covariant GithubUserProvider provider,
  ) {
    return call(
      provider.username,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'githubUserProvider';
}

/// See also [githubUser].
class GithubUserProvider extends FutureProvider<Either<Failure, UserResponse>> {
  /// See also [githubUser].
  GithubUserProvider(
    String username,
  ) : this._internal(
          (ref) => githubUser(
            ref as GithubUserRef,
            username,
          ),
          from: githubUserProvider,
          name: r'githubUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$githubUserHash,
          dependencies: GithubUserFamily._dependencies,
          allTransitiveDependencies:
              GithubUserFamily._allTransitiveDependencies,
          username: username,
        );

  GithubUserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.username,
  }) : super.internal();

  final String username;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, UserResponse>> Function(GithubUserRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GithubUserProvider._internal(
        (ref) => create(ref as GithubUserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        username: username,
      ),
    );
  }

  @override
  FutureProviderElement<Either<Failure, UserResponse>> createElement() {
    return _GithubUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GithubUserProvider && other.username == username;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GithubUserRef on FutureProviderRef<Either<Failure, UserResponse>> {
  /// The parameter `username` of this provider.
  String get username;
}

class _GithubUserProviderElement
    extends FutureProviderElement<Either<Failure, UserResponse>>
    with GithubUserRef {
  _GithubUserProviderElement(super.provider);

  @override
  String get username => (origin as GithubUserProvider).username;
}

String _$userRepositoriesHash() => r'07a952a14f1380feb9703fdf0da7b4340c1ef05b';

/// See also [userRepositories].
@ProviderFor(userRepositories)
const userRepositoriesProvider = UserRepositoriesFamily();

/// See also [userRepositories].
class UserRepositoriesFamily
    extends Family<AsyncValue<Either<Failure, List<RepositoryResponse>>>> {
  /// See also [userRepositories].
  const UserRepositoriesFamily();

  /// See also [userRepositories].
  UserRepositoriesProvider call(
    String username,
  ) {
    return UserRepositoriesProvider(
      username,
    );
  }

  @override
  UserRepositoriesProvider getProviderOverride(
    covariant UserRepositoriesProvider provider,
  ) {
    return call(
      provider.username,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userRepositoriesProvider';
}

/// See also [userRepositories].
class UserRepositoriesProvider
    extends FutureProvider<Either<Failure, List<RepositoryResponse>>> {
  /// See also [userRepositories].
  UserRepositoriesProvider(
    String username,
  ) : this._internal(
          (ref) => userRepositories(
            ref as UserRepositoriesRef,
            username,
          ),
          from: userRepositoriesProvider,
          name: r'userRepositoriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userRepositoriesHash,
          dependencies: UserRepositoriesFamily._dependencies,
          allTransitiveDependencies:
              UserRepositoriesFamily._allTransitiveDependencies,
          username: username,
        );

  UserRepositoriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.username,
  }) : super.internal();

  final String username;

  @override
  Override overrideWith(
    FutureOr<Either<Failure, List<RepositoryResponse>>> Function(
            UserRepositoriesRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserRepositoriesProvider._internal(
        (ref) => create(ref as UserRepositoriesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        username: username,
      ),
    );
  }

  @override
  FutureProviderElement<Either<Failure, List<RepositoryResponse>>>
      createElement() {
    return _UserRepositoriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserRepositoriesProvider && other.username == username;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserRepositoriesRef
    on FutureProviderRef<Either<Failure, List<RepositoryResponse>>> {
  /// The parameter `username` of this provider.
  String get username;
}

class _UserRepositoriesProviderElement
    extends FutureProviderElement<Either<Failure, List<RepositoryResponse>>>
    with UserRepositoriesRef {
  _UserRepositoriesProviderElement(super.provider);

  @override
  String get username => (origin as UserRepositoriesProvider).username;
}

String _$repositoryLanguagesHash() =>
    r'f12afb0928c8de6b138898723eb3ea66b35796e8';

/// See also [repositoryLanguages].
@ProviderFor(repositoryLanguages)
const repositoryLanguagesProvider = RepositoryLanguagesFamily();

/// See also [repositoryLanguages].
class RepositoryLanguagesFamily
    extends Family<AsyncValue<Map<String, dynamic>>> {
  /// See also [repositoryLanguages].
  const RepositoryLanguagesFamily();

  /// See also [repositoryLanguages].
  RepositoryLanguagesProvider call(
    String url,
  ) {
    return RepositoryLanguagesProvider(
      url,
    );
  }

  @override
  RepositoryLanguagesProvider getProviderOverride(
    covariant RepositoryLanguagesProvider provider,
  ) {
    return call(
      provider.url,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'repositoryLanguagesProvider';
}

/// See also [repositoryLanguages].
class RepositoryLanguagesProvider extends FutureProvider<Map<String, dynamic>> {
  /// See also [repositoryLanguages].
  RepositoryLanguagesProvider(
    String url,
  ) : this._internal(
          (ref) => repositoryLanguages(
            ref as RepositoryLanguagesRef,
            url,
          ),
          from: repositoryLanguagesProvider,
          name: r'repositoryLanguagesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$repositoryLanguagesHash,
          dependencies: RepositoryLanguagesFamily._dependencies,
          allTransitiveDependencies:
              RepositoryLanguagesFamily._allTransitiveDependencies,
          url: url,
        );

  RepositoryLanguagesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.url,
  }) : super.internal();

  final String url;

  @override
  Override overrideWith(
    FutureOr<Map<String, dynamic>> Function(RepositoryLanguagesRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RepositoryLanguagesProvider._internal(
        (ref) => create(ref as RepositoryLanguagesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        url: url,
      ),
    );
  }

  @override
  FutureProviderElement<Map<String, dynamic>> createElement() {
    return _RepositoryLanguagesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RepositoryLanguagesProvider && other.url == url;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RepositoryLanguagesRef on FutureProviderRef<Map<String, dynamic>> {
  /// The parameter `url` of this provider.
  String get url;
}

class _RepositoryLanguagesProviderElement
    extends FutureProviderElement<Map<String, dynamic>>
    with RepositoryLanguagesRef {
  _RepositoryLanguagesProviderElement(super.provider);

  @override
  String get url => (origin as RepositoryLanguagesProvider).url;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
