import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    super.key,
    required this.title,
    required this.description,
    required this.date,
    this.onDelete,
    this.onEdit,
    this.onShare,
  });
  final String title;
  final String description;
  final String date;
  final void Function()? onDelete;
  final void Function()? onEdit;
  final void Function()? onShare;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blueAccent
          , borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  maxLines: 1,
                  title,
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              IconButton(onPressed: onDelete, icon: Icon(Icons.delete))
            ],
          ),
          Text(
            description,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
          ),
          SizedBox(height: 15),
          Text(
            date,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(onPressed: onEdit, icon: Icon(Icons.edit)),
              IconButton(onPressed: onShare, icon: Icon(Icons.share)),
            ],
          )
        ],
      ),
    );
  }
}
