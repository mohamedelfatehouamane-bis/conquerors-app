.class public abstract Lcom/gpc/sdk/misc/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "BaseMessageHandler"


# instance fields
.field public a:Landroid/content/Context;

.field public b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/gpc/sdk/misc/f;->a:Landroid/content/Context;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/gpc/sdk/misc/f;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/misc/f;->a:Landroid/content/Context;

    .line 3
    iput p2, p0, Lcom/gpc/sdk/misc/f;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/gpc/sdk/push/GPCPushMessage;)V
    .locals 9

    const-string v1, "BaseMessageHandler"

    if-nez p1, :cond_0

    .line 1
    const-string p1, "pushMessage is null"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/push/GPCPushMessage;->isTargetSource()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 9
    :cond_1
    const-string v2, "2"

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/misc/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/gpc/sdk/push/GPCMessageMarker;->getAPPState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 13
    iget-object v0, p0, Lcom/gpc/sdk/misc/f;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/push/GPCPushMessage;->getLaunchActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    const-string v3, ""

    invoke-static {v1, v3, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    move-object v8, v0

    move-object v7, v2

    .line 18
    iget-object v4, p0, Lcom/gpc/sdk/misc/f;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/gpc/sdk/push/GPCPushMessage;->getMsg()Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {p1}, Lcom/gpc/sdk/push/GPCPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    .line 20
    invoke-virtual/range {v3 .. v8}, Lcom/gpc/sdk/misc/f;->generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 23
    const-string v0, "generateNotification false"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/gpc/sdk/misc/f;->areNotificationsEnabledInGame()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/push/GPCPushMessage;->setNotificationsEnabledInGame(Z)V

    .line 25
    iget-object v0, v3, Lcom/gpc/sdk/misc/f;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/gpc/sdk/misc/f;->isCustomHandle()Z

    move-result v1

    invoke-virtual {p0}, Lcom/gpc/sdk/misc/f;->notificationIcon()I

    move-result v2

    invoke-virtual {p0}, Lcom/gpc/sdk/misc/f;->notificationTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v1, v2, v4}, Lcom/gpc/sdk/push/GPCPushMessage;->notify(Landroid/content/Context;ZILjava/lang/String;)V

    goto :goto_1

    .line 27
    :cond_2
    const-string v0, "sendToMessageCenter"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, v3, Lcom/gpc/sdk/misc/f;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/push/GPCPushMessage;->sendToMessageCenter(Landroid/content/Context;)V

    .line 31
    :goto_1
    iget-object v0, v3, Lcom/gpc/sdk/misc/f;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/gpc/sdk/push/GPCPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, v3, Lcom/gpc/sdk/misc/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/gpc/sdk/push/GPCMessageMarker;->getAPPState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/gpc/sdk/push/GPCMessageMarker;->onMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public areNotificationsEnabledInGame()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isCustomHandle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract notificationIcon()I
.end method

.method public abstract notificationTitle()Ljava/lang/String;
.end method
