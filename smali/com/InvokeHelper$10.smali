.class Lcom/InvokeHelper$10;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper;->GotoAppStore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 340
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/Kungfu;->getPreparedAppRating()Lcom/gpc/sdk/apprating/GPCAppRating;

    move-result-object v0

    .line 341
    new-instance v1, Lcom/InvokeHelper$10$1;

    invoke-direct {v1, p0}, Lcom/InvokeHelper$10$1;-><init>(Lcom/InvokeHelper$10;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/apprating/GPCAppRating;->requestReview(Lcom/gpc/sdk/apprating/GPCAppRating$GPCRequestReviewListener;)V

    return-void
.end method
