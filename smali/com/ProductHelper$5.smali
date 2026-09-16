.class Lcom/ProductHelper$5;
.super Ljava/lang/Object;
.source "ProductHelper.java"

# interfaces
.implements Lcom/gpc/sdk/payment/GPCPayment$GPCPaymentItemsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ProductHelper;->loadItems(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ProductHelper;


# direct methods
.method constructor <init>(Lcom/ProductHelper;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/ProductHelper$5;->this$0:Lcom/ProductHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaymentItemsLoadFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;)V"
        }
    .end annotation

    .line 512
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result p1

    const-string v0, "ProductHelper"

    if-eqz p1, :cond_0

    .line 513
    const-string p1, "get product successfully"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object p1, p0, Lcom/ProductHelper$5;->this$0:Lcom/ProductHelper;

    iput-object p2, p1, Lcom/ProductHelper;->_products:Ljava/util/List;

    .line 515
    iget-object p1, p0, Lcom/ProductHelper$5;->this$0:Lcom/ProductHelper;

    invoke-static {p1}, Lcom/ProductHelper;->-$$Nest$monLoadProductFinish(Lcom/ProductHelper;)V

    return-void

    .line 518
    :cond_0
    const-string p1, "Display error"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
