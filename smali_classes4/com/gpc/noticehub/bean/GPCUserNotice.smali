.class public Lcom/gpc/noticehub/bean/GPCUserNotice;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCUserNotice"


# instance fields
.field private data:Ljava/lang/String;

.field private dataType:I

.field private gameActivityNotice:Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;

.field private raw:Ljava/lang/String;

.field private scene:Ljava/lang/String;

.field private userNormalNotice:Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Ljava/lang/String;)Lcom/gpc/noticehub/bean/GPCUserNotice;
    .locals 8

    .line 1
    const-string v0, "GPCUserNotice"

    :try_start_0
    new-instance v1, Lcom/gpc/noticehub/bean/GPCUserNotice;

    invoke-direct {v1}, Lcom/gpc/noticehub/bean/GPCUserNotice;-><init>()V

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    const-string v3, "scene"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    const-string v4, "data_type"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 5
    const-string v6, "data"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    iput-object p0, v1, Lcom/gpc/noticehub/bean/GPCUserNotice;->raw:Ljava/lang/String;

    .line 7
    iput-object v3, v1, Lcom/gpc/noticehub/bean/GPCUserNotice;->scene:Ljava/lang/String;

    .line 8
    iput v4, v1, Lcom/gpc/noticehub/bean/GPCUserNotice;->dataType:I

    .line 9
    iput-object v2, v1, Lcom/gpc/noticehub/bean/GPCUserNotice;->data:Ljava/lang/String;

    if-ne v4, v5, :cond_0

    .line 11
    invoke-static {v2}, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;->parseJson(Ljava/lang/String;)Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;

    move-result-object p0

    iput-object p0, v1, Lcom/gpc/noticehub/bean/GPCUserNotice;->userNormalNotice:Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;

    return-object v1

    :cond_0
    const/4 p0, 0x2

    if-ne v4, p0, :cond_1

    .line 13
    invoke-static {v2}, Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;->parseJson(Ljava/lang/String;)Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;

    move-result-object p0

    iput-object p0, v1, Lcom/gpc/noticehub/bean/GPCUserNotice;->gameActivityNotice:Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;

    return-object v1

    .line 15
    :cond_1
    const-string p0, "parseJson dataType is not support"

    invoke-static {v0, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 19
    const-string v1, "parseJson"

    invoke-static {v0, v1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNotice;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/noticehub/bean/GPCUserNotice;->dataType:I

    return v0
.end method

.method public getGameActivityNotice()Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNotice;->gameActivityNotice:Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;

    return-object v0
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNotice;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public getScene()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNotice;->scene:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNormalNotice()Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/bean/GPCUserNotice;->userNormalNotice:Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/bean/GPCUserNotice;->data:Ljava/lang/String;

    return-void
.end method

.method public setDataType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/noticehub/bean/GPCUserNotice;->dataType:I

    return-void
.end method

.method public setGameActivityNotice(Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/bean/GPCUserNotice;->gameActivityNotice:Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;

    return-void
.end method

.method public setRaw(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/bean/GPCUserNotice;->raw:Ljava/lang/String;

    return-void
.end method

.method public setScene(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/bean/GPCUserNotice;->scene:Ljava/lang/String;

    return-void
.end method

.method public setUserNormalNotice(Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/bean/GPCUserNotice;->userNormalNotice:Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCUserNotice{raw=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/noticehub/bean/GPCUserNotice;->raw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', scene=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/noticehub/bean/GPCUserNotice;->scene:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', dataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/noticehub/bean/GPCUserNotice;->dataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/noticehub/bean/GPCUserNotice;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', userNormalNotice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/noticehub/bean/GPCUserNotice;->userNormalNotice:Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gameActivityNotice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/noticehub/bean/GPCUserNotice;->gameActivityNotice:Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
