.class public Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/common/OAIDGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$Info;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MSAOAIDGenerator"


# instance fields
.field private isDebug:Z

.field private timeout:J

.field private unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(ZJLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;->isDebug:Z

    .line 3
    iput-wide p2, p0, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;->timeout:J

    .line 4
    iput-object p4, p0, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;->unit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public static isAvailableAtRuntime()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public fetchMsa(Landroid/content/Context;)Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$Info;
    .locals 8

    const-string v0, "MSAOAIDGenerator"

    const-string v1, "error:"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2
    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 3
    iget-boolean v6, p0, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;->isDebug:Z

    xor-int/lit8 v6, v6, 0x1

    new-instance v7, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$a;

    invoke-direct {v7, p0, v3, v4, v5}, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$a;-><init>(Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;JLjava/util/concurrent/BlockingQueue;)V

    invoke-static {p1, v6, v7}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZLcom/bun/miitmdid/interfaces/IIdentifierListener;)I

    move-result p1

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 40
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 41
    :pswitch_0
    const-string p1, "Reflection call error"

    goto :goto_0

    .line 42
    :pswitch_1
    const-string p1, "Callback will be executed in a different thread"

    goto :goto_0

    .line 43
    :pswitch_2
    const-string p1, "Error loading configuration file"

    goto :goto_0

    .line 44
    :pswitch_3
    const-string p1, "Unsupported device"

    goto :goto_0

    .line 45
    :pswitch_4
    const-string p1, "Unsupported manufacturer"

    goto :goto_0

    .line 46
    :pswitch_5
    const-string p1, "Init error begin"

    .line 67
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    iget-wide v3, p0, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;->timeout:J

    iget-object p1, p0, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v3, v4, p1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    new-instance v1, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$Info;

    invoke-direct {v1, p1}, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$Info;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    .line 74
    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0xf63e2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public generate(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "MSAOAIDGenerator"

    .line 0
    const-string v1, "Fetch "

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 5
    invoke-static {}, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;->isAvailableAtRuntime()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;->fetchMsa(Landroid/content/Context;)Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$Info;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 10
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    return-object v2

    .line 14
    :cond_1
    invoke-static {p1}, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$Info;->access$000(Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$Info;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 17
    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method
