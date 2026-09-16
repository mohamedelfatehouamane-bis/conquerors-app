.class public Lcom/gpc/ops/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/service/PurchaseService;


# static fields
.field public static final a:Ljava/lang/String; = "PurchaseGatewayServiceAGImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;)V
    .locals 6

    .line 1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v0, "user_id"

    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string p3, "game_id"

    invoke-virtual {v2, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string p2, "payment_type"

    const-string p3, "google_play"

    invoke-virtual {v2, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getSignature()Ljava/lang/String;

    move-result-object p2

    const-string p3, "signature"

    invoke-virtual {v3, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;->getOriginalJson()Ljava/lang/String;

    move-result-object p2

    const-string p3, "signed_data"

    invoke-virtual {v3, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-string p2, "payload"

    invoke-virtual {v3, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string v1, "/pay/gateway/android/app/notify"

    move-object v0, p0

    move-object v4, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/gpc/ops/x;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;",
            "Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;",
            ")V"
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/gpc/operations/migrate/service/request/cgi/builder/ServiceRequestAGBuilder;

    invoke-direct {v0, p1}, Lcom/gpc/operations/migrate/service/request/cgi/builder/ServiceRequestAGBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p3}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->body(Ljava/util/HashMap;)Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->parameters(Ljava/util/HashMap;)Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;

    move-result-object p1

    sget-object p2, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;->POST:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;

    .line 15
    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->method(Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;)Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;

    move-result-object p1

    new-instance p2, Lcom/gpc/ops/x$a;

    invoke-direct {p2, p0, p5, p4}, Lcom/gpc/ops/x$a;-><init>(Lcom/gpc/ops/x;Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    .line 16
    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->requestFinishListener(Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;)Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;

    move-result-object p1

    .line 43
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;->getServiceCall()Lcom/gpc/operations/migrate/service/request/prefixe/IServiceCall;

    move-result-object p2

    .line 44
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->build()Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/operations/migrate/service/request/prefixe/IServiceCall;->call(Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;)V

    return-void
.end method

.method public submit(Lcom/gpc/tsh/pay/bean/PaymentType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/gpc/tsh/pay/bean/PaymentType;->GOOGLE_PLAY:Lcom/gpc/tsh/pay/bean/PaymentType;

    const-string v1, "PurchaseGatewayServiceAGImpl"

    if-ne v0, p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "submitGoogle payload:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 3
    invoke-virtual/range {v2 .. v7}, Lcom/gpc/ops/x;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/tsh/pay/service/listener/SubmittalFinishedListener;)V

    return-void

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "unknown type:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/tsh/pay/bean/PaymentType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
