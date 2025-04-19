import 'package:flutter/material.dart';
import 'package:app_02/AppNotes/dp/NoteDatabaseHelper.dart';
import 'package:app_02/AppNotes/model/Notes.dart';
import 'AddNoteScreen.dart';
import 'EditNoteScreen.dart';
import 'NoteListItem.dart';

class NoteListScreen extends StatefulWidget {
  @override
  _NoteListScreenState createState() => _NoteListScreenState();
}

class _NoteListScreenState extends State<NoteListScreen> {
  late Future<List<Note>> _notesFuture;

  @override
  void initState() {
    super.initState();
    _refreshNotes();
  }

  // Làm mới danh sách ghi chú
  Future<void> _refreshNotes() async {
    setState(() {
      _notesFuture = NoteDatabaseHelper.instance.getAllNotes();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh sách ghi chú'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _refreshNotes, // Làm mới danh sách khi nhấn nút
          ),
        ],
      ),
      body: FutureBuilder<List<Note>>(
        future: _notesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Hiển thị vòng tròn chờ
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            // Hiển thị thông báo lỗi nếu có lỗi
            return Center(
              child: Text('Đã xảy ra lỗi: ${snapshot.error}'),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            // Hiển thị khi không có ghi chú
            return Center(
              child: Text('Không có ghi chú nào.'),
            );
          } else {
            // Hiển thị danh sách ghi chú
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final note = snapshot.data![index];
                return NoteListItem(
                  note: note,
                  onDelete: () async {
                    // Xử lý xóa ghi chú
                    await NoteDatabaseHelper.instance.deleteNote(note.id!);
                    _refreshNotes();
                  },
                  onEdit: () async {
                    // Chuyển sang màn hình chỉnh sửa ghi chú
                    final updated = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditNoteScreen(note: note),
                      ),
                    );
                    if (updated == true) {
                      _refreshNotes();
                    }
                  },
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          // Chuyển sang màn hình thêm ghi chú
          final created = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddNoteScreen(),
            ),
          );
          if (created == true) {
            _refreshNotes();
          }
        },
      ),
    );
  }
}
