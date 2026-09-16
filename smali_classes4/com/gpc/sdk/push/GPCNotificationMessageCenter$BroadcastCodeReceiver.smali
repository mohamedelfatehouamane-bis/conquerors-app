.class public Lcom/gpc/sdk/push/GPCNotificationMessageCenter$BroadcastCodeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/push/GPCNotificationMessageCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BroadcastCodeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/sdk/push/GPCNotificationMessageCenter;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/push/GPCNotificationMessageCenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter$BroadcastCodeReceiver;->this$0:Lcom/gpc/sdk/push/GPCNotificationMessageCenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const-string p1, "GPCNotificationMessageCenter"

    const-string v0, "BroadcastCodeReceiver"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/gpc/sdk/bean/GPCPushCommonMessageInfo;

    invoke-direct {v0}, Lcom/gpc/sdk/bean/GPCPushCommonMessageInfo;-><init>()V

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/bean/GPCPushCommonMessageInfo;->setMessage(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "m_qid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/bean/GPCPushCommonMessageInfo;->setMqId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "m_display"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/bean/GPCPushCommonMessageInfo;->setDisplay(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "m_state"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/gpc/sdk/bean/GPCPushCommonMessageInfo;->setMessageState(Ljava/lang/String;)V

    .line 8
    const-string p2, "m_crm"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter$BroadcastCodeReceiver;->this$0:Lcom/gpc/sdk/push/GPCNotificationMessageCenter;

    invoke-static {p2}, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->access$000(Lcom/gpc/sdk/push/GPCNotificationMessageCenter;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;

    .line 11
    sget-object v2, Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;->TSNative:Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;

    const-string v3, ""

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter$BroadcastCodeReceiver;->this$0:Lcom/gpc/sdk/push/GPCNotificationMessageCenter;

    invoke-static {v1}, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->access$000(Lcom/gpc/sdk/push/GPCNotificationMessageCenter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/push/GPCNotificationMessageCenter$GPCPushMesageListener;

    invoke-interface {v1, v0, p1}, Lcom/gpc/sdk/push/GPCNotificationMessageCenter$GPCPushMesageListener;->handleMessage(Lcom/gpc/sdk/bean/GPCPushCommonMessageInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_1
    sget-object v2, Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;->SDK:Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    :cond_2
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCNotificationMessageCenter$BroadcastCodeReceiver;->this$0:Lcom/gpc/sdk/push/GPCNotificationMessageCenter;

    invoke-static {v1}, Lcom/gpc/sdk/push/GPCNotificationMessageCenter;->access$000(Lcom/gpc/sdk/push/GPCNotificationMessageCenter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/push/GPCNotificationMessageCenter$GPCPushMesageListener;

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCPushCommonMessageInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/gpc/sdk/push/GPCNotificationMessageCenter$GPCPushMesageListener;->handleMessage(Lcom/gpc/sdk/bean/GPCPushCommonMessageInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method
