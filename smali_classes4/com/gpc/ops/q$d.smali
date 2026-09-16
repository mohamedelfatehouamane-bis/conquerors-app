.class public Lcom/gpc/ops/q$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/ops/q;->b(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/processing/PaymentTransactionStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/ops/q;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/q$d;->a:Lcom/gpc/ops/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
