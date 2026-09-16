.class Lcom/InvokeHelper$10$1$2;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Lcom/gpc/sdk/apprating/GPCAppRatingResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper$10$1;->onMinimizedModeEnabled(Lcom/gpc/sdk/apprating/GPCMinimizedAppRating;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/InvokeHelper$10$1;


# direct methods
.method constructor <init>(Lcom/InvokeHelper$10$1;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/InvokeHelper$10$1$2;->this$1:Lcom/InvokeHelper$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;)V
    .locals 1

    .line 362
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "310104"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    :cond_0
    return-void
.end method
