.class Lcom/url$4;
.super Ljava/lang/Object;
.source "url.java"

# interfaces
.implements Lcom/gpc/sdk/GPCURLBundle$GPCURLBundleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/url;->openUrlByType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-static {p2}, Lcom/url;->openUrl(Ljava/lang/String;)V

    return-void
.end method
