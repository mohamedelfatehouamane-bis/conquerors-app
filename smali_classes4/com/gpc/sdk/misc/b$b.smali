.class public final Lcom/gpc/sdk/misc/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/b;->requestAssignedAgreementsForSetting(Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;

.field public final synthetic b:Lcom/gpc/sdk/misc/b;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;Lcom/gpc/sdk/misc/b;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/sdk/misc/b$b;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;

    iput-object p2, p0, Lcom/gpc/sdk/misc/b$b;->b:Lcom/gpc/sdk/misc/b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBusinessError(ILorg/json/JSONObject;)V
    .locals 1

    .line 1
    const-string p2, "320304"

    const-string v0, "10"

    invoke-static {p2, v0, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/gpc/sdk/misc/b$b;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;)V

    return-void
.end method

.method public onFail(I)V
    .locals 3

    .line 1
    const-string v0, "320301"

    const-string v1, "20"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const/16 v2, 0xbb8

    if-eq p1, v2, :cond_1

    const/16 v2, 0xfa0

    if-eq p1, v2, :cond_1

    const/16 v2, 0x1770

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1388

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1389

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "320303"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_1
    const-string v0, "320302"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 22
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/misc/b$b;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;

    const-string v1, "e"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const-string v1, "instantiatedException(\n \u2026                        )"

    const/16 v2, 0x1389

    const-string v3, "20"

    const-string v4, "320303"

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/misc/b$b;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;

    .line 4
    invoke-static {v4, v3, v2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1, v2, v0}, Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;)V

    return-void

    .line 16
    :cond_1
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    .line 18
    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "data.getJSONObject(index)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v9, p0, Lcom/gpc/sdk/misc/b$b;->b:Lcom/gpc/sdk/misc/b;

    invoke-virtual {v9, v8}, Lcom/gpc/sdk/misc/b;->a(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    move-result-object v8

    .line 20
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 22
    :cond_2
    new-instance p1, Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;

    invoke-direct {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;-><init>()V

    .line 23
    invoke-virtual {p1, v5}, Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;->setAgreements(Ljava/util/List;)V

    .line 24
    iget-object v5, p0, Lcom/gpc/sdk/misc/b$b;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v6

    const-string v7, "noneException()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 27
    const-string v5, ""

    invoke-static {v5, v5, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    iget-object p1, p0, Lcom/gpc/sdk/misc/b$b;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;

    .line 29
    invoke-static {v4, v3, v2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-interface {p1, v2, v0}, Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;)V

    return-void
.end method
