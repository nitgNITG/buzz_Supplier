import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/addedto_basket/addedto_basket_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'note_model.dart';
export 'note_model.dart';

class NoteWidget extends StatefulWidget {
  const NoteWidget({
    super.key,
    this.pro,
    this.cart,
  });

  final ProductsRecord? pro;
  final CartRecord? cart;

  @override
  State<NoteWidget> createState() => _NoteWidgetState();
}

class _NoteWidgetState extends State<NoteWidget> {
  late NoteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoteModel());
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
        child: StreamBuilder<List<ProductsRecord>>(
          stream: queryProductsRecord(
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
            List<ProductsRecord> containerProductsRecordList = snapshot.data!;
            // Return an empty Container when the item does not exist.
            if (snapshot.data!.isEmpty) {
              return Container();
            }
            final containerProductsRecord =
                containerProductsRecordList.isNotEmpty
                    ? containerProductsRecordList.first
                    : null;

            return Container(
              height: 350.0,
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
                    FFLocalizations.of(context).getText(
                      'ynl17hvt' /* Note */,
                    ),
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
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'y6cmyg64' /* You have already selected prod... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Cairo',
                            color: const Color(0xFF8B8B8B),
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                          ),
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
                            text: FFLocalizations.of(context).getText(
                              'z51w0rw4' /* NO */,
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
                        child: Stack(
                          children: [
                            if (containerProductsRecord?.isOffer == false)
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: StreamBuilder<List<CartRecord>>(
                                  stream: queryCartRecord(
                                    parent: currentUserReference,
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
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<CartRecord> buttonCartRecordList =
                                        snapshot.data!;
                                    // Return an empty Container when the item does not exist.
                                    if (snapshot.data!.isEmpty) {
                                      return Container();
                                    }
                                    final buttonCartRecord =
                                        buttonCartRecordList.isNotEmpty
                                            ? buttonCartRecordList.first
                                            : null;

                                    return FFButtonWidget(
                                      onPressed: () async {
                                        await buttonCartRecord!.reference
                                            .update({
                                          ...mapToFirestore(
                                            {
                                              'ProductList':
                                                  FieldValue.delete(),
                                              'Supplier': FieldValue.delete(),
                                              'Price': FieldValue.delete(),
                                              'Quantity': FieldValue.delete(),
                                            },
                                          ),
                                        });

                                        await widget.cart!.reference.update({
                                          ...createCartRecordData(
                                            supplier: widget.pro?.supplier,
                                            quantity: 1,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'ProductList':
                                                  FieldValue.arrayUnion([
                                                getProductListFirestoreData(
                                                  createProductListStruct(
                                                    quantity: 1,
                                                    pro: widget.pro?.reference,
                                                    sup: widget.pro?.supplier,
                                                    price: 6,
                                                    clearUnsetFields: false,
                                                  ),
                                                  true,
                                                )
                                              ]),
                                              'Price': FieldValue.increment(
                                                  widget.pro!.originalPrice),
                                            },
                                          ),
                                        });
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: AddedtoBasketWidget(
                                                pro: containerProductsRecord,
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));

                                        Navigator.pop(context);
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'kjql9n70' /* YES */,
                                      ),
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 50.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0xFFFCB303),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Cairo',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                        elevation: 0.0,
                                        borderSide: const BorderSide(
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            if (widget.pro?.isOffer == true)
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: StreamBuilder<List<CartRecord>>(
                                  stream: queryCartRecord(
                                    parent: currentUserReference,
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
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<CartRecord> buttonCartRecordList =
                                        snapshot.data!;
                                    // Return an empty Container when the item does not exist.
                                    if (snapshot.data!.isEmpty) {
                                      return Container();
                                    }
                                    final buttonCartRecord =
                                        buttonCartRecordList.isNotEmpty
                                            ? buttonCartRecordList.first
                                            : null;

                                    return FFButtonWidget(
                                      onPressed: () async {
                                        await buttonCartRecord!.reference
                                            .update({
                                          ...mapToFirestore(
                                            {
                                              'ProductList':
                                                  FieldValue.delete(),
                                              'Supplier': FieldValue.delete(),
                                              'Price': FieldValue.delete(),
                                              'Quantity': FieldValue.delete(),
                                            },
                                          ),
                                        });

                                        await widget.cart!.reference.update({
                                          ...createCartRecordData(
                                            supplier: widget.pro?.supplier,
                                            quantity: 1,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'ProductList':
                                                  FieldValue.arrayUnion([
                                                getProductListFirestoreData(
                                                  createProductListStruct(
                                                    quantity: 1,
                                                    pro: widget.pro?.reference,
                                                    sup: widget.pro?.supplier,
                                                    price: 4,
                                                    clearUnsetFields: false,
                                                  ),
                                                  true,
                                                )
                                              ]),
                                              'Price': FieldValue.increment(
                                                  widget.pro!.afterOfferd),
                                            },
                                          ),
                                        });
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: AddedtoBasketWidget(
                                                pro: containerProductsRecord,
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));

                                        Navigator.pop(context);
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'zt7wu6th' /* YES */,
                                      ),
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 50.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0xFFFCB303),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Cairo',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                        elevation: 0.0,
                                        borderSide: const BorderSide(
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                    );
                                  },
                                ),
                              ),
                          ],
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
