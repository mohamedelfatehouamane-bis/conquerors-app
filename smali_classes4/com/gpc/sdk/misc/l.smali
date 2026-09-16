.class public final Lcom/gpc/sdk/misc/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/ingamereporting/service/InGameReportingService;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lcom/gpc/sdk/service/request/client/IServiceClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "gameId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/misc/l;->a:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceClient()Lcom/gpc/sdk/service/request/client/IServiceClient;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/misc/l;->b:Lcom/gpc/sdk/service/request/client/IServiceClient;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;Lcom/gpc/sdk/ingamereporting/listener/GPCInGameReportingListener;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    const-string v4, "userId"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "nickname"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "violation"

    move-object/from16 v6, p4

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "listener"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 5
    invoke-virtual {v6}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 6
    invoke-virtual {v6}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 7
    invoke-virtual {v6}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v9, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v9, Ljava/util/HashMap;

    .line 15
    iget-object v10, v0, Lcom/gpc/sdk/misc/l;->a:Ljava/lang/String;

    const-string v11, "game_id"

    invoke-static {v11, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 16
    const-string v11, "user_id"

    invoke-static {v11, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 17
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 18
    invoke-virtual {v6}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->getUserId()Ljava/lang/String;

    move-result-object v4

    const-string v11, "target_user_id"

    invoke-static {v11, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 19
    invoke-virtual {v6}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->getNickname()Ljava/lang/String;

    move-result-object v11

    const-string v12, "target_nickname"

    invoke-static {v12, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    .line 20
    invoke-virtual {v6}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->getContent()Ljava/lang/String;

    move-result-object v12

    const-string v13, "content"

    invoke-static {v13, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    .line 21
    const-string v13, "timestamp"

    invoke-static {v13, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 22
    invoke-virtual {v6}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->getType()Ljava/lang/String;

    move-result-object v13

    const-string v14, "type_id"

    invoke-static {v14, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    .line 23
    invoke-virtual {v6}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->getResourceId()Ljava/lang/String;

    move-result-object v14

    const-string v15, "resource_id"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    .line 24
    invoke-virtual {v6}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->getSceneType()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const-string v7, "scene_type"

    invoke-static {v7, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    new-array v8, v8, [Lkotlin/Pair;

    aput-object v10, v8, v16

    const/4 v10, 0x1

    aput-object v1, v8, v10

    const/4 v1, 0x2

    aput-object v2, v8, v1

    const/4 v1, 0x3

    aput-object v4, v8, v1

    const/4 v1, 0x4

    aput-object v11, v8, v1

    const/4 v1, 0x5

    aput-object v12, v8, v1

    const/4 v1, 0x6

    aput-object v5, v8, v1

    const/4 v1, 0x7

    aput-object v13, v8, v1

    const/16 v1, 0x8

    aput-object v14, v8, v1

    const/16 v1, 0x9

    aput-object v7, v8, v1

    .line 25
    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 26
    invoke-direct {v9, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    if-eqz p3, :cond_0

    .line 42
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "server_id"

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_0
    invoke-virtual {v6}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    invoke-virtual {v6}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->getRemark()Ljava/lang/String;

    move-result-object v1

    const-string v2, "remark"

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_1
    invoke-virtual {v6}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->getServerId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    invoke-virtual {v6}, Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;->getServerId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "target_server_id"

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_2
    new-instance v1, Lcom/gpc/util/HttpParamsSigner;

    invoke-direct {v1}, Lcom/gpc/util/HttpParamsSigner;-><init>()V

    invoke-virtual {v1, v9}, Lcom/gpc/util/HttpParamsSigner;->signByOrderAsc(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign"

    invoke-virtual {v9, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v1, v0, Lcom/gpc/sdk/misc/l;->b:Lcom/gpc/sdk/service/request/client/IServiceClient;

    if-eqz v1, :cond_3

    new-instance v2, Lcom/gpc/sdk/misc/l$a;

    invoke-direct {v2, v3}, Lcom/gpc/sdk/misc/l$a;-><init>(Lcom/gpc/sdk/ingamereporting/listener/GPCInGameReportingListener;)V

    const-string v3, "/report_center/report_info/complain/do"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v9, v4, v2}, Lcom/gpc/sdk/service/request/client/IServiceClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;)V

    :cond_3
    return-void

    .line 56
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Necessary parameters cannot be empty!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "GameDelegate.Character.charName cannot be empty!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
