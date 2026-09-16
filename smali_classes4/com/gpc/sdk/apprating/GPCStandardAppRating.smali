.class public final Lcom/gpc/sdk/apprating/GPCStandardAppRating;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/gpc/sdk/apprating/GPCDistributorAppStore;

.field public final b:Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;

.field public final c:Lcom/gpc/sdk/apprating/service/AppRatingService;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/apprating/GPCDistributorAppStore;Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;)V
    .locals 1

    const-string v0, "distributorAppStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appRatingCompatProxy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/apprating/GPCStandardAppRating;->a:Lcom/gpc/sdk/apprating/GPCDistributorAppStore;

    iput-object p2, p0, Lcom/gpc/sdk/apprating/GPCStandardAppRating;->b:Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;

    .line 8
    invoke-static {}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getAppRatingService()Lcom/gpc/sdk/apprating/service/AppRatingService;

    move-result-object p1

    const-string p2, "getAppRatingService()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gpc/sdk/apprating/GPCStandardAppRating;->c:Lcom/gpc/sdk/apprating/service/AppRatingService;

    return-void
.end method

.method public static final synthetic access$getAppRatingCompatProxy$p(Lcom/gpc/sdk/apprating/GPCStandardAppRating;)Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/apprating/GPCStandardAppRating;->b:Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;

    return-object p0
.end method


# virtual methods
.method public final feedback(Lcom/gpc/sdk/apprating/GPCAppRatingFeedback;Lcom/gpc/sdk/apprating/GPCFeedbackResultListener;)V
    .locals 8

    const-string v0, "feedback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/gpc/sdk/apprating/GPCStandardAppRating;->c:Lcom/gpc/sdk/apprating/service/AppRatingService;

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/apprating/GPCStandardAppRating;->b:Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;

    invoke-interface {v0}, Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/apprating/GPCStandardAppRating;->b:Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;

    invoke-interface {v0}, Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Lcom/gpc/sdk/apprating/GPCAppRatingFeedback;->getScore()I

    move-result v4

    .line 5
    invoke-virtual {p1}, Lcom/gpc/sdk/apprating/GPCAppRatingFeedback;->getType()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {p1}, Lcom/gpc/sdk/apprating/GPCAppRatingFeedback;->getContent()Ljava/lang/String;

    move-result-object v6

    move-object v7, p2

    .line 7
    invoke-interface/range {v1 .. v7}, Lcom/gpc/sdk/apprating/service/AppRatingService;->feedback(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/apprating/GPCFeedbackResultListener;)V

    return-void
.end method

.method public final getFeedbackWebPageURL(Lcom/gpc/sdk/apprating/GPCFeedbackWebPageURLResultListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/apprating/GPCStandardAppRating;->b:Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;

    new-instance v1, Lcom/gpc/sdk/apprating/GPCStandardAppRating$getFeedbackWebPageURL$1;

    invoke-direct {v1, p1, p0}, Lcom/gpc/sdk/apprating/GPCStandardAppRating$getFeedbackWebPageURL$1;-><init>(Lcom/gpc/sdk/apprating/GPCFeedbackWebPageURLResultListener;Lcom/gpc/sdk/apprating/GPCStandardAppRating;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy;->getSSOTokenForWeb(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;)V

    return-void
.end method

.method public final like(Landroid/content/Context;Lcom/gpc/sdk/apprating/GPCAppRatingResultListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/apprating/GPCStandardAppRating;->a:Lcom/gpc/sdk/apprating/GPCDistributorAppStore;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/apprating/GPCDistributorAppStore;->openStore(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const-string v0, "noneException()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/gpc/sdk/apprating/GPCAppRatingResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
