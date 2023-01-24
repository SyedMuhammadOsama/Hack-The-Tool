part of 'bookmark_bloc.dart';

@freezed
class BookmarkState with _$BookmarkState {
  factory BookmarkState({
    required bool isLoading,
    required List<Bookmark>? allBookmark,
    required Bookmark? currentBookmark,
  }) = _BookmarkState;

  factory BookmarkState.initial() =>
      BookmarkState(isLoading: false, allBookmark: [], currentBookmark: null
          // user: FirebaseAuth.instance.currentUser,
          );
}
