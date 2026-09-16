.class public Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;->b:Ljava/util/List;

    .line 4
    iput p3, p0, Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;->c:I

    return-void
.end method


# virtual methods
.method public getGameItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;->b:Ljava/util/List;

    return-object v0
.end method

.method public getGameSubItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCGameItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;->a:Ljava/util/List;

    return-object v0
.end method

.method public getPurchaseLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/service/bean/GPCGameItemAndUserLimit;->c:I

    return v0
.end method
