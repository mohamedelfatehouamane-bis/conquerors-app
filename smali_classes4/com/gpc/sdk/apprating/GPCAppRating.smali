.class public final Lcom/gpc/sdk/apprating/GPCAppRating;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/apprating/GPCAppRating$GPCAppRatingListener;,
        Lcom/gpc/sdk/apprating/GPCAppRating$GPCRequestReviewListener;
    }
.end annotation


# instance fields
.field public final a:Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;

.field public b:Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;

.field public final c:Lcom/gpc/sdk/apprating/service/AppRatingService;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;)V
    .locals 1

    const-string v0, "appRatingStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/apprating/GPCAppRating;->a:Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;

    .line 18
    invoke-static {}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getAppRatingService()Lcom/gpc/sdk/apprating/service/AppRatingService;

    move-result-object p1

    const-string v0, "getAppRatingService()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gpc/sdk/apprating/GPCAppRating;->c:Lcom/gpc/sdk/apprating/service/AppRatingService;

    .line 19
    new-instance p1, Lcom/gpc/sdk/apprating/GPCAppRatingDefaultCompatProxy;

    invoke-direct {p1}, Lcom/gpc/sdk/apprating/GPCAppRatingDefaultCompatProxy;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/apprating/GPCAppRating;->b:Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;

    return-void
.end method

.method public static final synthetic access$getAppRatingStatus$p(Lcom/gpc/sdk/apprating/GPCAppRating;)Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/apprating/GPCAppRating;->a:Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;

    return-object p0
.end method

.method public static final synthetic access$getProxy$p(Lcom/gpc/sdk/apprating/GPCAppRating;)Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/apprating/GPCAppRating;->b:Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/gpc/sdk/apprating/GPCAppRating$GPCAppRatingListener;)V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/gpc/sdk/apprating/GPCAppRating;->a(Ljava/lang/String;Lcom/gpc/sdk/apprating/GPCAppRating$GPCAppRatingListener;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/gpc/sdk/apprating/GPCAppRating$GPCAppRatingListener;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/apprating/GPCAppRating;->c:Lcom/gpc/sdk/apprating/service/AppRatingService;

    .line 3
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    const-string v2, "sharedInstance().configuration()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/gpc/sdk/apprating/GPCAppRating;->b:Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/gpc/sdk/apprating/GPCAppRating$getDistributorAppStore$1;

    invoke-direct {v3, p2}, Lcom/gpc/sdk/apprating/GPCAppRating$getDistributorAppStore$1;-><init>(Lcom/gpc/sdk/apprating/GPCAppRating$GPCAppRatingListener;)V

    .line 6
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/gpc/sdk/apprating/service/AppRatingService;->requestDistributorAppStore(Lcom/gpc/sdk/GPCConfiguration;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/apprating/service/GPCAppRatingServiceListener;)V

    return-void
.end method

.method public final requestReview(Lcom/gpc/sdk/apprating/GPCAppRating$GPCRequestReviewListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/apprating/GPCAppRating;->a:Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;

    invoke-virtual {v0}, Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;->getMode()Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    move-result-object v0

    sget-object v1, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;->Disable:Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/apprating/GPCAppRating;->a:Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;

    invoke-interface {p1, v0}, Lcom/gpc/sdk/apprating/GPCAppRating$GPCRequestReviewListener;->onDisabled(Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/gpc/sdk/apprating/GPCAppRating$requestReview$1;

    invoke-direct {v0, p1, p0}, Lcom/gpc/sdk/apprating/GPCAppRating$requestReview$1;-><init>(Lcom/gpc/sdk/apprating/GPCAppRating$GPCRequestReviewListener;Lcom/gpc/sdk/apprating/GPCAppRating;)V

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/apprating/GPCAppRating;->a(Lcom/gpc/sdk/apprating/GPCAppRating$GPCAppRatingListener;)V

    return-void
.end method

.method public final setCompatProxy(Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;)V
    .locals 1

    const-string v0, "proxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/apprating/GPCAppRating;->b:Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;

    return-void
.end method
