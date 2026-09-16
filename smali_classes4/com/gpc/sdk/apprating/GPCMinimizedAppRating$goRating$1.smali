.class public final Lcom/gpc/sdk/apprating/GPCMinimizedAppRating$goRating$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/apprating/GPCDistributorAppStore$AppRatingConfirmationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/apprating/GPCMinimizedAppRating;->goRating(Landroid/content/Context;Lcom/gpc/sdk/apprating/GPCAppRatingResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/apprating/GPCAppRatingResultListener;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/apprating/GPCAppRatingResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/sdk/apprating/GPCMinimizedAppRating$goRating$1;->a:Lcom/gpc/sdk/apprating/GPCAppRatingResultListener;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/apprating/GPCMinimizedAppRating$goRating$1;->a:Lcom/gpc/sdk/apprating/GPCAppRatingResultListener;

    const-string v1, "310104"

    invoke-static {v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    const-string v2, "exception(GPCAppRatingEr\u2026PRATING_ERROR_FOR_CANCEL)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/apprating/GPCAppRatingResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onOK()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/apprating/GPCMinimizedAppRating$goRating$1;->a:Lcom/gpc/sdk/apprating/GPCAppRatingResultListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    const-string v2, "noneException()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/apprating/GPCAppRatingResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
