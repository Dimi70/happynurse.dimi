import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_checkbox_group.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({Key key}) : super(key: key);

  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  List<String> checkboxGroupValues;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: GetUserCall.call(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        final testGetUserResponse = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
              automaticallyImplyLeading: false,
              flexibleSpace: Text(
                'Page Title',
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Acumin',
                      color: Color(0xFF0D7EB3),
                      useGoogleFonts: false,
                    ),
              ),
              actions: [],
              elevation: 4,
            ),
          ),
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          getJsonField(
                            (testGetUserResponse?.jsonBody ?? ''),
                            r'''$.user.first_name''',
                          ).toString(),
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context).title2,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                            child: Container(
                              width: double.infinity,
                              constraints: BoxConstraints(
                                maxHeight: double.infinity,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0x4D000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 16, 16, 16),
                                child: Builder(
                                  builder: (context) {
                                    final availabity = getJsonField(
                                          (testGetUserResponse?.jsonBody ?? ''),
                                          r'''$.user.preferences.availabity''',
                                        )?.toList() ??
                                        [];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: List.generate(availabity.length,
                                          (availabityIndex) {
                                        final availabityItem =
                                            availabity[availabityIndex];
                                        return Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFFEEEEEE),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(),
                                                child: FlutterFlowCheckboxGroup(
                                                  initiallySelected:
                                                      checkboxGroupValues ??=
                                                          (getJsonField(
                                                    availabityItem,
                                                    r'''$.night''',
                                                  ) as List)
                                                              .map<String>((s) =>
                                                                  s.toString())
                                                              .toList(),
                                                  options: [
                                                    'morning',
                                                    'afternoon',
                                                    'evening',
                                                    'night'
                                                  ].toList(),
                                                  onChanged: (val) => setState(
                                                      () =>
                                                          checkboxGroupValues =
                                                              val),
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryColor,
                                                  checkColor: Colors.white,
                                                  checkboxBorderColor:
                                                      Color(0xFF95A1AC),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText1,
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8, 8, 8, 8),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              getJsonField(
                                                                availabityItem,
                                                                r'''$.day_of_week''',
                                                              ).toString(),
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .subtitle2,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(16, 0,
                                                                    0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 400,
                                                              height: 40,
                                                              child: custom_widgets
                                                                  .CheckboxIntWidget(
                                                                width: 400,
                                                                height: 40,
                                                                name: 'Morning',
                                                                checked:
                                                                    getJsonField(
                                                                  availabityItem,
                                                                  r'''$.morning''',
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(16, 0,
                                                                    0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 400,
                                                              height: 40,
                                                              child: custom_widgets
                                                                  .CheckboxIntWidget(
                                                                width: 400,
                                                                height: 40,
                                                                name:
                                                                    'Afternoon',
                                                                checked:
                                                                    getJsonField(
                                                                  availabityItem,
                                                                  r'''$.afternoon''',
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(16, 0,
                                                                    0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 400,
                                                              height: 40,
                                                              child: custom_widgets
                                                                  .CheckboxIntWidget(
                                                                width: 400,
                                                                height: 40,
                                                                name: 'Evening',
                                                                checked:
                                                                    getJsonField(
                                                                  availabityItem,
                                                                  r'''$.evening''',
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(16, 0,
                                                                    0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 400,
                                                              height: 40,
                                                              child: custom_widgets
                                                                  .CheckboxIntWidget(
                                                                width: 400,
                                                                height: 40,
                                                                name: 'Night',
                                                                checked:
                                                                    getJsonField(
                                                                  availabityItem,
                                                                  r'''$.night''',
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
