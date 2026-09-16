.class public Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/Module;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c;,
        Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$e;,
        Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;,
        Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$d;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "URLGeneratorModule"


# instance fields
.field private final observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

.field private paymentQrcodeWebItem:Lcom/gpc/sdk/utils/modules/urlsph/URLPlaceholderItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;->paymentQrcodeWebItem:Lcom/gpc/sdk/utils/modules/urlsph/URLPlaceholderItem;

    .line 45
    new-instance v0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$a;-><init>(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;)V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;->observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;)Lcom/gpc/sdk/utils/modules/urlsph/URLPlaceholderItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;->paymentQrcodeWebItem:Lcom/gpc/sdk/utils/modules/urlsph/URLPlaceholderItem;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;Lcom/gpc/sdk/utils/modules/urlsph/URLPlaceholderItem;)Lcom/gpc/sdk/utils/modules/urlsph/URLPlaceholderItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;->paymentQrcodeWebItem:Lcom/gpc/sdk/utils/modules/urlsph/URLPlaceholderItem;

    return-object p1
.end method


# virtual methods
.method public getPaymentQrcodeWebURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/utils/modules/urlsph/OnGetReqeustURLResult;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;->paymentQrcodeWebItem:Lcom/gpc/sdk/utils/modules/urlsph/URLPlaceholderItem;

    if-nez v0, :cond_0

    .line 2
    const-string p1, ""

    invoke-interface {p5, p1}, Lcom/gpc/sdk/utils/modules/urlsph/OnGetReqeustURLResult;->OnComplete(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c;

    new-instance v1, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$e;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;)V

    invoke-direct {v0, v1}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c;-><init>(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;)V

    .line 7
    iget-object p1, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;->paymentQrcodeWebItem:Lcom/gpc/sdk/utils/modules/urlsph/URLPlaceholderItem;

    new-instance p2, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$b;

    invoke-direct {p2, p0, p5}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$b;-><init>(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;Lcom/gpc/sdk/utils/modules/urlsph/OnGetReqeustURLResult;)V

    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;->a(Lcom/gpc/sdk/utils/modules/urlsph/URLPlaceholderItem;Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$d;)V

    return-void
.end method

.method public onAsyncInit()V
    .locals 0

    return-void
.end method

.method public onDelayedInit()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;->observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    const-string v2, "primary_app_config_notification"

    invoke-virtual {v0, v2, v1}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->removeObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinish()V
    .locals 0

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;->observer:Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;

    const-string v0, "primary_app_config_notification"

    invoke-virtual {p1, v0, p2}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
