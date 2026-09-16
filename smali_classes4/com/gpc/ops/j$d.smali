.class public Lcom/gpc/ops/j$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/ops/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Lcom/gpc/operations/migrate/error/GPCException;

.field public b:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

.field public c:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

.field public final synthetic d:Lcom/gpc/ops/j;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/j;Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/j$d;->d:Lcom/gpc/ops/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/gpc/ops/j$d;->a:Lcom/gpc/operations/migrate/error/GPCException;

    .line 3
    iput-object p3, p0, Lcom/gpc/ops/j$d;->b:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    .line 4
    iput-object p4, p0, Lcom/gpc/ops/j$d;->c:Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    return-void
.end method
