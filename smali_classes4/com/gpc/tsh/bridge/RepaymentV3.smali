.class public Lcom/gpc/tsh/bridge/RepaymentV3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/bridge/IBridgeRepayment;


# static fields
.field private static final TAG:Ljava/lang/String; = "RepaymentV3"


# instance fields
.field private repayment:Lcom/gpc/tsh/pay/IRepayment;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Lcom/gpc/tsh/pay/IRepayment;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/gpc/tsh/pay/IRepayment;

    iput-object p1, p0, Lcom/gpc/tsh/bridge/RepaymentV3;->repayment:Lcom/gpc/tsh/pay/IRepayment;

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gpc/tsh/bridge/RepaymentV3;->release()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/gpc/tsh/bridge/RepaymentV3;->repayment:Lcom/gpc/tsh/pay/IRepayment;

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    const-string p1, "RepaymentV3"

    const-string p2, "callback is null"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/gpc/tsh/bridge/RepaymentV3$a;

    invoke-direct {v0, p0, p2}, Lcom/gpc/tsh/bridge/RepaymentV3$a;-><init>(Lcom/gpc/tsh/bridge/RepaymentV3;Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;)V

    .line 40
    iget-object p2, p0, Lcom/gpc/tsh/bridge/RepaymentV3;->repayment:Lcom/gpc/tsh/pay/IRepayment;

    new-instance v1, Lcom/gpc/tsh/bridge/RepaymentV3$b;

    invoke-direct {v1, p0}, Lcom/gpc/tsh/bridge/RepaymentV3$b;-><init>(Lcom/gpc/tsh/bridge/RepaymentV3;)V

    invoke-interface {p2, v1}, Lcom/gpc/tsh/pay/IRepayment;->setRepaymentCompatProxy(Lcom/gpc/tsh/pay/RepaymentCompatProxy;)V

    .line 46
    iget-object p2, p0, Lcom/gpc/tsh/bridge/RepaymentV3;->repayment:Lcom/gpc/tsh/pay/IRepayment;

    invoke-interface {p2, p1, v0}, Lcom/gpc/tsh/pay/IRepayment;->initialize(Landroid/app/Activity;Lcom/gpc/tsh/pay/flow/listener/IRepaymentListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/bridge/RepaymentV3;->repayment:Lcom/gpc/tsh/pay/IRepayment;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/tsh/pay/IRepayment;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method public queryProducts(Lcom/gpc/tsh/bridge/OnQueryProductsResultListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/bridge/RepaymentV3;->repayment:Lcom/gpc/tsh/pay/IRepayment;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/gpc/tsh/bridge/RepaymentV3$c;

    invoke-direct {v1, p0, p1}, Lcom/gpc/tsh/bridge/RepaymentV3$c;-><init>(Lcom/gpc/tsh/bridge/RepaymentV3;Lcom/gpc/tsh/bridge/OnQueryProductsResultListener;)V

    invoke-interface {v0, v1}, Lcom/gpc/tsh/pay/IRepayment;->queryProducts(Lcom/gpc/tsh/pay/flow/listener/IQueryRepaymentProductsListener;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    const-string v0, "RepaymentV3"

    const-string v1, "repaymentv3 release!"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/tsh/bridge/RepaymentV3;->repayment:Lcom/gpc/tsh/pay/IRepayment;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/gpc/tsh/pay/IRepayment;->destroy()V

    :cond_0
    return-void
.end method

.method public repay(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/bridge/RepaymentV3;->repayment:Lcom/gpc/tsh/pay/IRepayment;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;

    invoke-direct {v0}, Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;-><init>()V

    .line 3
    iput-object p1, v0, Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;->id:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/gpc/tsh/bridge/RepaymentV3;->repayment:Lcom/gpc/tsh/pay/IRepayment;

    invoke-interface {p1, v0}, Lcom/gpc/tsh/pay/IRepayment;->repay(Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;)V

    return-void
.end method
