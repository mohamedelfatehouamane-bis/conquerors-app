.class public Lcom/gpc/sdk/utils/common/SDKMetaUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_SDK_META_NAME:Ljava/lang/String; = "gpcsdk-android"

.field public static final SDK_META:Lcom/gpc/sdk/jarvis/utils/JSDKMeta;

.field private static final TAG:Ljava/lang/String; = "SDKMetaUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;

    sget-object v1, Lcom/gpc/util/VersionUtil;->version:Lcom/gpc/sdk/GPCVersion;

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCVersion;->getCodebaseVersionName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gpcsdk-android"

    invoke-direct {v0, v2, v1}, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gpc/sdk/utils/common/SDKMetaUtil;->SDK_META:Lcom/gpc/sdk/jarvis/utils/JSDKMeta;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJson(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/jarvis/utils/JSDKMeta;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5
    invoke-virtual {v1}, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v1}, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v3, "version"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0

    .line 10
    :cond_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 11
    sget-object v1, Lcom/gpc/sdk/utils/common/SDKMetaUtil;->SDK_META:Lcom/gpc/sdk/jarvis/utils/JSDKMeta;

    invoke-virtual {v1}, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/gpc/sdk/jarvis/utils/JSDKMeta;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object v0
.end method

.method public static getSDKMetas(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/jarvis/utils/JSDKMeta;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/common/SDKMetaUtil;->SDK_META:Lcom/gpc/sdk/jarvis/utils/JSDKMeta;

    invoke-static {p0, v0}, Lcom/gpc/sdk/jarvis/utils/JSDKMetaUtil;->getSDKMetas(Landroid/content/Context;Lcom/gpc/sdk/jarvis/utils/JSDKMeta;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
