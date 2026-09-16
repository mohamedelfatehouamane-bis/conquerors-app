.class public Lcom/gpc/sdk/misc/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/translate/service/TranslationService;


# static fields
.field public static final e:Ljava/lang/String; = "TranslationServiceAGImp"


# instance fields
.field public a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/misc/v;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/misc/v;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/gpc/sdk/misc/v;->d:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getService()Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/misc/v;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/translate/service/TranslateForNameTextsListener;ILcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 8

    const-string p3, "t"

    const-string v0, "20"

    const-string v1, "p"

    const-string v2, "l"

    .line 37
    invoke-virtual {p2}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-interface {p0, p2}, Lcom/gpc/sdk/translate/service/TranslateForNameTextsListener;->onFailed(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 43
    :cond_0
    :try_start_0
    invoke-static {p4}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p2

    .line 44
    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->isSuccess()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 45
    new-instance p4, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 48
    invoke-virtual {p4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 49
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 51
    invoke-virtual {p4, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 52
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 53
    invoke-virtual {v5, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 54
    invoke-virtual {v6, p3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 56
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 57
    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_1
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 60
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_2
    invoke-virtual {p2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 66
    :cond_3
    invoke-interface {p0, p2}, Lcom/gpc/sdk/translate/service/TranslateForNameTextsListener;->onTranslated(Ljava/util/HashMap;)V

    return-void

    .line 68
    :cond_4
    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->createException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 69
    invoke-virtual {p2}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 70
    const-string p3, "250104"

    invoke-static {p3, v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    .line 71
    invoke-virtual {p3, p2}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 72
    invoke-interface {p0, p2}, Lcom/gpc/sdk/translate/service/TranslateForNameTextsListener;->onFailed(Lcom/gpc/sdk/error/GPCException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 75
    const-string p3, "TranslationServiceAGImp"

    const-string p4, ""

    invoke-static {p3, p4, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    const-string p2, "250103"

    invoke-static {p2, v0, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/gpc/sdk/translate/service/TranslateForNameTextsListener;->onFailed(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/translate/service/TranslateListener;ILcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 7

    const-string p3, "t"

    const-string v0, "20"

    const-string v1, "p"

    const-string v2, "l"

    .line 1
    invoke-virtual {p2}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    invoke-interface {p0, p2}, Lcom/gpc/sdk/translate/service/TranslateListener;->onFailed(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p4}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->isSuccess()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 9
    new-instance p4, Lorg/json/JSONArray;

    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 11
    :goto_0
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 12
    invoke-virtual {p4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 13
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-virtual {v4, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-virtual {v5, p3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 17
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 21
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_2
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26
    :cond_3
    invoke-interface {p0, p2}, Lcom/gpc/sdk/translate/service/TranslateListener;->onTranslated(Ljava/util/List;)V

    return-void

    .line 28
    :cond_4
    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->createException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 29
    invoke-virtual {p2}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 30
    const-string p3, "250104"

    invoke-static {p3, v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    .line 31
    invoke-virtual {p3, p2}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 32
    invoke-interface {p0, p2}, Lcom/gpc/sdk/translate/service/TranslateListener;->onFailed(Lcom/gpc/sdk/error/GPCException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 35
    const-string p3, "TranslationServiceAGImp"

    const-string p4, ""

    invoke-static {p3, p4, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    const-string p2, "250103"

    invoke-static {p2, v0, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/gpc/sdk/translate/service/TranslateListener;->onFailed(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    const-string v1, "sso_token"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "retries"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string p1, "version"

    const-string p2, "3"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object p1, p0, Lcom/gpc/sdk/misc/v;->b:Ljava/lang/String;

    const-string p2, "game_id"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object p1, p0, Lcom/gpc/sdk/misc/v;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/gpc/sdk/misc/v;->c:Ljava/lang/String;

    const-string p2, "source"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/misc/v;->d:Ljava/lang/String;

    const-string p2, "target"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public translate(Ljava/lang/String;Ljava/lang/String;IIILcom/gpc/sdk/translate/service/TranslateListener;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/gpc/sdk/misc/v;->a(Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4
    const-string p1, "texts"

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v7, Lcom/gpc/sdk/misc/v$$ExternalSyntheticLambda1;

    invoke-direct {v7, p6, p5}, Lcom/gpc/sdk/misc/v$$ExternalSyntheticLambda1;-><init>(Lcom/gpc/sdk/translate/service/TranslateListener;I)V

    .line 46
    iget-object v0, p0, Lcom/gpc/sdk/misc/v;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    new-instance v6, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;

    invoke-direct {v6}, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;-><init>()V

    const-string v1, "/common/translation/get"

    const/16 v4, 0x3a98

    move v5, p4

    invoke-interface/range {v0 .. v7}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->postRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    return-void
.end method

.method public translateForNameTexts(Ljava/lang/String;Ljava/lang/String;IIILcom/gpc/sdk/translate/service/TranslateForNameTextsListener;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/gpc/sdk/misc/v;->a(Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4
    const-string p1, "texts"

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v7, Lcom/gpc/sdk/misc/v$$ExternalSyntheticLambda0;

    invoke-direct {v7, p6, p5}, Lcom/gpc/sdk/misc/v$$ExternalSyntheticLambda0;-><init>(Lcom/gpc/sdk/translate/service/TranslateForNameTextsListener;I)V

    .line 50
    iget-object v0, p0, Lcom/gpc/sdk/misc/v;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    new-instance v6, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;

    invoke-direct {v6}, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;-><init>()V

    const-string v1, "/common/translation/get"

    const/16 v4, 0x3a98

    move v5, p4

    invoke-interface/range {v0 .. v7}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->postRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    return-void
.end method
