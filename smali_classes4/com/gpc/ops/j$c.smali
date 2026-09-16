.class public Lcom/gpc/ops/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/ops/j;->onPurchased(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener<",
        "Lcom/gpc/ops/j$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/error/GPCException;

.field public final synthetic b:Lcom/gpc/ops/j;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/j;Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/j$c;->b:Lcom/gpc/ops/j;

    iput-object p2, p0, Lcom/gpc/ops/j$c;->a:Lcom/gpc/operations/migrate/error/GPCException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/ops/j$d;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/gpc/ops/j$c;->b:Lcom/gpc/ops/j;

    iget-object p2, p0, Lcom/gpc/ops/j$c;->a:Lcom/gpc/operations/migrate/error/GPCException;

    .line 5
    invoke-virtual {p1, p2}, Lcom/gpc/ops/j;->a(Lcom/gpc/operations/migrate/error/GPCException;)I

    move-result p2

    .line 6
    const-string v0, "220304"

    const-string v1, "20"

    invoke-static {v0, v1, p2}, Lcom/gpc/operations/migrate/error/utils/ExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    sget-object v0, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->IAB_PURCHASE:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, p2, v0, v1}, Lcom/gpc/ops/j;->a(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/gpc/ops/j$d;

    invoke-virtual {p0, p1, p2}, Lcom/gpc/ops/j$c;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/ops/j$d;)V

    return-void
.end method
