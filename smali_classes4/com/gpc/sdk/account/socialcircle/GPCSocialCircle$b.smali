.class public Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->findPeoplePlayerMayKnow(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;

.field public final synthetic b:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$b;->b:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;

    iput-object p2, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$b;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, "data"

    const-string v4, "10"

    const-string v5, ""

    const-string v6, "ret:"

    const-string v7, "isSourceUpdate:"

    .line 1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "retETag:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "GPCSocialCircle"

    invoke-static {v9, v8}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 6
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "find_people_player_may_know_value"

    const/4 v8, 0x0

    const-string v11, "social_circle_"

    if-eqz v0, :cond_0

    .line 8
    :try_start_1
    iget-object v0, v1, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$b;->b:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;

    invoke-static {v0}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;)Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$b;->b:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;

    invoke-static {v11}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;)Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    move-result-object v11

    invoke-interface {v11}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;->playerSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v11

    invoke-virtual {v11}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 11
    const-string v11, "find_people_player_may_know_etag"

    invoke-interface {v0, v11, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v2, p4

    .line 12
    invoke-interface {v0, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, v2

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, v1, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$b;->b:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;

    invoke-static {v0}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;)Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$b;->b:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;

    invoke-static {v11}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;)Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    move-result-object v11

    invoke-interface {v11}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;->playerSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v11

    invoke-virtual {v11}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 19
    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    const-string v0, "error"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v6, "code"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "_version"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 31
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "suggest_list"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_2

    .line 34
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 35
    new-instance v11, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion;

    invoke-direct {v11}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion;-><init>()V

    .line 36
    const-string v12, "user_id"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion;->setUserId(Ljava/lang/String;)V

    .line 38
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 39
    const-string v13, "connection"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 40
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_1

    .line 42
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 43
    new-instance v8, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

    invoke-direct {v8}, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;-><init>()V

    .line 44
    const-string v10, "type"

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;->name:Ljava/lang/String;

    .line 45
    new-instance v10, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion$Connection;

    move-object/from16 p2, v2

    const-string v2, "nickname"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v8, v2}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion$Connection;-><init>(Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;Ljava/lang/String;)V

    .line 46
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    const/4 v8, 0x0

    goto :goto_2

    :cond_1
    move-object/from16 p2, v2

    .line 48
    invoke-virtual {v11, v12}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleSuggestion;->setConnections(Ljava/util/List;)V

    .line 51
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p2

    const/4 v8, 0x0

    goto :goto_1

    .line 54
    :cond_2
    iget-object v2, v1, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$b;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;->onFindingFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 56
    :cond_3
    iget-object v2, v1, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$b;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;

    const-string v3, "112007"

    invoke-static {v3, v4, v0}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;->onFindingFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 59
    invoke-static {v9, v5, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    iget-object v0, v1, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$b;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;

    const-string v2, "112009"

    const/16 v3, 0x68

    invoke-static {v2, v4, v3}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;->onFindingFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    :cond_4
    const/4 v3, 0x0

    .line 63
    iget-object v0, v1, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$b;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;

    iget-object v2, v1, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$b;->b:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;

    move-object/from16 v4, p1

    invoke-static {v2, v4}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->b(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;->onFindingFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void
.end method
