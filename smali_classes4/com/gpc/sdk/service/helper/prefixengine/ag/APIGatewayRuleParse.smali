.class public Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayRuleParse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/helper/prefixengine/RuleParse;


# static fields
.field private static final APIGATEWAY_RULE_CONFIG_FILENAME:Ljava/lang/String; = "apigateway_rule_config"

.field private static final TAG:Ljava/lang/String; = "APIGatewayRuleParse"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayRuleParse;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/gpc/sdk/service/helper/prefixengine/ServerListModel;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "updated_at"

    const-string v2, "mode"

    const-string v3, "prefixes"

    const-string v4, "v1"

    const-string v5, ""

    const-string v6, "APIGatewayRuleParse"

    .line 1
    const-string v7, "apis"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 3
    :try_start_0
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 4
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 5
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 6
    new-instance v8, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v10, p0

    :try_start_1
    iget-object v0, v10, Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayRuleParse;->context:Landroid/content/Context;

    const-string v11, "apigateway_rule_config"

    invoke-direct {v8, v0, v11}, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 11
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v13, v0, :cond_2

    .line 12
    invoke-virtual {v3, v13}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v0, :cond_1

    .line 14
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v14

    const/4 v15, 0x3

    if-lt v14, v15, :cond_1

    .line 15
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v16, 0x0

    const/4 v9, 0x1

    .line 17
    :try_start_3
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v9, 0x2

    .line 18
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    const/4 v9, 0x1

    if-ne v15, v9, :cond_0

    .line 20
    const-string v9, "https://"

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 22
    :cond_0
    const-string v9, "http://"

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :goto_1
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    new-instance v9, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    int-to-long v14, v0

    invoke-direct {v9, v12, v14, v15}, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;-><init>(Ljava/lang/String;J)V

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    const/16 v16, 0x0

    .line 28
    :goto_2
    :try_start_4
    invoke-static {v6, v5, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_1
    const/16 v16, 0x0

    :goto_3
    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    .line 32
    invoke-virtual {v8, v11}, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->setSal(Ljava/util/List;)V

    .line 34
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_3
    move-object/from16 v0, v16

    .line 35
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 36
    const-string v2, "general"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 37
    sget-object v2, Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;->GENERAL:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    invoke-virtual {v8, v2}, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->setSalRuleMode(Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;)V

    .line 40
    :cond_4
    const-string v2, "pick-over"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 41
    sget-object v2, Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;->PICK_OVER:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    invoke-virtual {v8, v2}, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->setSalRuleMode(Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;)V

    .line 45
    :cond_5
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object/from16 v1, v16

    .line 46
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 47
    invoke-virtual {v8, v1}, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->setUpdatedAt(Ljava/lang/String;)V

    .line 49
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apigateway-rule:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    return-object v8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v10, p0

    :goto_6
    const/16 v16, 0x0

    .line 53
    :goto_7
    invoke-static {v6, v5, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_8
    move-object/from16 v10, p0

    const/16 v16, 0x0

    :goto_8
    return-object v16
.end method
