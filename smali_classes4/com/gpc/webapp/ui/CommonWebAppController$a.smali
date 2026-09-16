.class public Lcom/gpc/webapp/ui/CommonWebAppController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/webapp/ui/CommonWebAppController;->afterInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/webapp/ui/CommonWebAppController;


# direct methods
.method public constructor <init>(Lcom/gpc/webapp/ui/CommonWebAppController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/webapp/ui/CommonWebAppController$a;->a:Lcom/gpc/webapp/ui/CommonWebAppController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGatewayFailed(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/webapp/ui/CommonWebAppController$a;->a:Lcom/gpc/webapp/ui/CommonWebAppController;

    invoke-static {v0}, Lcom/gpc/webapp/ui/CommonWebAppController;->access$500(Lcom/gpc/webapp/ui/CommonWebAppController;)Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->onGatewayFailed(I)V

    return-void
.end method

.method public onRepaymentFailed(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/webapp/ui/CommonWebAppController$a;->a:Lcom/gpc/webapp/ui/CommonWebAppController;

    invoke-static {v0}, Lcom/gpc/webapp/ui/CommonWebAppController;->access$000(Lcom/gpc/webapp/ui/CommonWebAppController;)Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->onRepaymentFailed(I)V

    return-void
.end method

.method public onTransactionPurchaseFailed(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/webapp/ui/CommonWebAppController$a;->a:Lcom/gpc/webapp/ui/CommonWebAppController;

    invoke-static {v0}, Lcom/gpc/webapp/ui/CommonWebAppController;->access$100(Lcom/gpc/webapp/ui/CommonWebAppController;)Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->onTransactionPurchaseFailed(II)V

    return-void
.end method

.method public onTransactionPurchaseFinished()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/webapp/ui/CommonWebAppController$a;->a:Lcom/gpc/webapp/ui/CommonWebAppController;

    invoke-static {v0}, Lcom/gpc/webapp/ui/CommonWebAppController;->access$400(Lcom/gpc/webapp/ui/CommonWebAppController;)Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->onTransactionPurchaseFinished()V

    return-void
.end method

.method public onTransactionPurchasePurchased()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/webapp/ui/CommonWebAppController$a;->a:Lcom/gpc/webapp/ui/CommonWebAppController;

    invoke-static {v0}, Lcom/gpc/webapp/ui/CommonWebAppController;->access$300(Lcom/gpc/webapp/ui/CommonWebAppController;)Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->onTransactionPurchasePurchased()V

    return-void
.end method

.method public onTransactionPurchasePurchasing()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/webapp/ui/CommonWebAppController$a;->a:Lcom/gpc/webapp/ui/CommonWebAppController;

    invoke-static {v0}, Lcom/gpc/webapp/ui/CommonWebAppController;->access$200(Lcom/gpc/webapp/ui/CommonWebAppController;)Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->onTransactionPurchasePurchasing()V

    return-void
.end method
