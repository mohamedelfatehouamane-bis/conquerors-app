.class public Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLOSE:I = 0x1

.field public static final OPEN:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Profiling"


# instance fields
.field private flowLog:Lcom/gpc/operations/migrate/utils/modules/log/bean/FlowLog;

.field private remoteApi:Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFromJson(Ljava/lang/String;)Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;
    .locals 6

    const-string v0, "profiling"

    .line 1
    new-instance v1, Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;

    invoke-direct {v1}, Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;-><init>()V

    .line 3
    new-instance v2, Lcom/gpc/operations/migrate/utils/modules/log/bean/FlowLog;

    invoke-direct {v2}, Lcom/gpc/operations/migrate/utils/modules/log/bean/FlowLog;-><init>()V

    .line 4
    new-instance v3, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;

    invoke-direct {v3}, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;-><init>()V

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "Profiling"

    if-nez v4, :cond_0

    .line 7
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 9
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/gpc/operations/migrate/utils/modules/log/bean/FlowLog;->parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/operations/migrate/utils/modules/log/bean/FlowLog;

    move-result-object v2

    .line 11
    invoke-static {p0}, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;->parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    const-string v0, ""

    invoke-static {v5, v0, p0}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 17
    :cond_0
    const-string p0, "meata data is null."

    invoke-static {v5, p0}, Lcom/gpc/operations/migrate/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {v1, v2}, Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;->setFlowLog(Lcom/gpc/operations/migrate/utils/modules/log/bean/FlowLog;)V

    .line 20
    invoke-virtual {v1, v3}, Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;->setRemoteApi(Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;)V

    return-object v1
.end method


# virtual methods
.method public getFlowLog()Lcom/gpc/operations/migrate/utils/modules/log/bean/FlowLog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;->flowLog:Lcom/gpc/operations/migrate/utils/modules/log/bean/FlowLog;

    return-object v0
.end method

.method public getRemoteApi()Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;->remoteApi:Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;

    return-object v0
.end method

.method public setFlowLog(Lcom/gpc/operations/migrate/utils/modules/log/bean/FlowLog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;->flowLog:Lcom/gpc/operations/migrate/utils/modules/log/bean/FlowLog;

    return-void
.end method

.method public setRemoteApi(Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/log/bean/Profiling;->remoteApi:Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;

    return-void
.end method
