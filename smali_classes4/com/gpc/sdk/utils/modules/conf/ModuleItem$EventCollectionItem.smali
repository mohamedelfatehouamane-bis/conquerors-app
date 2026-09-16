.class public Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/modules/conf/ModuleItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventCollectionItem"
.end annotation


# instance fields
.field private accessKeyId:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private secretKey:Ljava/lang/String;

.field private streamName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;
    .locals 6

    const-string v0, "stream_name"

    const-string v1, "region"

    const-string v2, "secret_key"

    const-string v3, "access_key_id"

    .line 1
    new-instance v4, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;

    invoke-direct {v4}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;->accessKeyId:Ljava/lang/String;

    .line 6
    :cond_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;->secretKey:Ljava/lang/String;

    .line 9
    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;->region:Ljava/lang/String;

    .line 12
    :cond_2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;->streamName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p0

    .line 16
    const-string v0, "ModuleItem"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-object v4
.end method


# virtual methods
.method public getAccessKeyId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;->accessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;->streamName:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessKeyId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;->region:Ljava/lang/String;

    return-void
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;->secretKey:Ljava/lang/String;

    return-void
.end method

.method public setStreamName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;->streamName:Ljava/lang/String;

    return-void
.end method
