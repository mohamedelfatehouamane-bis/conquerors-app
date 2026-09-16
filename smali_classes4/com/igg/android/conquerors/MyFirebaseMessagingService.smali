.class public Lcom/igg/android/conquerors/MyFirebaseMessagingService;
.super Lcom/gpc/sdk/push/GPCFCMMessagingService;
.source "MyFirebaseMessagingService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyFirebaseMsgService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/gpc/sdk/push/GPCFCMMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public getGPCPushMessageHandler()Lcom/gpc/sdk/push/GPCPushMessageHandler;
    .locals 2

    .line 35
    new-instance v0, Lcom/igg/android/conquerors/MyFirebaseMessagingService$1;

    invoke-virtual {p0}, Lcom/igg/android/conquerors/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/igg/android/conquerors/MyFirebaseMessagingService$1;-><init>(Lcom/igg/android/conquerors/MyFirebaseMessagingService;Landroid/content/Context;)V

    return-object v0
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 3

    .line 18
    invoke-super {p0, p1}, Lcom/gpc/sdk/push/GPCFCMMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 20
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    .line 23
    invoke-static {}, Lcom/gpc/operations/OperationsSDK;->sharedInstance()Lcom/gpc/operations/OperationsSDK;

    move-result-object v0

    new-instance v1, Lcom/igg/android/conquerors/OperationsSDKDefaultCompatProxy;

    invoke-direct {v1}, Lcom/igg/android/conquerors/OperationsSDKDefaultCompatProxy;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gpc/operations/OperationsSDK;->setProxy(Lcom/gpc/operations/compact/OperationsCompatProxy;)V

    .line 24
    new-instance v0, Lcom/gpc/operations/OperationsSDKNotificationConfig;

    invoke-direct {v0}, Lcom/gpc/operations/OperationsSDKNotificationConfig;-><init>()V

    .line 27
    sget v1, Lcom/igg/android/conquerors/R$drawable;->white_icon:I

    invoke-virtual {v0, v1}, Lcom/gpc/operations/OperationsSDKNotificationConfig;->setSmallIcon(I)V

    .line 29
    sget v1, Lcom/igg/android/conquerors/R$drawable;->icon:I

    invoke-virtual {v0, v1}, Lcom/gpc/operations/OperationsSDKNotificationConfig;->setLargeIcon(I)V

    .line 30
    invoke-static {}, Lcom/gpc/operations/OperationsSDK;->sharedInstance()Lcom/gpc/operations/OperationsSDK;

    move-result-object v1

    invoke-virtual {p0}, Lcom/igg/android/conquerors/MyFirebaseMessagingService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v0}, Lcom/gpc/operations/OperationsSDK;->didReceiveRemoteNotifications(Landroid/app/Application;Ljava/util/Map;Lcom/gpc/operations/OperationsSDKNotificationConfig;)Z

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Lcom/gpc/sdk/push/GPCFCMMessagingService;->onNewToken(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {p0}, Lcom/igg/android/conquerors/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerLib;->updateServerUninstallToken(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
