.class public abstract Lcom/gpc/sdk/payment/flow/client/google/a$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/flow/client/google/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "f"
.end annotation


# instance fields
.field public a:Lcom/gpc/sdk/error/GPCException;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/client/google/a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/google/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/google/a$f;->b:Lcom/gpc/sdk/payment/flow/client/google/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gpc/sdk/payment/flow/client/google/a;Lcom/gpc/sdk/payment/flow/client/google/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/gpc/sdk/payment/flow/client/google/a$f;-><init>(Lcom/gpc/sdk/payment/flow/client/google/a;)V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/List;Lcom/android/billingclient/api/BillingResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;",
            ">;",
            "Lcom/android/billingclient/api/BillingResult;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/List;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentClientSkuDetails;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method
