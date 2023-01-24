import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hack_the_tool/utils.dart';

import '../../models/bookmark.dart';
import '../../services/bookmark_service.dart';

part 'bookmark_bloc.freezed.dart';
part 'bookmark_event.dart';
part 'bookmark_state.dart';

class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
  StreamSubscription? bookmarkStream;
  BookmarkService bookmarkService = BookmarkService();

  BookmarkBloc() : super(BookmarkState.initial()) {
    bookmarkStream = bookmarkService.allBKStream().listen((allBookmark) {
      if (allBookmark != null) {
        add(BookmarkEvent.onGetAllBookmark(allBookmark));
      }
    });

    on<OnGetAllBookmark>(
        (event, emit) async => await _onGetAllBookmark(event, emit));
    on<OnDeleteBookmark>(
        (event, emit) async => await _onDeleteBookmark(event, emit));

    on<OnAddBookmark>((event, emit) async => await _onAddBookmark(event, emit));
  }

  Future<void> _onGetAllBookmark(OnGetAllBookmark event, Emitter emit) async {
    emit(state.copyWith(allBookmark: event.allBookmark));
  }

  Future<void> _onDeleteBookmark(OnDeleteBookmark event, Emitter emit) async {
    await bookmarkService.deleteBookmark(event.currentBookmark);
  }

  Future<void> _onAddBookmark(OnAddBookmark event, Emitter emit) async {
    bool isAdded = false;
    for (Bookmark item in state.allBookmark!) {
      if (item.shortcutResult == event.currentBookmark.shortcutResult &&
          item.softwareName == event.currentBookmark.softwareName) {
        isAdded = true;
        break;
      }
    }
    if (isAdded) {
      Utils().showSnackBar('This item is already added to to bookmark');
    } else {
      await bookmarkService.addBookmark(newBookmark: event.currentBookmark);
      Utils().showSnackBar('Successfully added to bookmark');
    }
  }

  @override
  Future<void> close() {
    bookmarkStream?.cancel();
    return super.close();
  }
}
