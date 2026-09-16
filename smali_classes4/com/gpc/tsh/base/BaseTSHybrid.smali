.class public Lcom/gpc/tsh/base/BaseTSHybrid;
.super Lcom/gpc/operations/base/OperationsSDKBaseModule;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseTSHybrid"


# instance fields
.field protected appearanceValue:Lcom/gpc/tsh/bean/TSHybridAppearance;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/base/OperationsSDKBaseModule;-><init>()V

    return-void
.end method


# virtual methods
.method public enableDidReceiveRemoteNotifications(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "m_web_app"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string p1, "BaseTSHybrid"

    const-string v0, "webAppId is empty"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    const-string v0, "ticket"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public notification(Landroid/app/Application;Lcom/gpc/operations/notification/NotificationConfig;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/tsh/base/BaseTSHybrid;->notificationFactory()Lcom/gpc/ops/B;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/gpc/tsh/base/BaseTSHybrid;->appearanceValue:Lcom/gpc/tsh/bean/TSHybridAppearance;

    invoke-interface {v0, p1, p2, v1}, Lcom/gpc/ops/B;->a(Landroid/app/Application;Lcom/gpc/operations/notification/NotificationConfig;Lcom/gpc/tsh/bean/TSHybridAppearance;)V

    return-void

    .line 5
    :cond_0
    const-string v0, "BaseTSHybrid"

    const-string v1, "DefaultNotificationFactory"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/gpc/operations/notification/DefaultActivityNotificationImpl;

    invoke-direct {v0}, Lcom/gpc/operations/notification/DefaultActivityNotificationImpl;-><init>()V

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/gpc/operations/notification/DefaultActivityNotificationImpl;->notification(Landroid/app/Application;Lcom/gpc/operations/notification/NotificationConfig;)V

    return-void
.end method

.method public final notificationFactory()Lcom/gpc/ops/B;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/OperationsSDKBaseModule;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "BaseTSHybrid"

    const-string v1, "TSHActivityNotificationImpl"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/gpc/ops/A;

    invoke-direct {v0}, Lcom/gpc/ops/A;-><init>()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public processNotificationData(Lcom/gpc/operations/notification/NotificationConfig;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/notification/NotificationConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "BaseTSHybrid"

    .line 1
    :try_start_0
    const-string v1, "web_app_payload"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    const-string p1, "web_app_paylod is empty, ignore."

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    const-string p2, "id"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gpc/operations/notification/NotificationConfig;->setTicketId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "processNotificationData error: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppearance(Lcom/gpc/tsh/bean/TSHybridAppearance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/base/BaseTSHybrid;->appearanceValue:Lcom/gpc/tsh/bean/TSHybridAppearance;

    return-void
.end method
