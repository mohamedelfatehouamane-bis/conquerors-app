.class public Lcom/gpc/ops/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/ops/w;->a(Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;

.field public final synthetic b:Lcom/gpc/ops/w;


# direct methods
.method public constructor <init>(Lcom/gpc/ops/w;Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/ops/w$a;->b:Lcom/gpc/ops/w;

    iput-object p2, p0, Lcom/gpc/ops/w$a;->a:Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/gpc/operations/migrate/error/GPCException;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/ops/w$a;->b:Lcom/gpc/ops/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gpc/ops/w;->a(Lcom/gpc/ops/w;Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;)Lcom/gpc/tsh/pay/bean/GPCPaymentClientPurchase;

    .line 2
    iget-object v0, p0, Lcom/gpc/ops/w$a;->a:Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/tsh/pay/flow/client/listener/PaymentClientConsumeFinishListener;->onFinish(Lcom/gpc/operations/migrate/error/GPCException;Z)V

    return-void
.end method
