.class public Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/android/billingclient/api/ConsumeResponseListener;

.field public final synthetic d:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$i;->d:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    iput-object p2, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$i;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$i;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$i;->c:Lcom/android/billingclient/api/ConsumeResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    .line 4
    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$i;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    invoke-virtual {v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$i;->d:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    invoke-static {v1}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->b(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$i;->c:Lcom/android/billingclient/api/ConsumeResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 10
    const-string v1, "BillingManager"

    const-string v2, "consumeAsync!!"

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    const/4 v1, 0x6

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    const-string v1, "consumeAsync exception"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$i;->c:Lcom/android/billingclient/api/ConsumeResponseListener;

    iget-object v2, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$i;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method
