.class public Lcom/gpc/sdk/push/BasePushNotification$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/push/IGetPushTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/push/BasePushNotification;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/push/BasePushNotification;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/push/BasePushNotification;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/push/BasePushNotification$a;->a:Lcom/gpc/sdk/push/BasePushNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGot(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/BasePushNotification$a;->a:Lcom/gpc/sdk/push/BasePushNotification;

    iput-object p1, v0, Lcom/gpc/sdk/push/BasePushNotification;->c:Ljava/lang/String;

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "registrationId :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gpc/sdk/push/BasePushNotification$a;->a:Lcom/gpc/sdk/push/BasePushNotification;

    iget-object v0, v0, Lcom/gpc/sdk/push/BasePushNotification;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BasePushNotification"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "userId:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/push/BasePushNotification$a;->a:Lcom/gpc/sdk/push/BasePushNotification;

    invoke-static {v1}, Lcom/gpc/sdk/push/BasePushNotification;->a(Lcom/gpc/sdk/push/BasePushNotification;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "ADID:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCIdsManager;->getADID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/push/BasePushNotification$a;->a:Lcom/gpc/sdk/push/BasePushNotification;

    iget-object p1, p1, Lcom/gpc/sdk/push/BasePushNotification;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/gpc/sdk/push/BasePushNotification$a;->a:Lcom/gpc/sdk/push/BasePushNotification;

    iget-object v0, p1, Lcom/gpc/sdk/push/BasePushNotification;->c:Ljava/lang/String;

    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCIdsManager;->getADID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/gpc/sdk/push/BasePushNotification;->register(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
