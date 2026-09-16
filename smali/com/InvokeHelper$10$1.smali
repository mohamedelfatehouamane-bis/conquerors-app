.class Lcom/InvokeHelper$10$1;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Lcom/gpc/sdk/apprating/GPCAppRating$GPCRequestReviewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/InvokeHelper$10;


# direct methods
.method constructor <init>(Lcom/InvokeHelper$10;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/InvokeHelper$10$1;->this$0:Lcom/InvokeHelper$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisabled(Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/gpc/sdk/error/GPCException;)V
    .locals 1

    .line 380
    const-string v0, "InvokeHelper-"

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getBaseErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMinimizedModeEnabled(Lcom/gpc/sdk/apprating/GPCMinimizedAppRating;)V
    .locals 2

    .line 359
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/InvokeHelper$10$1$2;

    invoke-direct {v1, p0}, Lcom/InvokeHelper$10$1$2;-><init>(Lcom/InvokeHelper$10$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/gpc/sdk/apprating/GPCMinimizedAppRating;->goRating(Landroid/content/Context;Lcom/gpc/sdk/apprating/GPCAppRatingResultListener;)V

    return-void
.end method

.method public onStandardModeEnabled(Lcom/gpc/sdk/apprating/GPCStandardAppRating;)V
    .locals 2

    .line 347
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    new-instance v1, Lcom/InvokeHelper$10$1$1;

    invoke-direct {v1, p0}, Lcom/InvokeHelper$10$1$1;-><init>(Lcom/InvokeHelper$10$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/gpc/sdk/apprating/GPCStandardAppRating;->like(Landroid/content/Context;Lcom/gpc/sdk/apprating/GPCAppRatingResultListener;)V

    return-void
.end method
