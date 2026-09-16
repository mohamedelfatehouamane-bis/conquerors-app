.class public Lcom/gpc/sdk/promotion/bean/GPCShowcase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/gpc/sdk/promotion/bean/GPCPromotionReward;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBannerImageURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->a:I

    return v0
.end method

.method public getReward()Lcom/gpc/sdk/promotion/bean/GPCPromotionReward;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->e:Lcom/gpc/sdk/promotion/bean/GPCPromotionReward;

    return-object v0
.end method

.method public getTargetApp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setBannerImageURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->d:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->c:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->a:I

    return-void
.end method

.method public setReward(Lcom/gpc/sdk/promotion/bean/GPCPromotionReward;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->e:Lcom/gpc/sdk/promotion/bean/GPCPromotionReward;

    return-void
.end method

.method public setTargetApp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->f:Ljava/lang/String;

    return-void
.end method

.method public setTargetURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->g:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->b:Ljava/lang/String;

    return-void
.end method
