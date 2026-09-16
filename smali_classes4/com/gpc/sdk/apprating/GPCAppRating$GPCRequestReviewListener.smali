.class public interface abstract Lcom/gpc/sdk/apprating/GPCAppRating$GPCRequestReviewListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/apprating/GPCAppRating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GPCRequestReviewListener"
.end annotation


# virtual methods
.method public abstract onDisabled(Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;)V
.end method

.method public abstract onError(Lcom/gpc/sdk/error/GPCException;)V
.end method

.method public abstract onMinimizedModeEnabled(Lcom/gpc/sdk/apprating/GPCMinimizedAppRating;)V
.end method

.method public abstract onStandardModeEnabled(Lcom/gpc/sdk/apprating/GPCStandardAppRating;)V
.end method
