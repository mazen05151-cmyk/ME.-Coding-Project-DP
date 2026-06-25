import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'a_user_history_v_o_l_u_n_t_e_e_r_model.dart';
export 'a_user_history_v_o_l_u_n_t_e_e_r_model.dart';

class AUserHistoryVOLUNTEERWidget extends StatefulWidget {
  const AUserHistoryVOLUNTEERWidget({super.key});

  static String routeName = 'A-UserHistoryVOLUNTEER';
  static String routePath = '/aUserHistoryVOLUNTEER';

  @override
  State<AUserHistoryVOLUNTEERWidget> createState() =>
      _AUserHistoryVOLUNTEERWidgetState();
}

class _AUserHistoryVOLUNTEERWidgetState
    extends State<AUserHistoryVOLUNTEERWidget> with TickerProviderStateMixin {
  late AUserHistoryVOLUNTEERModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AUserHistoryVOLUNTEERModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF121B2E),
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, _) => [
          SliverAppBar(
            pinned: false,
            floating: true,
            snap: false,
            backgroundColor: Color(0xFF121B2E),
            automaticallyImplyLeading: false,
            title: Text(
              FFLocalizations.of(context).getText(
                '3k35n4zk' /* My Services */,
              ),
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    font: GoogleFonts.urbanist(
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).tertiary,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 0.0,
          )
        ],
        body: Builder(
          builder: (context) {
            return SafeArea(
              top: false,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment(0.0, 0),
                          child: TabBar(
                            labelColor: Color(0xFF8BCF4E),
                            unselectedLabelColor:
                                FlutterFlowTheme.of(context).grayIcon,
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            unselectedLabelStyle: TextStyle(),
                            indicatorColor: Color(0xFF8BCF4E),
                            indicatorWeight: 4.0,
                            tabs: [
                              Tab(
                                text: FFLocalizations.of(context).getText(
                                  'qyu5nqql' /* Upcoming */,
                                ),
                              ),
                              Tab(
                                text: FFLocalizations.of(context).getText(
                                  '2wp2y9le' /* Completed */,
                                ),
                              ),
                            ],
                            controller: _model.tabBarController,
                            onTap: (i) async {
                              [() async {}, () async {}][i]();
                            },
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            children: [
                              // ==================== TAB 1: UPCOMING ====================
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: FutureBuilder<List<Map<String, dynamic>>>(
                                    future: () async {
                                      final supabase = Supabase.instance.client;
                                      final user = supabase.auth.currentUser;
                                      if (user == null) return <Map<String, dynamic>>[];
                                      final response = await supabase
                                          .from('bookings')
                                          .select('*, requester_id:profiles(display_name, photo_url)')
                                          .eq('volunteer_id', user.id)
                                          .order('created_at', ascending: false);
                                      return List<Map<String, dynamic>>.from(response)
                                          .where((b) => b['status'] == 'pending' || b['status'] == 'approved')
                                          .toList();
                                    }(),
                                    builder: (context, snapshot) {
                                      if (snapshot.connectionState == ConnectionState.waiting) {
                                        return const Center(
                                          child: CircularProgressIndicator(
                                            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF8BCF4E)),
                                          ),
                                        );
                                      }
                                      if (snapshot.hasError || !snapshot.hasData || snapshot.data!.isEmpty) {
                                        return Center(
                                          child: Text(
                                            'No upcoming assignments found.',
                                            style: TextStyle(color: FlutterFlowTheme.of(context).grayIcon),
                                          ),
                                        );
                                      }
                                      final bookings = snapshot.data!;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: bookings.length,
                                        itemBuilder: (context, index) {
                                          final booking = bookings[index];
                                          final requesterProfile = booking['requester_id'] as Map<String, dynamic>?;
                                          final status = booking['status'] as String? ?? 'pending';
                                          
                                          final String startTimeStr = booking['start_time'] ?? '';
                                          String formattedStart = 'N/A';
                                          try {
                                            if (startTimeStr.isNotEmpty) {
                                              final dt = DateTime.parse(startTimeStr).toLocal();
                                              formattedStart = '${dt.day}/${dt.month}/${dt.year} @ ${dt.hour}:${dt.minute.toString().padLeft(2, '0')}';
                                            }
                                          } catch (_) {}

                                          final photoUrl = requesterProfile?['photo_url'] ?? 'https://images.unsplash.com/photo-1534528741775-53994a69daeb';
                                          final displayName = requesterProfile?['display_name'] ?? 'Requester';

                                          return Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x32000000),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                borderRadius: BorderRadius.circular(8.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  InkWell(
                                                    splashColor: Colors.transparent,
                                                    focusColor: Colors.transparent,
                                                    hoverColor: Colors.transparent,
                                                    highlightColor: Colors.transparent,
                                                    onTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type: PageTransitionType.fade,
                                                          child: FlutterFlowExpandedImageView(
                                                            image: CachedNetworkImage(
                                                              fadeInDuration: Duration(milliseconds: 500),
                                                              fadeOutDuration: Duration(milliseconds: 500),
                                                              imageUrl: photoUrl,
                                                              fit: BoxFit.contain,
                                                            ),
                                                            allowRotation: false,
                                                            tag: 'volunteer_imageTag_$index',
                                                            useHeroAnimation: true,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Hero(
                                                      tag: 'volunteer_imageTag_$index',
                                                      transitionOnUserGestures: true,
                                                      child: ClipRRect(
                                                        borderRadius: BorderRadius.only(
                                                          topLeft: Radius.circular(8.0),
                                                          topRight: Radius.circular(8.0),
                                                        ),
                                                        child: CachedNetworkImage(
                                                          fadeInDuration: Duration(milliseconds: 500),
                                                          fadeOutDuration: Duration(milliseconds: 500),
                                                          imageUrl: photoUrl,
                                                          width: double.infinity,
                                                          height: 140.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 8.0),
                                                    child: Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          displayName,
                                                          style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                font: GoogleFonts.urbanist(
                                                                  fontWeight: FontWeight.bold,
                                                                  fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(context).darkText,
                                                                letterSpacing: 0.0,
                                                                fontWeight: FontWeight.bold,
                                                                fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                              ),
                                                        ),
                                                        Text(
                                                          ' - ',
                                                          style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                font: GoogleFonts.urbanist(
                                                                  fontWeight: FontWeight.bold,
                                                                  fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(context).darkText,
                                                                letterSpacing: 0.0,
                                                                fontWeight: FontWeight.bold,
                                                                fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                              ),
                                                        ),
                                                        Text(
                                                          status.toUpperCase(),
                                                          style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                font: GoogleFonts.urbanist(
                                                                  fontWeight: FontWeight.bold,
                                                                  fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                ),
                                                                color: status == 'approved' ? Color(0xFF8BCF4E) : Color(0xFFFFB800),
                                                                letterSpacing: 0.0,
                                                                fontWeight: FontWeight.bold,
                                                                fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                            child: Text(
                                                              'Scheduled: $formattedStart',
                                                              style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                    font: GoogleFonts.lexendDeca(
                                                                      fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(context).grayIcon,
                                                                    letterSpacing: 0.0,
                                                                    fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          'Active',
                                                          style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                font: GoogleFonts.urbanist(
                                                                  fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                ),
                                                                color: Color(0xFF8BCF4E),
                                                                letterSpacing: 0.0,
                                                                fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 12.0),
                                                    child: Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                          child: Text(
                                                            'Upcoming Task',
                                                            textAlign: TextAlign.end,
                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                  font: GoogleFonts.lexendDeca(
                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(context).grayIcon,
                                                                  letterSpacing: 0.0,
                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                              // ==================== TAB 2: COMPLETED ====================
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: FutureBuilder<List<Map<String, dynamic>>>(
                                    future: () async {
                                      final supabase = Supabase.instance.client;
                                      final user = supabase.auth.currentUser;
                                      if (user == null) return <Map<String, dynamic>>[];
                                      final response = await supabase
                                          .from('bookings')
                                          .select('*, requester_id:profiles(display_name, photo_url)')
                                          .eq('volunteer_id', user.id)
                                          .order('created_at', ascending: false);
                                      return List<Map<String, dynamic>>.from(response)
                                          .where((b) => b['status'] == 'completed' || b['status'] == 'cancelled')
                                          .toList();
                                    }(),
                                    builder: (context, snapshot) {
                                      if (snapshot.connectionState == ConnectionState.waiting) {
                                        return const Center(
                                          child: CircularProgressIndicator(
                                            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF8BCF4E)),
                                          ),
                                        );
                                      }
                                      if (snapshot.hasError || !snapshot.hasData || snapshot.data!.isEmpty) {
                                        return Center(
                                          child: Text(
                                            'No past service history found.',
                                            style: TextStyle(color: FlutterFlowTheme.of(context).grayIcon),
                                          ),
                                        );
                                      }
                                      final bookings = snapshot.data!;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: bookings.length,
                                        itemBuilder: (context, index) {
                                          final booking = bookings[index];
                                          final requesterProfile = booking['requester_id'] as Map<String, dynamic>?;
                                          final status = booking['status'] as String? ?? 'completed';
                                          
                                          final String startTimeStr = booking['start_time'] ?? '';
                                          String formattedStart = 'N/A';
                                          try {
                                            if (startTimeStr.isNotEmpty) {
                                              final dt = DateTime.parse(startTimeStr).toLocal();
                                              formattedStart = '${dt.day}/${dt.month}/${dt.year}';
                                            }
                                          } catch (_) {}

                                          final photoUrl = requesterProfile?['photo_url'] ?? 'https://images.unsplash.com/photo-1534528741775-53994a69daeb';
                                          final displayName = requesterProfile?['display_name'] ?? 'Requester';

                                          return Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x32000000),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                borderRadius: BorderRadius.circular(8.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius: BorderRadius.only(
                                                          topLeft: Radius.circular(8.0),
                                                          topRight: Radius.circular(8.0),
                                                        ),
                                                        child: CachedNetworkImage(
                                                          imageUrl: photoUrl,
                                                          width: double.infinity,
                                                          height: 140.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment: AlignmentDirectional(0.89, -0.76),
                                                        child: Padding(
                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 36.0,
                                                            decoration: BoxDecoration(
                                                              color: status == 'cancelled' ? Color(0xD8ED7070) : Color(0xD88BCF4E),
                                                              borderRadius: BorderRadius.circular(30.0),
                                                            ),
                                                            alignment: AlignmentDirectional(0.0, 0.0),
                                                            child: Text(
                                                              status.toUpperCase(),
                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                    font: GoogleFonts.urbanist(
                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                    letterSpacing: 0.0,
                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 8.0),
                                                    child: Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          displayName,
                                                          style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                font: GoogleFonts.urbanist(
                                                                  fontWeight: FontWeight.bold,
                                                                  fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(context).darkText,
                                                                letterSpacing: 0.0,
                                                                fontWeight: FontWeight.bold,
                                                                fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                              ),
                                                        ),
                                                        Text(
                                                          ' - ',
                                                          style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                font: GoogleFonts.urbanist(
                                                                  fontWeight: FontWeight.bold,
                                                                  fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(context).darkText,
                                                                letterSpacing: 0.0,
                                                                fontWeight: FontWeight.bold,
                                                                fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                              ),
                                                        ),
                                                        Text(
                                                          'History',
                                                          style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                font: GoogleFonts.urbanist(
                                                                  fontWeight: FontWeight.bold,
                                                                  fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(context).darkText,
                                                                letterSpacing: 0.0,
                                                                fontWeight: FontWeight.bold,
                                                                fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
                                                    child: Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Date: $formattedStart',
                                                          style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                font: GoogleFonts.urbanist(
                                                                  fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                ),
                                                                letterSpacing: 0.0,
                                                                fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                              ),
                                                        ),
                                                        FFButtonWidget(
                                                          onPressed: () {
                                                            print('Button pressed ...');
                                                          },
                                                          text: FFLocalizations.of(context).getText(
                                                            '2xz5aoq3' /* Rate Trip */,
                                                          ),
                                                          options: FFButtonOptions(
                                                            width: 130.0,
                                                            height: 44.0,
                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                            color: Color(0xFF8BCF4E),
                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                  font: GoogleFonts.urbanist(
                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                  ),
                                                                  color: Colors.white,
                                                                  letterSpacing: 0.0,
                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                ),
                                                            elevation: 2.0,
                                                            borderSide: BorderSide(
                                                              color: Colors.transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius: BorderRadius.circular(30.0),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}