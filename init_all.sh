set -ex
(flutter pub get)
(flutter pub run build_runner build --delete-conflicting-outputs)
#(cd ios; pod install)
