.class public Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/client/IGPCPaymentClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;,
        Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$o;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "HuaweiPaymentClient"

.field public static final h:I = 0x0

.field public static final i:I = 0xf423f

.field public static final j:I = 0xf423e

.field public static final k:I = 0xf423d

.field public static final l:I = 0x4a3d

.field public static final m:I = 0x4a3e

.field public static final n:I = 0x4a3f

.field public static final o:I = 0x4a40

.field public static final p:I = 0x4a41

.field public static q:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient; = null

.field public static r:Z = false

.field public static s:Lcom/huawei/hms/iap/IapApiException; = null

.field public static t:Lcom/huawei/hms/support/api/client/Status; = null

.field public static u:Z = true

.field public static v:Z = false


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Lcom/huawei/hms/iap/IapClient;

.field public c:I

.field public d:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$o;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$o;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->c:I

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->e:Ljava/util/Map;

    .line 101
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a:Landroid/app/Activity;

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/Exception;)I
    .locals 3

    .line 40
    instance-of v0, p1, Lcom/huawei/hms/iap/IapApiException;

    const-string v1, "HuaweiPaymentClient"

    if-eqz v0, :cond_6

    .line 41
    check-cast p1, Lcom/huawei/hms/iap/IapApiException;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " exceptionHandle returnCode: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/hms/iap/IapApiException;->getStatusCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/huawei/hms/iap/IapApiException;->getStatusCode()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const v2, 0xea65

    if-eq v0, v2, :cond_3

    const v2, 0xea74

    if-eq v0, v2, :cond_2

    const v2, 0xea60

    if-eq v0, v2, :cond_1

    const v2, 0xea61

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 84
    const-string p0, "Order unknown error!"

    invoke-static {v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_0
    const-string v0, "ORDER_NOT_ACCEPT_AGREEMENT!"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/huawei/hms/iap/IapApiException;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object v0

    const/16 v1, 0x4a40

    invoke-static {p0, v0, v1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(Landroid/app/Activity;Lcom/huawei/hms/support/api/client/Status;I)V

    goto :goto_0

    .line 87
    :pswitch_1
    const-string p0, "Order account area not supported error!"

    invoke-static {v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :pswitch_2
    const-string p0, "Product consumed error!"

    invoke-static {v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :pswitch_3
    const-string p0, "Product not owned error!"

    invoke-static {v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :pswitch_4
    const-string p0, "Product already owned error!"

    invoke-static {v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :pswitch_5
    const-string v0, "ORDER_HWID_NOT_LOGIN!"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/huawei/hms/iap/IapApiException;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object v0

    const/16 v1, 0x4a3e

    invoke-static {p0, v0, v1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(Landroid/app/Activity;Lcom/huawei/hms/support/api/client/Status;I)V

    goto :goto_0

    .line 93
    :cond_0
    const-string p0, "Order state param error!"

    invoke-static {v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    const-string p0, "Order has been canceled!"

    invoke-static {v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    const-string p0, "Order vr uninstall error!"

    invoke-static {v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_3
    const-string p0, "Order state net error!"

    invoke-static {v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_4
    const-string p0, "ORDER_STATE_DEFAULT_CODE!"

    invoke-static {v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_5
    const-string p0, "ORDER_STATE_FAILED!"

    invoke-static {v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_0
    invoke-virtual {p1}, Lcom/huawei/hms/iap/IapApiException;->getStatusCode()I

    move-result p0

    return p0

    .line 149
    :cond_6
    instance-of p0, p1, Lcom/huawei/hms/common/ApiException;

    if-eqz p0, :cond_7

    .line 150
    const-string p0, ""

    invoke-static {v1, p0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    check-cast p1, Lcom/huawei/hms/common/ApiException;

    .line 152
    invoke-virtual {p1}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result p0

    return p0

    .line 154
    :cond_7
    const-string p0, "Unknown error!"

    invoke-static {v1, p0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const p0, 0xf423f

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xea92
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;)Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;
    .locals 1

    .line 2
    sget-object v0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->q:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a:Landroid/app/Activity;

    if-eq v0, p0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->q:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    .line 5
    :cond_1
    sget-object p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->q:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    return-object p0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/iap/entity/PurchaseIntentReq;
    .locals 1

    .line 6
    new-instance v0, Lcom/huawei/hms/iap/entity/PurchaseIntentReq;

    invoke-direct {v0}, Lcom/huawei/hms/iap/entity/PurchaseIntentReq;-><init>()V

    .line 7
    invoke-virtual {v0, p0}, Lcom/huawei/hms/iap/entity/PurchaseIntentReq;->setPriceType(I)V

    .line 8
    invoke-virtual {v0, p1}, Lcom/huawei/hms/iap/entity/PurchaseIntentReq;->setProductId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p2}, Lcom/huawei/hms/iap/entity/PurchaseIntentReq;->setDeveloperPayload(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/huawei/hms/support/api/client/Status;I)V
    .locals 2

    const-string v0, "HuaweiPaymentClient"

    if-nez p1, :cond_0

    .line 156
    const-string p0, "status is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Status;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    :try_start_0
    invoke-virtual {p1, p0, p2}, Lcom/huawei/hms/support/api/client/Status;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 163
    const-string p1, "startResolutionForResult error"

    invoke-static {v0, p1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 166
    :cond_1
    const-string p0, "startResolutionForResult intent is null"

    invoke-static {v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;ILjava/util/List;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(ILjava/util/List;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(Landroid/app/Activity;Ljava/lang/Exception;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseReq;
    .locals 1

    .line 24
    new-instance v0, Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseReq;

    invoke-direct {v0}, Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseReq;-><init>()V

    .line 25
    invoke-virtual {v0, p1}, Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseReq;->setPurchaseToken(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, p2}, Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseReq;->setDeveloperChallenge(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(ILjava/lang/String;)Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;
    .locals 1

    .line 21
    new-instance v0, Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;

    invoke-direct {v0}, Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;-><init>()V

    .line 22
    invoke-virtual {v0, p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;->setPriceType(I)V

    .line 23
    invoke-virtual {v0, p2}, Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;->setContinuationToken(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(ILjava/util/List;)Lcom/huawei/hms/iap/entity/ProductInfoReq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/huawei/hms/iap/entity/ProductInfoReq;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/huawei/hms/iap/entity/ProductInfoReq;

    invoke-direct {v0}, Lcom/huawei/hms/iap/entity/ProductInfoReq;-><init>()V

    .line 37
    invoke-virtual {v0, p1}, Lcom/huawei/hms/iap/entity/ProductInfoReq;->setPriceType(I)V

    .line 38
    invoke-virtual {v0, p2}, Lcom/huawei/hms/iap/entity/ProductInfoReq;->setProductIds(Ljava/util/List;)V

    return-object v0
.end method

.method public a(ILcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;)V
    .locals 2

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$k;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$k;-><init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;ILjava/util/List;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(ILjava/lang/String;Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;)V

    return-void
.end method

.method public a(ILjava/lang/String;Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->b:Lcom/huawei/hms/iap/IapClient;

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(ILjava/lang/String;)Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/huawei/hms/iap/IapClient;->obtainOwnedPurchases(Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 13
    new-instance p2, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$m;

    invoke-direct {p2, p0, p3}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$m;-><init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$l;

    invoke-direct {p2, p0, p3}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$l;-><init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;)V

    .line 20
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public a(ILjava/util/List;Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;",
            ")V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->b:Lcom/huawei/hms/iap/IapClient;

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(ILjava/util/List;)Lcom/huawei/hms/iap/entity/ProductInfoReq;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/huawei/hms/iap/IapClient;->obtainProductInfo(Lcom/huawei/hms/iap/entity/ProductInfoReq;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 29
    new-instance p2, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$e;

    invoke-direct {p2, p0, p3}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$e;-><init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$d;

    invoke-direct {p2, p0, p3}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$d;-><init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;)V

    .line 35
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public final a(ILjava/util/List;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;",
            ")V"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$c;

    invoke-direct {v0, p0, p3, p1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$c;-><init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;I)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(ILjava/util/List;Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;)V

    return-void
.end method

.method public a(Lcom/huawei/hms/support/api/client/Status;I)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(Landroid/app/Activity;Lcom/huawei/hms/support/api/client/Status;I)V

    return-void
.end method

.method public acknowledgePurchase(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientAcknowledgePurchaseListener;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientAcknowledgePurchaseListener;->onAcknowledgeFinished(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public consume(Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;)V
    .locals 2

    .line 1
    const-string v0, "HuaweiPaymentClient"

    const-string v1, "consume"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->b:Lcom/huawei/hms/iap/IapClient;

    invoke-virtual {p0, v0, p2}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseReq;

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/huawei/hms/iap/IapClient;->consumeOwnedPurchase(Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseReq;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p2

    .line 4
    new-instance v0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$a;

    invoke-direct {v0, p0, p3, p1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$a;-><init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    invoke-virtual {p2, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$n;

    invoke-direct {v0, p0, p3, p1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$n;-><init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientConsumePurchaseListener;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V

    .line 21
    invoke-virtual {p2, v0}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->v:Z

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "HuaweiPaymentClient"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->q:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    :cond_0
    return-void
.end method

.method public init(Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;)V
    .locals 2

    .line 1
    const-string p1, "init"

    const-string v0, "HuaweiPaymentClient"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->c:I

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->d:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/huawei/hms/iap/Iap;->getIapClient(Landroid/app/Activity;)Lcom/huawei/hms/iap/IapClient;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->b:Lcom/huawei/hms/iap/IapClient;

    .line 6
    invoke-interface {p1}, Lcom/huawei/hms/iap/IapClient;->isEnvReady()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 7
    new-instance v1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$g;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$g;-><init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;)V

    invoke-virtual {p1, v1}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance v1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$f;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$f;-><init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;)V

    .line 18
    invoke-virtual {p1, v1}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 65
    const-string v1, "init failed"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 66
    iput p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->c:I

    .line 67
    const-string p1, "999998"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;->onInitialized(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public isAvailable(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    sget-boolean p1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->u:Z

    if-eqz p1, :cond_0

    .line 2
    const-string p1, "HuaweiPaymentClient"

    const-string p2, "hasResolution"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 9

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "requestCode:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HuaweiPaymentClient"

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x4a3d

    const/4 v1, -0x1

    const-string v2, ""

    const/4 v3, 0x1

    if-ne p1, p2, :cond_5

    const/4 p1, 0x0

    if-nez p3, :cond_0

    .line 5
    const-string p2, "onActivityResult REQ_CODE_BUY data is null\uff01"

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->f:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$o;

    .line 7
    iget-object p2, p2, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$o;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;

    .line 8
    const-string p3, "999999"

    invoke-static {p3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;->onPurchased(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return v3

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a:Landroid/app/Activity;

    invoke-static {p2}, Lcom/huawei/hms/iap/Iap;->getIapClient(Landroid/app/Activity;)Lcom/huawei/hms/iap/IapClient;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/huawei/hms/iap/IapClient;->parsePurchaseResultInfoFromIntent(Landroid/content/Intent;)Lcom/huawei/hms/iap/entity/PurchaseResultInfo;

    move-result-object p2

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v4, "onActivityResult purchaseResultInfo.getReturnCode():"

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/PurchaseResultInfo;->getReturnCode()I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance p3, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/PurchaseResultInfo;->getInAppPurchaseData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/PurchaseResultInfo;->getInAppDataSignature()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p3, p1, v4, v5}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onActivityResult REQ_CODE_BUY:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v4, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->e:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onActivityResult REQ_CODE_BUY not contain listener. sku:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p3, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->f:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$o;

    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->e:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;->getSku()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$o;

    .line 22
    :goto_0
    iget-object v0, p3, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$o;->a:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;

    .line 23
    new-instance v4, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    iget-object p3, p3, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$o;->c:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/PurchaseResultInfo;->getInAppPurchaseData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/PurchaseResultInfo;->getInAppDataSignature()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p3, v5, v6}, Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/PurchaseResultInfo;->getReturnCode()I

    move-result p3

    if-eq p3, v1, :cond_4

    if-eqz p3, :cond_3

    if-eq p3, v3, :cond_4

    const v1, 0xea60

    if-eq p3, v1, :cond_2

    const v1, 0xea93

    if-eq p3, v1, :cond_4

    .line 44
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/PurchaseResultInfo;->getReturnCode()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;->onPurchased(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    goto :goto_1

    .line 45
    :cond_2
    const-string p2, "-3"

    const-string p3, "USER_CANCELED"

    invoke-static {p2, p3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;->onPurchased(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    goto :goto_1

    .line 57
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;->onPurchased(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    goto :goto_1

    .line 60
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/huawei/hms/iap/entity/PurchaseResultInfo;->getReturnCode()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    const-string p3, "-5"

    const-string v1, "PRODUCT_OWNED"

    invoke-static {p3, v2, v1, p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;->onPurchased(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    :goto_1
    return v3

    :cond_5
    const/16 p2, 0x4a3e

    const-string v4, "returnCode"

    const-string v5, "returnCode:"

    if-eq p1, p2, :cond_f

    const/16 p2, 0x4a40

    if-ne p1, p2, :cond_6

    goto/16 :goto_4

    :cond_6
    const/16 p2, 0x4a3f

    const/4 v6, 0x3

    const-string v7, "10"

    const-string v8, "initListener is null."

    if-ne p1, p2, :cond_a

    .line 92
    invoke-static {p3}, Lcom/huawei/hms/iap/util/IapClientHelper;->parseRespCodeFromIntent(Landroid/content/Intent;)I

    move-result p1

    if-eqz p3, :cond_7

    .line 94
    invoke-virtual {p3, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 96
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->d:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

    if-nez p2, :cond_8

    .line 98
    invoke-static {v0, v8}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_8
    if-nez p1, :cond_9

    .line 103
    iput v6, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->c:I

    .line 104
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;->onInitialized(Lcom/gpc/sdk/error/GPCException;)V

    goto :goto_2

    .line 107
    :cond_9
    iput v1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->c:I

    .line 108
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const-string p3, "120311"

    invoke-static {p3, v2, v7, p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;->onInitialized(Lcom/gpc/sdk/error/GPCException;)V

    :goto_2
    return v3

    :cond_a
    const/16 p2, 0x4a41

    if-ne p1, p2, :cond_e

    .line 114
    invoke-static {p3}, Lcom/huawei/hms/iap/util/IapClientHelper;->parseRespCodeFromIntent(Landroid/content/Intent;)I

    move-result p1

    if-eqz p3, :cond_b

    .line 116
    invoke-virtual {p3, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 118
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->d:Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;

    if-nez p2, :cond_c

    .line 120
    invoke-static {v0, v8}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_c
    if-nez p1, :cond_d

    .line 125
    iput v6, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->c:I

    .line 126
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;->onInitialized(Lcom/gpc/sdk/error/GPCException;)V

    goto :goto_3

    .line 129
    :cond_d
    iput v1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->c:I

    .line 130
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const-string p3, "60055"

    invoke-static {p3, v2, v7, p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientInitializeListener;->onInitialized(Lcom/gpc/sdk/error/GPCException;)V

    :goto_3
    return v3

    :cond_e
    const/4 p1, 0x0

    return p1

    .line 131
    :cond_f
    :goto_4
    invoke-static {p3}, Lcom/huawei/hms/iap/util/IapClientHelper;->parseRespCodeFromIntent(Landroid/content/Intent;)I

    move-result p1

    if-eqz p3, :cond_10

    .line 133
    invoke-virtual {p3, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 135
    :cond_10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_11

    .line 137
    const-string p1, "login success."

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 139
    :cond_11
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "login failed."

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return v3
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public purchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseParams;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;)V
    .locals 7

    .line 1
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "purchaseFlow:"

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "HuaweiPaymentClient"

    invoke-static {v0, p5}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    const-string p5, "inapp"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    const-string p5, "subs"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    .line 8
    :cond_1
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v2, "Error purchaseFlowType:"

    invoke-direct {p5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v0, p5}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object p5, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->b:Lcom/huawei/hms/iap/IapClient;

    invoke-static {v1, p1, p4}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/iap/entity/PurchaseIntentReq;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/huawei/hms/iap/IapClient;->createPurchaseIntent(Lcom/huawei/hms/iap/entity/PurchaseIntentReq;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p5

    .line 12
    new-instance v0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    move-object v3, p3

    move-object v5, p4

    move-object v2, p6

    invoke-direct/range {v0 .. v6}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$i;-><init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$h;

    invoke-direct {p2, p0, v2}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$h;-><init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientPurchasedListener;)V

    .line 65
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public queryPurchases(Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;)V
    .locals 3

    .line 1
    const-string v0, "queryPurchases"

    const-string v1, "HuaweiPaymentClient"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->c:I

    const/4 v2, 0x3

    if-eq v2, v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "not ready.initState:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string v0, "999997"

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;->onQueryPurchasesFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;

    invoke-direct {v1, p0, v0, p1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$j;-><init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Ljava/util/List;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(ILcom/gpc/sdk/payment/flow/client/listener/PaymentClientQueryPurchasesListener;)V

    return-void
.end method

.method public querySkuDetails(Ljava/util/List;Ljava/util/List;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "querySkuDetails"

    const-string v1, "HuaweiPaymentClient"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->c:I

    const/4 v2, 0x3

    if-eq v2, v0, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "not ready.initState:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->c:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string p1, "999997"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v1, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$b;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$b;-><init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Ljava/util/List;Ljava/util/List;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, v1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(ILjava/util/List;Lcom/gpc/sdk/payment/flow/client/listener/PaymentClientQuerySkuDetailsResponseListener;)V

    return-void
.end method
