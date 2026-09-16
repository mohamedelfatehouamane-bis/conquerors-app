.class public Lcom/gpc/sdk/payment/external/ExPaymentServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/external/ExPaymentService;


# instance fields
.field public a:Lcom/gpc/sdk/payment/service/PaymentService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/factory/PaymentFactory;->getPaymentService()Lcom/gpc/sdk/payment/service/PaymentService;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/external/ExPaymentServiceImpl;->a:Lcom/gpc/sdk/payment/service/PaymentService;

    return-void
.end method


# virtual methods
.method public antiAddiction(Ljava/lang/String;ILjava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/external/ExPaymentServiceImpl;->a:Lcom/gpc/sdk/payment/service/PaymentService;

    invoke-virtual/range {p4 .. p4}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->getSingle()D

    move-result-wide v4

    invoke-virtual/range {p4 .. p4}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->getDaily()D

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->getMonthly()D

    move-result-wide v8

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-interface/range {v0 .. v11}, Lcom/gpc/sdk/payment/service/PaymentService;->antiAddiction(Ljava/lang/String;ILjava/lang/String;DDDLjava/lang/String;Lcom/gpc/sdk/payment/listener/GPCPaymentAntiAddictionResultListener;)V

    return-void
.end method

.method public getAlipayOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentOrdersNoListener;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/external/ExPaymentServiceImpl;->a:Lcom/gpc/sdk/payment/service/PaymentService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/gpc/sdk/payment/service/PaymentService;->getAlipayOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentOrdersNoListener;)V

    return-void
.end method

.method public getApprovalAppNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/external/ExPaymentServiceImpl;->a:Lcom/gpc/sdk/payment/service/PaymentService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/gpc/sdk/payment/service/PaymentService;->getApprovalAppNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;)V

    return-void
.end method

.method public getWeChatOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentAdvanceOrderDataListener;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/external/ExPaymentServiceImpl;->a:Lcom/gpc/sdk/payment/service/PaymentService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/gpc/sdk/payment/service/PaymentService;->getWeChatOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentAdvanceOrderDataListener;)V

    return-void
.end method

.method public loadItemsAndUserLimit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/gpc/sdk/payment/listener/PaymentItemsAndUserLimitListener;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/external/ExPaymentServiceImpl;->a:Lcom/gpc/sdk/payment/service/PaymentService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/gpc/sdk/payment/service/PaymentService;->loadItemsAndUserLimit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/gpc/sdk/payment/listener/PaymentItemsAndUserLimitListener;)V

    return-void
.end method

.method public requestLimitState(Ljava/lang/String;Ljava/lang/String;IIFLjava/lang/String;Lcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/external/ExPaymentServiceImpl;->a:Lcom/gpc/sdk/payment/service/PaymentService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/gpc/sdk/payment/service/PaymentService;->requestLimitState(Ljava/lang/String;Ljava/lang/String;IIFLjava/lang/String;Lcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;)V

    return-void
.end method

.method public requestLimitState(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentLimitStateWithPriorityListener;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/external/ExPaymentServiceImpl;->a:Lcom/gpc/sdk/payment/service/PaymentService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/gpc/sdk/payment/service/PaymentService;->requestLimitState(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;Ljava/lang/String;Lcom/gpc/sdk/payment/listener/PaymentLimitStateWithPriorityListener;)V

    return-void
.end method
