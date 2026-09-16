.class public Lcom/gpc/sdk/push/GPCFCMPushNotification;
.super Lcom/gpc/sdk/push/BasePushNotification;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;


# static fields
.field public static final k:Ljava/lang/String; = "FCMPush"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/push/BasePushNotification;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object p1

    const-string v0, "fcm_token_refresh"

    invoke-virtual {p1, v0, p0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    .line 3
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/gpc/sdk/push/GPCFCMPushNotification$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/push/GPCFCMPushNotification$a;-><init>(Lcom/gpc/sdk/push/GPCFCMPushNotification;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/gpc/sdk/push/GPCPushType;->FCM:Lcom/gpc/sdk/push/GPCPushType;

    invoke-virtual {v0}, Lcom/gpc/sdk/push/GPCPushType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/gpc/sdk/push/IGetPushTokenCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/push/GPCFCMPushNotification$b;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/push/GPCFCMPushNotification$b;-><init>(Lcom/gpc/sdk/push/GPCFCMPushNotification;Lcom/gpc/sdk/push/IGetPushTokenCallback;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/push/BasePushNotification;->initialize(Ljava/lang/String;)V

    return-void
.end method

.method public isSupported()Z
    .locals 3

    const-string v0, "FCMPush"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/gpc/sdk/push/BasePushNotification;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x9

    :goto_0
    if-eqz v1, :cond_0

    .line 7
    const-string v1, "This device FCM is not supported. No valid Google Play Services APK found"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onNotification(Lcom/gpc/sdk/notification/GPCNotification;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/push/BasePushNotification;->c:Ljava/lang/String;

    return-void
.end method

.method public onUninitialized()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    const-string v1, "fcm_token_refresh"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->removeObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    return-void
.end method
