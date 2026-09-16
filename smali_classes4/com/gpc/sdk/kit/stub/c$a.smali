.class public Lcom/gpc/sdk/kit/stub/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/kit/stub/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/kit/stub/c;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/kit/stub/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/kit/stub/c$a;->a:Lcom/gpc/sdk/kit/stub/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lcom/gpc/sdk/notification/GPCNotification;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const-string v1, "LogStub"

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/gpc/sdk/kit/stub/c$a;->a:Lcom/gpc/sdk/kit/stub/c;

    invoke-static {v2, p1, v0}, Lcom/gpc/sdk/kit/stub/c;->a(Lcom/gpc/sdk/kit/stub/c;Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "current userId is not vip.userId:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/kit/stub/c$a;->a:Lcom/gpc/sdk/kit/stub/c;

    invoke-static {p1, v0}, Lcom/gpc/sdk/kit/stub/c;->a(Lcom/gpc/sdk/kit/stub/c;Ljava/lang/String;)J

    move-result-wide v2

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v6, 0x493e0

    cmp-long p1, v4, v6

    if-gez p1, :cond_2

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "last upload time is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", Stop upload."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_2
    const-string p1, "start upload task."

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance p1, Lcom/gpc/util/SDKTask;

    invoke-direct {p1}, Lcom/gpc/util/SDKTask;-><init>()V

    .line 26
    new-instance v1, Lcom/gpc/sdk/kit/stub/c$a$a;

    invoke-direct {v1, p0, v0}, Lcom/gpc/sdk/kit/stub/c$a$a;-><init>(Lcom/gpc/sdk/kit/stub/c$a;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/gpc/util/SDKTask;->excuteForTimeConsuming(Lcom/gpc/util/SDKTask$SDKTaskRunnable;Lcom/gpc/util/SDKTask$SDKTaskResultListener;)V

    return-void

    .line 27
    :cond_3
    :goto_0
    const-string p1, "session == null || vips == null"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
