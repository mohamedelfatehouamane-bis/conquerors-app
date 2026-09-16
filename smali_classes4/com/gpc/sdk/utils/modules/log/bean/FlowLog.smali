.class public Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "FlowLog"


# instance fields
.field private off:I

.field private vips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;->off:I

    return-void
.end method

.method public static parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;
    .locals 5

    const-string v0, "vips"

    const-string v1, "off"

    const-string v2, "flow_log"

    .line 1
    new-instance v3, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;

    invoke-direct {v3}, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;->setOff(I)V

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-static {p0, v0}, Lcom/gpc/util/JsonParserUtils;->getStringListFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;->setVips(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    .line 13
    const-string v0, "FlowLog"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v3
.end method


# virtual methods
.method public getOff()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;->off:I

    return v0
.end method

.method public getVips()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;->vips:Ljava/util/List;

    return-object v0
.end method

.method public isOpen()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;->off:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOff(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;->off:I

    return-void
.end method

.method public setVips(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;->vips:Ljava/util/List;

    return-void
.end method
