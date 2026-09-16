.class public final Lcom/gpc/sdk/apprating/GPCMinimizedAppRating;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/gpc/sdk/apprating/GPCDistributorAppStore;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/apprating/GPCDistributorAppStore;)V
    .locals 1

    const-string v0, "distributorAppStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/apprating/GPCMinimizedAppRating;->a:Lcom/gpc/sdk/apprating/GPCDistributorAppStore;

    return-void
.end method


# virtual methods
.method public final goRating(Landroid/content/Context;Lcom/gpc/sdk/apprating/GPCAppRatingResultListener;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/apprating/GPCMinimizedAppRating;->a:Lcom/gpc/sdk/apprating/GPCDistributorAppStore;

    new-instance v1, Lcom/gpc/sdk/apprating/GPCMinimizedAppRating$goRating$1;

    invoke-direct {v1, p2}, Lcom/gpc/sdk/apprating/GPCMinimizedAppRating$goRating$1;-><init>(Lcom/gpc/sdk/apprating/GPCAppRatingResultListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/gpc/sdk/apprating/GPCDistributorAppStore;->openStoreWithConfirmation(Landroid/content/Context;Lcom/gpc/sdk/apprating/GPCDistributorAppStore$AppRatingConfirmationListener;)V

    return-void
.end method
