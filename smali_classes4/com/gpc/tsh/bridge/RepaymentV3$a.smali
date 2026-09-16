.class public Lcom/gpc/tsh/bridge/RepaymentV3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/tsh/bridge/RepaymentV3;->init(Landroid/app/Activity;Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;

.field public final synthetic b:Lcom/gpc/tsh/bridge/RepaymentV3;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/bridge/RepaymentV3;Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/bridge/RepaymentV3$a;->b:Lcom/gpc/tsh/bridge/RepaymentV3;

    iput-object p2, p0, Lcom/gpc/tsh/bridge/RepaymentV3$a;->a:Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGatewayFailed(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/gpc/tsh/bridge/RepaymentV3$a;->a:Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->getCodeInteger()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;->onGatewayFailed(I)V

    return-void
.end method

.method public onRepaymentFailed(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/gpc/tsh/bridge/RepaymentV3$a;->a:Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->getCodeInteger()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;->onRepaymentFailed(I)V

    return-void
.end method

.method public onTransactionPurchaseFailed(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "220203"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x1876c

    goto :goto_0

    :cond_0
    const p2, 0x1876a

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/gpc/tsh/bridge/RepaymentV3$a;->a:Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->getCodeInteger()I

    move-result p1

    invoke-interface {v0, p2, p1}, Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;->onTransactionPurchaseFailed(II)V

    return-void
.end method

.method public onTransactionPurchaseFinished(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/gpc/tsh/bridge/RepaymentV3$a;->a:Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;

    invoke-interface {p1}, Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;->onTransactionPurchaseFinished()V

    return-void
.end method

.method public onTransactionPurchasePurchased(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/gpc/tsh/bridge/RepaymentV3$a;->a:Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;

    invoke-interface {p1}, Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;->onTransactionPurchasePurchased()V

    return-void
.end method

.method public onTransactionPurchasePurchasing(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/gpc/tsh/bridge/RepaymentV3$a;->a:Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;

    invoke-interface {p1}, Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;->onTransactionPurchasePurchasing()V

    return-void
.end method
