.class Lcom/AccountHelper$2;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AccountHelper;->requestGameConfig(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 127
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    sget-object v0, Lcom/igg/android/conquerors/col;->m_appconfig:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    const-string v1, "requestGameConfig"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    sget-object v0, Lcom/igg/android/conquerors/col;->m_serverTime:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    .line 130
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    sget-object v2, Lcom/igg/android/conquerors/col;->m_appconfig:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    invoke-virtual {v2}, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->getRawString()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    sget-object v3, Lcom/igg/android/conquerors/col;->m_serverTime:Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    invoke-virtual {v3}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->getTimestamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 134
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    sget-object v5, Lcom/igg/android/conquerors/col;->m_appconfig:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    invoke-virtual {v5}, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->getClientIP()Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/jniCallback;->retGameConfig(Ljava/lang/String;JLjava/lang/String;)V

    .line 136
    const-string v0, "sucess!"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 140
    :cond_0
    invoke-static {}, Lcom/AccountHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 141
    const-string v4, ""

    invoke-virtual {v0, v4, v2, v3, v4}, Lcom/jniCallback;->retGameConfig(Ljava/lang/String;JLjava/lang/String;)V

    .line 142
    const-string v0, "faild, try to use def config!"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
