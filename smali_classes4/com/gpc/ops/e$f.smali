.class public abstract Lcom/gpc/ops/e$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/ops/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "f"
.end annotation


# instance fields
.field public a:Lcom/gpc/operations/migrate/error/GPCException;

.field public final synthetic b:Lcom/gpc/ops/e;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/e$f;->b:Lcom/gpc/ops/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gpc/ops/e;Lcom/gpc/ops/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/gpc/ops/e$f;-><init>(Lcom/gpc/ops/e;)V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/List;Lcom/android/billingclient/api/BillingResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;",
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
            "Lcom/gpc/tsh/pay/bean/GPCPaymentClientSkuDetails;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method
