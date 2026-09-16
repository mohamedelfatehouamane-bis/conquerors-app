.class public Lcom/gpc/sdk/utils/modules/MiscModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/modules/MiscModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/utils/modules/MiscModule;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/MiscModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/MiscModule$a;->a:Lcom/gpc/sdk/utils/modules/MiscModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lcom/gpc/sdk/notification/GPCNotification;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/gpc/sdk/utils/modules/legacytask/LegacyTask;

    if-eqz v0, :cond_1

    .line 2
    const-string v0, "legacyTask process"

    const-string v1, "PushModule"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/utils/modules/legacytask/LegacyTask;

    .line 4
    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/legacytask/LegacyTask;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MessageRead"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    const-string p1, "legacyTask is not MessageRead, ignore"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/legacytask/LegacyTask;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    const-string v2, "message_read_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    const-string v3, "message_read_type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getDeviceService()Lcom/gpc/sdk/push/service/DeviceService;

    move-result-object v3

    .line 14
    new-instance v4, Lcom/gpc/sdk/utils/modules/MiscModule$a$a;

    invoke-direct {v4, p0, p1}, Lcom/gpc/sdk/utils/modules/MiscModule$a$a;-><init>(Lcom/gpc/sdk/utils/modules/MiscModule$a;Lcom/gpc/sdk/utils/modules/legacytask/LegacyTask;)V

    invoke-interface {v3, v2, v0, v4}, Lcom/gpc/sdk/push/service/DeviceService;->markMessage(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/push/service/MessageMarkingListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 28
    const-string v0, ""

    invoke-static {v1, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
