.class public final Lcom/gpc/sdk/apprating/GPCAppRating$getDistributorAppStore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/apprating/service/GPCAppRatingServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/apprating/GPCAppRating;->a(Ljava/lang/String;Lcom/gpc/sdk/apprating/GPCAppRating$GPCAppRatingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/apprating/GPCAppRating$GPCAppRatingListener;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/apprating/GPCAppRating$GPCAppRatingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/sdk/apprating/GPCAppRating$getDistributorAppStore$1;->a:Lcom/gpc/sdk/apprating/GPCAppRating$GPCAppRatingListener;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/apprating/GPCDistributorAppStore;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/apprating/GPCAppRating$getDistributorAppStore$1;->a:Lcom/gpc/sdk/apprating/GPCAppRating$GPCAppRatingListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/apprating/GPCAppRating$GPCAppRatingListener;->onFinish(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/apprating/GPCDistributorAppStore;)V

    return-void
.end method
