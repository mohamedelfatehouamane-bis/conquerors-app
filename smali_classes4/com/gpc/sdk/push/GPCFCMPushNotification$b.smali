.class public Lcom/gpc/sdk/push/GPCFCMPushNotification$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/push/GPCFCMPushNotification;->a(Lcom/gpc/sdk/push/IGetPushTokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/push/IGetPushTokenCallback;

.field public final synthetic b:Lcom/gpc/sdk/push/GPCFCMPushNotification;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/push/GPCFCMPushNotification;Lcom/gpc/sdk/push/IGetPushTokenCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/push/GPCFCMPushNotification$b;->b:Lcom/gpc/sdk/push/GPCFCMPushNotification;

    iput-object p2, p0, Lcom/gpc/sdk/push/GPCFCMPushNotification$b;->a:Lcom/gpc/sdk/push/IGetPushTokenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "FCMPush"

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCFCMPushNotification$b;->a:Lcom/gpc/sdk/push/IGetPushTokenCallback;

    const-string v2, ""

    invoke-interface {v0, v2}, Lcom/gpc/sdk/push/IGetPushTokenCallback;->onGot(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    const-string v0, "Fetching FCM registration token failed"

    invoke-static {v1, v0, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Refreshed token: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCFCMPushNotification$b;->a:Lcom/gpc/sdk/push/IGetPushTokenCallback;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/push/IGetPushTokenCallback;->onGot(Ljava/lang/String;)V

    return-void
.end method
