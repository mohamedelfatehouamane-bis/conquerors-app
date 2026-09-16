.class public interface abstract Lcom/gpc/noticehub/extended/INoticeHub;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract didReceiveLinkOneMessage(ILcom/gpc/operations/helper/ServerMessagePayload;)Z
.end method

.method public abstract didReceiveRemoteNotifications(Landroid/app/Application;Ljava/util/Map;Lcom/gpc/operations/OperationsSDKNotificationConfig;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/OperationsSDKNotificationConfig;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract didReceiveRemoteNotifications(Landroid/app/Application;Lorg/json/JSONObject;Lcom/gpc/operations/OperationsSDKNotificationConfig;)Z
.end method

.method public abstract onActionModuleNoticeCountUpdate(Ljava/lang/String;I)Z
.end method

.method public abstract onActionModulePreClose(Ljava/lang/String;)Z
.end method

.method public abstract onActionNotificationNoticeHubTrigger()Z
.end method
