import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'ready_but_not_recived_model.dart';
export 'ready_but_not_recived_model.dart';

class ReadyButNotRecivedWidget extends StatefulWidget {
  const ReadyButNotRecivedWidget({
    super.key,
    this.order,
  });

  final OrderRecord? order;

  @override
  State<ReadyButNotRecivedWidget> createState() =>
      _ReadyButNotRecivedWidgetState();
}

class _ReadyButNotRecivedWidgetState extends State<ReadyButNotRecivedWidget> {
  late ReadyButNotRecivedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReadyButNotRecivedModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: StreamBuilder<List<TranslatorRecord>>(
          stream: queryTranslatorRecord(
            singleRecord: true,
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                ),
              );
            }
            List<TranslatorRecord> containerTranslatorRecordList =
                snapshot.data!;
            final containerTranslatorRecord =
                containerTranslatorRecordList.isNotEmpty
                    ? containerTranslatorRecordList.first
                    : null;

            return Container(
              height: 265.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(8.0),
              ),
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '${valueOrDefault<String>(
                      FFLocalizations.of(context).languageCode == 'en'
                          ? containerTranslatorRecord?.readyButNotRecived
                          : containerTranslatorRecord?.readyButNotRecivedAr,
                      '0',
                    )} ?',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Cairo',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: FFLocalizations.of(context).getText(
                              'du0db8pe' /* Are you sure you want to ready... */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Cairo',
                                  color: const Color(0xFF8B8B8B),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          TextSpan(
                            text: valueOrDefault<String>(
                              widget.order?.orderId,
                              '0',
                            ),
                            style: const TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Cairo',
                              color: const Color(0xFF8B8B8B),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            text: valueOrDefault<String>(
                              FFLocalizations.of(context).languageCode == 'en'
                                  ? containerTranslatorRecord?.no
                                  : containerTranslatorRecord?.noAr,
                              '0',
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (valueOrDefault(
                                      currentUserDocument?.type, '') ==
                                  'Supplier') {
                                await widget.order!.reference
                                    .update(createOrderRecordData(
                                  status: 'Ready But Not Recived',
                                  dcStatus: 'Ready But Not Recived',
                                  statuesArabic: 'جاهز و غير مستلم',
                                ));

                                var notificationRecordReference =
                                    NotificationRecord.collection.doc();
                                await notificationRecordReference
                                    .set(createNotificationRecordData(
                                  sendFrom: currentUserReference,
                                  sendTo: widget.order?.user,
                                  descreption:
                                      'Your Order(Order #${widget.order?.orderId}) Has Been Ready But Not Recived.',
                                  time: getCurrentTimestamp,
                                  viewed: false,
                                  title:
                                      'Your Order Has Ready But Not Recived Please Come',
                                  statuesType: 'Ready But Not Recived',
                                  order: widget.order?.reference,
                                ));
                                _model.noteAdd3 =
                                    NotificationRecord.getDocumentFromData(
                                        createNotificationRecordData(
                                          sendFrom: currentUserReference,
                                          sendTo: widget.order?.user,
                                          descreption:
                                              'Your Order(Order #${widget.order?.orderId}) Has Been Ready But Not Recived.',
                                          time: getCurrentTimestamp,
                                          viewed: false,
                                          title:
                                              'Your Order Has Ready But Not Recived Please Come',
                                          statuesType: 'Ready But Not Recived',
                                          order: widget.order?.reference,
                                        ),
                                        notificationRecordReference);
                                triggerPushNotification(
                                  notificationTitle: _model.noteAdd3!.title,
                                  notificationText:
                                      _model.noteAdd3!.descreption,
                                  userRefs: [widget.order!.user!],
                                  initialPageName: 'OrderDetails',
                                  parameterData: {
                                    'order': widget.order?.reference,
                                    'order2': widget.order,
                                  },
                                );
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      FFLocalizations.of(context)
                                                  .languageCode ==
                                              'en'
                                          ? 'Order Is Ready But Not Recived'
                                          : 'جاهز و غير مستلم',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 2000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'NOT USER',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }

                              safeSetState(() {});
                            },
                            text: valueOrDefault<String>(
                              FFLocalizations.of(context).languageCode == 'en'
                                  ? containerTranslatorRecord?.yes
                                  : containerTranslatorRecord?.yesAr,
                              '0',
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFFFCB303),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Cairo',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                              elevation: 0.0,
                              borderSide: const BorderSide(
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ),
                      ),
                    ],
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
