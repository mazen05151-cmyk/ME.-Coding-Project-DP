import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../custom_code/send_chat_message.dart';
import '../custom_code/stream_chat_messages.dart';
import 'chat_page_model.dart';
export 'chat_page_model.dart';

class ChatPageWidget extends StatefulWidget {
  final String assignmentId;

  const ChatPageWidget({
    super.key, 
    required this.assignmentId,
  });

  @override
  State<ChatPageWidget> createState() => _ChatPageWidgetState();
}

class _ChatPageWidgetState extends State<ChatPageWidget> {
  late ChatPageModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatPageModel());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  void _sendMessage() async {
    if (_model.textController?.text.trim().isEmpty ?? true) return;

    final text = _model.textController!.text.trim();
    _model.textController!.clear();

    bool success = await sendChatMessage(
      assignmentId: widget.assignmentId,
      content: text,
    );

    if (!success) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to send message.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentUserId = Supabase.instance.client.auth.currentUser?.id;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            // Top Header Custom Layout
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 50.0, 20.0, 20.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: const Color(0xFF8BCF4E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                        size: 25.0,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Live Chat',
                      style: FlutterFlowTheme.of(context).headlineMedium.override(
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
            ),

            // Live Message History Section
            Expanded(
              child: StreamBuilder<List<Map<String, dynamic>>>(
                stream: streamChatMessages(widget.assignmentId),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator(color: Color(0xFF8BCF4E)));
                  }
                  if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(
                      child: Text(
                        'No messages yet. Say hi!',
                        style: GoogleFonts.urbanist(color: Colors.grey),
                      ),
                    );
                  }

                  final messages = snapshot.data!;

                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    if (_model.scrollController!.hasClients) {
                      _model.scrollController!.jumpTo(_model.scrollController!.position.maxScrollExtent);
                    }
                  });

                  return ListView.builder(
                    controller: _model.scrollController,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      final msg = messages[index];
                      final isMe = msg['sender_id'] == currentUserId;

                      return Align(
                        alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: isMe ? const Color(0xFF8BCF4E) : Colors.grey[200],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            msg['content'] ?? '',
                            style: GoogleFonts.urbanist(
                              color: isMe ? Colors.white : Colors.black87,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),

            // Message Input Area Bottom Bar
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: const BoxDecoration(
                color: Color(0xFF8BCF4E),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 7.0,
                    color: Color(0x55000000),
                    offset: Offset(0.0, -1.0),
                  )
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 34.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: TextField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          style: GoogleFonts.urbanist(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: 'Type a message...',
                            hintStyle: GoogleFonts.urbanist(color: Colors.grey),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.send, color: Color(0xFF8BCF4E)),
                        onPressed: _sendMessage,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}