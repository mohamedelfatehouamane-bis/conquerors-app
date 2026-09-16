.class public final Lcom/gpc/sdk/apprating/GPCAppRating$requestReview$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/apprating/GPCAppRating$GPCAppRatingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/apprating/GPCAppRating;->requestReview(Lcom/gpc/sdk/apprating/GPCAppRating$GPCRequestReviewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/apprating/GPCAppRating$GPCRequestReviewListener;

.field public final synthetic b:Lcom/gpc/sdk/apprating/GPCAppRating;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/apprating/GPCAppRating$GPCRequestReviewListener;Lcom/gpc/sdk/apprating/GPCAppRating;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/sdk/apprating/GPCAppRating$requestReview$1;->a:Lcom/gpc/sdk/apprating/GPCAppRating$GPCRequestReviewListener;

    iput-object p2, p0, Lcom/gpc/sdk/apprating/GPCAppRating$requestReview$1;->b:Lcom/gpc/sdk/apprating/GPCAppRating;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/apprating/GPCDistributorAppStore;)V
    .locals 2

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/apprating/GPCAppRating$requestReview$1;->b:Lcom/gpc/sdk/apprating/GPCAppRating;

    invoke-static {p1}, Lcom/gpc/sdk/apprating/GPCAppRating;->access$getAppRatingStatus$p(Lcom/gpc/sdk/apprating/GPCAppRating;)Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;->getMode()Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    move-result-object p1

    sget-object v0, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;->Standard:Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/apprating/GPCAppRating$requestReview$1;->a:Lcom/gpc/sdk/apprating/GPCAppRating$GPCRequestReviewListener;

    .line 6
    new-instance v0, Lcom/gpc/sdk/apprating/GPCStandardAppRating;

    .line 8
    iget-object v1, p0, Lcom/gpc/sdk/apprating/GPCAppRating$requestReview$1;->b:Lcom/gpc/sdk/apprating/GPCAppRating;

    invoke-static {v1}, Lcom/gpc/sdk/apprating/GPCAppRating;->access$getProxy$p(Lcom/gpc/sdk/apprating/GPCAppRating;)Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    invoke-direct {v0, p2, v1}, Lcom/gpc/sdk/apprating/GPCStandardAppRating;-><init>(Lcom/gpc/sdk/apprating/GPCDistributorAppStore;Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;)V

    .line 10
    invoke-interface {p1, v0}, Lcom/gpc/sdk/apprating/GPCAppRating$GPCRequestReviewListener;->onStandardModeEnabled(Lcom/gpc/sdk/apprating/GPCStandardAppRating;)V

    return-void

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/apprating/GPCAppRating$requestReview$1;->a:Lcom/gpc/sdk/apprating/GPCAppRating$GPCRequestReviewListener;

    .line 18
    new-instance v0, Lcom/gpc/sdk/apprating/GPCMinimizedAppRating;

    invoke-direct {v0, p2}, Lcom/gpc/sdk/apprating/GPCMinimizedAppRating;-><init>(Lcom/gpc/sdk/apprating/GPCDistributorAppStore;)V

    .line 19
    invoke-interface {p1, v0}, Lcom/gpc/sdk/apprating/GPCAppRating$GPCRequestReviewListener;->onMinimizedModeEnabled(Lcom/gpc/sdk/apprating/GPCMinimizedAppRating;)V

    return-void

    .line 20
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/gpc/sdk/apprating/GPCAppRating$requestReview$1;->a:Lcom/gpc/sdk/apprating/GPCAppRating$GPCRequestReviewListener;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/apprating/GPCAppRating$GPCRequestReviewListener;->onError(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
