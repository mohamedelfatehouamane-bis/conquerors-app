.class public Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$a;->c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    iput-object p2, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$a;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$a;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    .line 1
    const-string v0, "BillingManager"

    const-string v1, "onBillingServiceDisconnected"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$a;->c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Z)Z

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setup finished. Response message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BillingManager"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Setup finished. Response code: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$a;->c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Z)Z

    .line 7
    iget-object p1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$a;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$a;->c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Z)Z

    .line 13
    iget-object p1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$a;->b:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 14
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 18
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$a;->c:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    invoke-static {p1, v0}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;I)I

    return-void
.end method
