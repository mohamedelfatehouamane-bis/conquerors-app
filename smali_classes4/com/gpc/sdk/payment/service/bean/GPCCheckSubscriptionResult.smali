.class public Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->a:Z

    return-void
.end method


# virtual methods
.method public getLinkedProductId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionPayload()Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->e:Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;

    return-object v0
.end method

.method public isChangeable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->a:Z

    return v0
.end method

.method public setChangeable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->a:Z

    return-void
.end method

.method public setLinkedProductId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->d:Ljava/lang/String;

    return-void
.end method

.method public setPromotionTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->b:Ljava/lang/String;

    return-void
.end method

.method public setPromotionToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->c:Ljava/lang/String;

    return-void
.end method

.method public setSubscriptionPayload(Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->e:Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;

    return-void
.end method
