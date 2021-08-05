# Using both Realm and RealmSwift.

1. `Realm` and `RealmSwift` can coexist in one project.

2. `RealmSwift` has `Realm` as a dependency.

3. `Realm` and `RealmSwift` are not interoperable, but we can use them separately.

4. The database files are not compatible. `Realm` and `RealmSwift` must use different database files.

5. `Realm` and `RealmSwift` use different APIs, classes, and namespaces. 

6. `Realm` works with `RLMRealm` scope.

7. `RealmSwift` works with `Realm` scope.

8. Developers will get compile time error, if they attempt to cross the scope.
