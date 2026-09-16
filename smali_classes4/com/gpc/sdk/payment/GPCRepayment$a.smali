.class public Lcom/gpc/sdk/payment/GPCRepayment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/flow/listener/IGPCLoadItemsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/GPCRepayment;->queryProducts(Lcom/gpc/sdk/payment/listener/IQueryRepaymentProductsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/GPCRepayment;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/GPCRepayment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment$a;->a:Lcom/gpc/sdk/payment/GPCRepayment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaymentItemsLoadFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
