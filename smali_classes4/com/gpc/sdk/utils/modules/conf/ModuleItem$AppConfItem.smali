.class public Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/modules/conf/ModuleItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppConfItem"
.end annotation


# instance fields
.field private urls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gpc/sdk/GPCSDKConstant$CDNType;",
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

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;->urls:Ljava/util/Map;

    return-void
.end method

.method public static createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;
    .locals 7

    const-string v0, "ModuleItem"

    const-string v1, "prefixes"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2
    new-instance v3, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;

    invoke-direct {v3}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;-><init>()V

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    if-nez v1, :cond_0

    .line 6
    iget-object v4, v3, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;->urls:Ljava/util/Map;

    sget-object v5, Lcom/gpc/sdk/GPCSDKConstant$CDNType;->STATIC_ADDRESS:Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v4, 0x1

    if-ne v4, v1, :cond_1

    .line 9
    iget-object v4, v3, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;->urls:Ljava/util/Map;

    sget-object v5, Lcom/gpc/sdk/GPCSDKConstant$CDNType;->DYNAMIC_ADDRESS:Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v4, 0x2

    if-ne v4, v1, :cond_2

    .line 12
    iget-object v4, v3, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;->urls:Ljava/util/Map;

    sget-object v5, Lcom/gpc/sdk/GPCSDKConstant$CDNType;->SND_ADDRESS:Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v3

    .line 17
    :cond_4
    const-string p0, "appconf.prefixes is null!"

    invoke-static {v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 21
    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method


# virtual methods
.method public getUrls()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/gpc/sdk/GPCSDKConstant$CDNType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;->urls:Ljava/util/Map;

    return-object v0
.end method

.method public setUrls(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/gpc/sdk/GPCSDKConstant$CDNType;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;->urls:Ljava/util/Map;

    return-void
.end method
