.class public Lcom/gpc/operations/migrate/service/interceptors/PreDebugInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/network/http/HTTPInterceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "PreDebugInterceptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptException(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V
    .locals 0

    return-void
.end method

.method public interceptRequest(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)V
    .locals 7

    .line 1
    const-string v0, "InterceptRequest"

    const-string v1, "PreDebugInterceptor"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/ConfigurationManager;->sharedInstance()Lcom/gpc/operations/migrate/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/ConfigurationManager;->configuration()Lcom/gpc/operations/migrate/Configuration;

    .line 3
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getPreDebugConfigManager()Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/preenv/PreDebugConfigManager;->getLocalConf()Lcom/gpc/operations/migrate/preenv/PreLocalConf;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/preenv/PreLocalConf;->getPreDebugProfile()Lcom/gpc/operations/migrate/preenv/PreDebugProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->getHttpRules()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 6
    const-string v2, "InterceptRequest excute"

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/preenv/PreLocalConf;->getPreDebugProfile()Lcom/gpc/operations/migrate/preenv/PreDebugProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->getHttpRules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/operations/migrate/preenv/HttpRule;

    .line 10
    :try_start_0
    invoke-virtual {v2}, Lcom/gpc/operations/migrate/preenv/HttpRule;->getRegex()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 12
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14
    const-string v3, "match.Success"

    invoke-static {v1, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2}, Lcom/gpc/operations/migrate/preenv/HttpRule;->getModifiedUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 16
    const-string v3, "!TextUtils.isEmpty(httpRule.getModifiedUrl())"

    invoke-static {v1, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2}, Lcom/gpc/operations/migrate/preenv/HttpRule;->getModifiedUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->changeUrl(Ljava/lang/String;)V

    .line 20
    :cond_1
    invoke-virtual {v2}, Lcom/gpc/operations/migrate/preenv/HttpRule;->getQuerys()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/gpc/operations/migrate/preenv/HttpRule;->getQuerys()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 21
    const-string v3, "httpRule.Querys != null && httpRule.Querys.Count > 0"

    invoke-static {v1, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2}, Lcom/gpc/operations/migrate/preenv/HttpRule;->getQuerys()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->appendQuery(Ljava/util/Map;Z)V

    .line 25
    :cond_2
    invoke-virtual {v2}, Lcom/gpc/operations/migrate/preenv/HttpRule;->getHeaders()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/gpc/operations/migrate/preenv/HttpRule;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 26
    const-string v3, "httpRule.Headers != null && httpRule.Headers.Count > 0"

    invoke-static {v1, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2}, Lcom/gpc/operations/migrate/preenv/HttpRule;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/gpc/operations/migrate/preenv/HttpRule;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;

    move-result-object v5

    invoke-virtual {v2}, Lcom/gpc/operations/migrate/preenv/HttpRule;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 36
    const-string v3, "InterceptRequest Match"

    invoke-static {v1, v3, v2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public interceptResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    .locals 0

    return-void
.end method

.method public priority()I
    .locals 1

    const/16 v0, 0x63

    return v0
.end method
