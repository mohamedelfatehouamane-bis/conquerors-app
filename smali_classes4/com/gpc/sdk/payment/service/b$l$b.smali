.class public Lcom/gpc/sdk/payment/service/b$l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/listener/GPCPaymentLimitStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/service/b$l;->b(Lcom/gpc/sdk/payment/service/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/service/b$l;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/service/b$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/b$l$b;->a:Lcom/gpc/sdk/payment/service/b$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaymentLimitStateFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCPaymentLimitStateResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/gpc/sdk/payment/service/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestLimitState finish."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b$l$b;->a:Lcom/gpc/sdk/payment/service/b$l;

    invoke-static {v0}, Lcom/gpc/sdk/payment/service/b$l;->b(Lcom/gpc/sdk/payment/service/b$l;)Lcom/gpc/sdk/payment/service/b$l$c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/service/b$l$c;->b(Z)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b$l$b;->a:Lcom/gpc/sdk/payment/service/b$l;

    invoke-static {v0}, Lcom/gpc/sdk/payment/service/b$l;->b(Lcom/gpc/sdk/payment/service/b$l;)Lcom/gpc/sdk/payment/service/b$l$c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/service/b$l$c;->a(Z)V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b$l$b;->a:Lcom/gpc/sdk/payment/service/b$l;

    invoke-static {v0}, Lcom/gpc/sdk/payment/service/b$l;->b(Lcom/gpc/sdk/payment/service/b$l;)Lcom/gpc/sdk/payment/service/b$l$c;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/gpc/sdk/payment/service/b$l$c;->a(Lcom/gpc/sdk/payment/service/b$l$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/b$l$b;->a:Lcom/gpc/sdk/payment/service/b$l;

    invoke-static {p1}, Lcom/gpc/sdk/payment/service/b$l;->b(Lcom/gpc/sdk/payment/service/b$l;)Lcom/gpc/sdk/payment/service/b$l$c;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/gpc/sdk/payment/service/b$l$c;->b(Lcom/gpc/sdk/payment/service/b$l$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/b$l$b;->a:Lcom/gpc/sdk/payment/service/b$l;

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/service/b$l;->a()V

    return-void
.end method
