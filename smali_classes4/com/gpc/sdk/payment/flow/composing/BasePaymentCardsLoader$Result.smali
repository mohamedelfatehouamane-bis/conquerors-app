.class public Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;->a:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;->b:Ljava/util/ArrayList;

    .line 4
    iput p3, p0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;->c:I

    return-void
.end method


# virtual methods
.method public getGameItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGameSubItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPurchaseLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/flow/composing/BasePaymentCardsLoader$Result;->c:I

    return v0
.end method
