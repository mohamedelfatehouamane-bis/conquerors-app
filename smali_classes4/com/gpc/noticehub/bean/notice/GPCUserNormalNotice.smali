.class public Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCUserNormalNotice"


# instance fields
.field private notice:I

.field private raw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Ljava/lang/String;)Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;

    invoke-direct {v0}, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    const-string v2, "notice"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 4
    invoke-virtual {v0, p0}, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;->setRaw(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;->setNotice(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 8
    const-string v0, "GPCUserNormalNotice"

    const-string v1, "parseJson"

    invoke-static {v0, v1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getNotice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;->notice:I

    return v0
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;->raw:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    const-string v0, "GPCUserNormalNotice"

    const-string v1, "getValue"

    invoke-static {v0, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    const-string p1, ""

    return-object p1
.end method

.method public isShowNotice()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;->notice:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setNotice(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;->notice:I

    return-void
.end method

.method public setRaw(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;->raw:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCUserNoticeMessage{raw=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;->raw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', notice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;->notice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
