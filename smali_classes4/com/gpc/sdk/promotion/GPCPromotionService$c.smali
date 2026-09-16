.class public Lcom/gpc/sdk/promotion/GPCPromotionService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/promotion/GPCPromotionService;->loadShowcase(Lcom/gpc/sdk/promotion/listener/GPCShowcaseLoadingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/promotion/listener/GPCShowcaseLoadingListener;

.field public final synthetic b:Lcom/gpc/sdk/promotion/GPCPromotionService;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/promotion/GPCPromotionService;Lcom/gpc/sdk/promotion/listener/GPCShowcaseLoadingListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$c;->b:Lcom/gpc/sdk/promotion/GPCPromotionService;

    iput-object p2, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$c;->a:Lcom/gpc/sdk/promotion/listener/GPCShowcaseLoadingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    const-string p2, "GPCPromotionService"

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$c;->a:Lcom/gpc/sdk/promotion/listener/GPCShowcaseLoadingListener;

    iget-object p3, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$c;->b:Lcom/gpc/sdk/promotion/GPCPromotionService;

    invoke-static {p3, p1}, Lcom/gpc/sdk/promotion/GPCPromotionService;->a(Lcom/gpc/sdk/promotion/GPCPromotionService;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1, v1}, Lcom/gpc/sdk/promotion/listener/GPCShowcaseLoadingListener;->onShowcaseLoaded(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/promotion/bean/GPCShowcase;)V

    return-void

    .line 7
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x7531

    if-eq v0, p1, :cond_1

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    :cond_1
    const-string p1, "240101"

    const-string v2, "10"

    invoke-static {p1, v2, v0}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 23
    invoke-static {p2, p3}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p3, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$c;->a:Lcom/gpc/sdk/promotion/listener/GPCShowcaseLoadingListener;

    invoke-interface {p3, p1, v1}, Lcom/gpc/sdk/promotion/listener/GPCShowcaseLoadingListener;->onShowcaseLoaded(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/promotion/bean/GPCShowcase;)V

    return-void

    .line 28
    :cond_2
    const-string p3, "result"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 30
    new-instance p3, Lcom/gpc/sdk/promotion/bean/GPCPromotionReward;

    invoke-direct {p3}, Lcom/gpc/sdk/promotion/bean/GPCPromotionReward;-><init>()V

    .line 31
    const-string v0, "points"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/gpc/sdk/promotion/bean/GPCPromotionReward;->setPointsAwarded(I)V

    .line 32
    const-string v0, "point_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/gpc/sdk/promotion/bean/GPCPromotionReward;->setRewardName(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/gpc/sdk/promotion/bean/GPCShowcase;

    invoke-direct {v0}, Lcom/gpc/sdk/promotion/bean/GPCShowcase;-><init>()V

    .line 35
    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->setId(I)V

    .line 36
    const-string v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->setTitle(Ljava/lang/String;)V

    .line 37
    const-string v2, "content"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->setContent(Ljava/lang/String;)V

    .line 38
    const-string v2, "img"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->setBannerImageURL(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, p3}, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->setReward(Lcom/gpc/sdk/promotion/bean/GPCPromotionReward;)V

    .line 40
    const-string p3, "target_app_sign"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->setTargetApp(Ljava/lang/String;)V

    .line 41
    const-string p3, "click_url"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/promotion/bean/GPCShowcase;->setTargetURL(Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$c;->a:Lcom/gpc/sdk/promotion/listener/GPCShowcaseLoadingListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-interface {p1, p3, v0}, Lcom/gpc/sdk/promotion/listener/GPCShowcaseLoadingListener;->onShowcaseLoaded(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/promotion/bean/GPCShowcase;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 45
    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    const-string p1, "20"

    const/16 p2, 0x2711

    const-string p3, "240103"

    invoke-static {p3, p1, p2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$c;->a:Lcom/gpc/sdk/promotion/listener/GPCShowcaseLoadingListener;

    invoke-interface {p2, p1, v1}, Lcom/gpc/sdk/promotion/listener/GPCShowcaseLoadingListener;->onShowcaseLoaded(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/promotion/bean/GPCShowcase;)V

    return-void
.end method
