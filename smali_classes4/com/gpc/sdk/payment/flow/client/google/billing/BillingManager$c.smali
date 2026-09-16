.class public Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$BillingUpdatesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$c;->a:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$c;->a:Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;

    invoke-static {v0}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;->a(Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager;)Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$BillingUpdatesListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/payment/flow/client/google/billing/BillingManager$BillingUpdatesListener;->onBillingClientSetupFinished()V

    return-void
.end method
