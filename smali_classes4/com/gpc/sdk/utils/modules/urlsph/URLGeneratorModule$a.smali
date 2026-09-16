.class public Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$a;->a:Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lcom/gpc/sdk/notification/GPCNotification;)V
    .locals 4

    const-string v0, "payment_qrcode_web"

    const-string v1, "urls_ph"

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;

    if-eqz v2, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;

    .line 3
    const-string v2, "rec Primary AppConfig notify."

    const-string v3, "URLGeneratorModule"

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/bean/LoadedPrimaryAppConfigEvent;->getPrimaryAppConfig()Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    const-string p1, "appConfig is null"

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->getMetaData()Ljava/lang/String;

    move-result-object p1

    .line 11
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    const-string p1, "urls_ph is null"

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_1
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 19
    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$a;->a:Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/sdk/utils/modules/urlsph/URLPlaceholderItem;->createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/utils/modules/urlsph/URLPlaceholderItem;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;->access$002(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;Lcom/gpc/sdk/utils/modules/urlsph/URLPlaceholderItem;)Lcom/gpc/sdk/utils/modules/urlsph/URLPlaceholderItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 23
    const-string v0, ""

    invoke-static {v3, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
