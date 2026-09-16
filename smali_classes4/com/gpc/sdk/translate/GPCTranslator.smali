.class public Lcom/gpc/sdk/translate/GPCTranslator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "GPCTranslator"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/translate/GPCTranslator;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/translate/GPCTranslator;->a(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/translate/GPCTranslator;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/translate/GPCTranslator;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/translate/GPCTranslator;Lcom/gpc/sdk/translate/GPCTranslationSource;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/translate/GPCTranslator;->a(Lcom/gpc/sdk/translate/GPCTranslationSource;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/translate/GPCTranslator;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/translate/GPCTranslator;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/gpc/sdk/translate/GPCTranslator;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/translate/GPCTranslator;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/gpc/sdk/translate/GPCTranslator;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/translate/GPCTranslator;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;
    .locals 4

    .line 23
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "250104"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "250103"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-object p1

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCodeInteger()I

    move-result p1

    const/16 v2, 0xfa0

    if-eq p1, v2, :cond_4

    const/16 v2, 0x1770

    if-eq p1, v2, :cond_4

    const/16 v2, 0x1388

    const-string v3, "20"

    if-eq p1, v2, :cond_3

    const/16 v2, 0x1389

    if-eq p1, v2, :cond_2

    .line 49
    const-string p1, "250101"

    const-string v1, "10"

    invoke-static {p1, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    return-object p1

    .line 50
    :cond_2
    invoke-static {v1, v3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    return-object p1

    .line 51
    :cond_3
    invoke-static {v1, v3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    return-object p1

    .line 52
    :cond_4
    const-string p1, "250102"

    const-string v1, "32"

    invoke-static {p1, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/gpc/sdk/translate/GPCTranslationSource;)Ljava/lang/String;
    .locals 3

    .line 67
    const-string v0, "GPCTranslator"

    .line 0
    const-string v1, "texts:"

    .line 67
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 68
    invoke-virtual {p1}, Lcom/gpc/sdk/translate/GPCTranslationSource;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 72
    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final a(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/translate/GPCTranslationNamedSource;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "GPCTranslator"

    .line 53
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 54
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 56
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 57
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gpc/sdk/translate/GPCTranslationNamedSource;

    .line 58
    invoke-virtual {v5}, Lcom/gpc/sdk/translate/GPCTranslationNamedSource;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/gpc/sdk/translate/GPCTranslationNamedSource;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonArray.toString():"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 65
    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final a(Lcom/gpc/sdk/translate/GPCTranslationSource;ILcom/gpc/sdk/translate/GPCTranslatorListener;)V
    .locals 9

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/translate/GPCTranslator;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    const-string v0, "GPCTranslator"

    const-string v1, "targetLanguage is null, Did you call setSourceLanguage?"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    new-instance v2, Lcom/gpc/sdk/translate/GPCTranslator$a;

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/gpc/sdk/translate/GPCTranslator$a;-><init>(Lcom/gpc/sdk/translate/GPCTranslator;Ljava/lang/String;Lcom/gpc/sdk/translate/GPCTranslationSource;ILjava/util/List;Lcom/gpc/sdk/translate/GPCTranslatorListener;)V

    const-string p1, "GPCSDK_TRANSLATION"

    invoke-virtual {v0, p1, v2}, Lcom/gpc/sdk/account/GPCSession;->requestSSOTokenForWeb(Ljava/lang/String;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;)V

    return-void
.end method

.method public final a(Ljava/util/List;ILcom/gpc/sdk/translate/GPCTranslatorListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/translate/GPCTranslationNamedSource;",
            ">;I",
            "Lcom/gpc/sdk/translate/GPCTranslatorListener;",
            ")V"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/gpc/sdk/translate/GPCTranslator;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const-string v0, "GPCTranslator"

    const-string v1, "targetLanguage is null, Did you call setSourceLanguage?"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/gpc/sdk/translate/GPCTranslator;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/gpc/sdk/translate/GPCTranslator;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getTranslationService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/translate/service/TranslationService;

    move-result-object v4

    .line 22
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    new-instance v2, Lcom/gpc/sdk/translate/GPCTranslator$c;

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/gpc/sdk/translate/GPCTranslator$c;-><init>(Lcom/gpc/sdk/translate/GPCTranslator;Lcom/gpc/sdk/translate/service/TranslationService;Ljava/util/List;ILjava/util/List;Lcom/gpc/sdk/translate/GPCTranslatorListener;)V

    const-string p1, "GPCSDK_TRANSLATION"

    invoke-virtual {v0, p1, v2}, Lcom/gpc/sdk/account/GPCSession;->requestSSOTokenForWeb(Ljava/lang/String;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;)V

    return-void
.end method

.method public final b(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/translate/GPCTranslationSource;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 8
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 9
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/sdk/translate/GPCTranslationSource;

    .line 12
    invoke-virtual {v3}, Lcom/gpc/sdk/translate/GPCTranslationSource;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 16
    const-string v0, "GPCTranslator"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final b(Ljava/util/List;ILcom/gpc/sdk/translate/GPCTranslatorListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/translate/GPCTranslationSource;",
            ">;I",
            "Lcom/gpc/sdk/translate/GPCTranslatorListener;",
            ")V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/translate/GPCTranslator;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    const-string v0, "GPCTranslator"

    const-string v1, "targetLanguage is null, Did you call setSourceLanguage?"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/translate/GPCTranslator$b;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/gpc/sdk/translate/GPCTranslator$b;-><init>(Lcom/gpc/sdk/translate/GPCTranslator;Ljava/lang/String;Ljava/util/List;ILcom/gpc/sdk/translate/GPCTranslatorListener;)V

    const-string p1, "GPCSDK_TRANSLATION"

    invoke-virtual {v0, p1, v1}, Lcom/gpc/sdk/account/GPCSession;->requestSSOTokenForWeb(Ljava/lang/String;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;)V

    return-void
.end method

.method public getSourceLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/translate/GPCTranslator;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/translate/GPCTranslator;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/gpc/sdk/translate/GPCTranslator;->c:I

    if-nez v0, :cond_0

    const/16 v0, 0x1388

    .line 2
    iput v0, p0, Lcom/gpc/sdk/translate/GPCTranslator;->c:I

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/gpc/sdk/translate/GPCTranslator;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCTranslator"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lcom/gpc/sdk/translate/GPCTranslator;->c:I

    return v0
.end method

.method public refreshTranslateNamedTextsWithCount(Ljava/util/List;ILcom/gpc/sdk/translate/GPCTranslatorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/translate/GPCTranslationNamedSource;",
            ">;I",
            "Lcom/gpc/sdk/translate/GPCTranslatorListener;",
            ")V"
        }
    .end annotation

    if-gtz p2, :cond_0

    .line 1
    const-string v0, "GPCTranslator"

    const-string v1, "count is less than 0"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/sdk/translate/GPCTranslator;->a(Ljava/util/List;ILcom/gpc/sdk/translate/GPCTranslatorListener;)V

    return-void
.end method

.method public refreshTranslateTextWithCount(Lcom/gpc/sdk/translate/GPCTranslationSource;ILcom/gpc/sdk/translate/GPCTranslatorListener;)V
    .locals 2

    if-gtz p2, :cond_0

    .line 1
    const-string v0, "GPCTranslator"

    const-string v1, "count is less than 0"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/sdk/translate/GPCTranslator;->a(Lcom/gpc/sdk/translate/GPCTranslationSource;ILcom/gpc/sdk/translate/GPCTranslatorListener;)V

    return-void
.end method

.method public refreshTranslateTextsWithCount(Ljava/util/List;ILcom/gpc/sdk/translate/GPCTranslatorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/translate/GPCTranslationSource;",
            ">;I",
            "Lcom/gpc/sdk/translate/GPCTranslatorListener;",
            ")V"
        }
    .end annotation

    if-gtz p2, :cond_0

    .line 1
    const-string v0, "GPCTranslator"

    const-string v1, "count is less than 0"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/sdk/translate/GPCTranslator;->b(Ljava/util/List;ILcom/gpc/sdk/translate/GPCTranslatorListener;)V

    return-void
.end method

.method public setSourceLanguage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/translate/GPCTranslator;->a:Ljava/lang/String;

    return-void
.end method

.method public setTargetLanguage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/translate/GPCTranslator;->b:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/translate/GPCTranslator;->c:I

    return-void
.end method

.method public translateNamedTexts(Ljava/util/List;Lcom/gpc/sdk/translate/GPCTranslatorListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/translate/GPCTranslationNamedSource;",
            ">;",
            "Lcom/gpc/sdk/translate/GPCTranslatorListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/gpc/sdk/translate/GPCTranslator;->a(Ljava/util/List;ILcom/gpc/sdk/translate/GPCTranslatorListener;)V

    return-void
.end method

.method public translateText(Lcom/gpc/sdk/translate/GPCTranslationSource;Lcom/gpc/sdk/translate/GPCTranslatorListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/gpc/sdk/translate/GPCTranslator;->a(Lcom/gpc/sdk/translate/GPCTranslationSource;ILcom/gpc/sdk/translate/GPCTranslatorListener;)V

    return-void
.end method

.method public translateTexts(Ljava/util/List;Lcom/gpc/sdk/translate/GPCTranslatorListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/translate/GPCTranslationSource;",
            ">;",
            "Lcom/gpc/sdk/translate/GPCTranslatorListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/gpc/sdk/translate/GPCTranslator;->b(Ljava/util/List;ILcom/gpc/sdk/translate/GPCTranslatorListener;)V

    return-void
.end method
