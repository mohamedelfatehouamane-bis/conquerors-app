.class public Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;
    }
.end annotation


# static fields
.field public static final TYPE_GOOGLE_BIILING_V5:I = 0x1


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getOriginalContract()Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->d:Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;

    return-object v0
.end method

.method public getPromotionContracts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->e:Ljava/util/List;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->c:Ljava/util/List;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->a:I

    return v0
.end method

.method public setOriginalContract(Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->d:Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;

    return-void
.end method

.method public setPromotionContracts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails$Contract;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->e:Ljava/util/List;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->c:Ljava/util/List;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->b:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/payment/bean/GPCSubscriptionOfferDetails;->a:I

    return-void
.end method
