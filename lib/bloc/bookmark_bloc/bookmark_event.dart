part of 'bookmark_bloc.dart';

@freezed
class BookmarkEvent with _$BookmarkEvent {
  factory BookmarkEvent.onGetAllBookmark(List<Bookmark> allBookmark) =
      OnGetAllBookmark;
  factory BookmarkEvent.onDeleteBookmark(Bookmark currentBookmark) =
      OnDeleteBookmark;
  factory BookmarkEvent.onAddBookmark(Bookmark currentBookmark) = OnAddBookmark;
}
