.class public Lcom/url;
.super Ljava/lang/Object;
.source "url.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "log---"

.field private static mUrl:Ljava/lang/String;

.field private static s_OpenglActivity:Landroid/app/Activity;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/url;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgets_OpenglActivity()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/url;->s_OpenglActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 0

    .line 22
    sput-object p0, Lcom/url;->s_OpenglActivity:Landroid/app/Activity;

    return-void
.end method

.method public static openUrl(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    sget-object v0, Lcom/url;->s_OpenglActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    sput-object p0, Lcom/url;->mUrl:Ljava/lang/String;

    .line 71
    new-instance p0, Lcom/url$5;

    invoke-direct {p0}, Lcom/url$5;-><init>()V

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static openUrlByType(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/GPCURLBundle;->sharedInstance()Lcom/gpc/sdk/GPCURLBundle;

    move-result-object p0

    new-instance v0, Lcom/url$4;

    invoke-direct {v0}, Lcom/url$4;-><init>()V

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/GPCURLBundle;->forumURL(Lcom/gpc/sdk/GPCURLBundle$GPCURLBundleListener;)V

    return-void

    .line 45
    :cond_1
    invoke-static {}, Lcom/gpc/sdk/GPCURLBundle;->sharedInstance()Lcom/gpc/sdk/GPCURLBundle;

    move-result-object p0

    new-instance v0, Lcom/url$3;

    invoke-direct {v0}, Lcom/url$3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/GPCURLBundle;->serviceURL(Lcom/gpc/sdk/GPCURLBundle$GPCURLBundleListener;)V

    return-void

    .line 37
    :cond_2
    invoke-static {}, Lcom/gpc/sdk/GPCURLBundle;->sharedInstance()Lcom/gpc/sdk/GPCURLBundle;

    move-result-object p0

    new-instance v0, Lcom/url$2;

    invoke-direct {v0}, Lcom/url$2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/GPCURLBundle;->paymentLivechatURL(Lcom/gpc/sdk/GPCURLBundle$GPCURLBundleListener;)V

    return-void

    .line 29
    :cond_3
    invoke-static {}, Lcom/gpc/sdk/GPCURLBundle;->sharedInstance()Lcom/gpc/sdk/GPCURLBundle;

    move-result-object p0

    new-instance v0, Lcom/url$1;

    invoke-direct {v0}, Lcom/url$1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/GPCURLBundle;->livechatURL(Lcom/gpc/sdk/GPCURLBundle$GPCURLBundleListener;)V

    return-void
.end method
