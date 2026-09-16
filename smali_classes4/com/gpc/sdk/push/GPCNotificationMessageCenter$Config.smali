.class public Lcom/gpc/sdk/push/GPCNotificationMessageCenter$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/push/GPCNotificationMessageCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCustomHandle(Landroid/content/Context;)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/push/GPCPushNotificationProfile;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/push/GPCPushNotificationProfile;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, " pushStorageService.isCustomHandleMessage"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->isCustomHandleMessage()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GPCNotificationMessageCenter"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->isCustomHandleMessage()Z

    move-result p1

    return p1
.end method

.method public setCustomHandle(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/push/GPCPushNotificationProfile;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/push/GPCPushNotificationProfile;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p2}, Lcom/gpc/sdk/push/GPCPushNotificationProfile;->setCustomHandleMessageFlag(Z)V

    return-void
.end method
