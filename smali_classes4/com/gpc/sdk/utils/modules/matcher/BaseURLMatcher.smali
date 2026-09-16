.class public abstract Lcom/gpc/sdk/utils/modules/matcher/BaseURLMatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseURLMatcher"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public URL()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/modules/matcher/BaseURLMatcher;->scheme()Lcom/gpc/sdk/utils/modules/matcher/scheme/IURLScheme;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/modules/matcher/BaseURLMatcher;->service()Lcom/gpc/sdk/utils/modules/matcher/service/IURLService;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/modules/matcher/BaseURLMatcher;->domain()Lcom/gpc/sdk/utils/modules/matcher/domain/IURLDomain;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/modules/matcher/BaseURLMatcher;->query()Lcom/gpc/sdk/utils/modules/matcher/query/IURLQuery;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Lcom/gpc/sdk/utils/modules/matcher/query/IURLQuery;->query()Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-interface {v0}, Lcom/gpc/sdk/utils/modules/matcher/scheme/IURLScheme;->scheme()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lcom/gpc/sdk/utils/modules/matcher/service/IURLService;->service()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Lcom/gpc/sdk/utils/modules/matcher/domain/IURLDomain;->domain()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const-string v0, "%s://%s.%s"

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseURLMatcher"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract domain()Lcom/gpc/sdk/utils/modules/matcher/domain/IURLDomain;
.end method

.method public query()Lcom/gpc/sdk/utils/modules/matcher/query/IURLQuery;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/utils/modules/matcher/query/EmptyQuery;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/matcher/query/EmptyQuery;-><init>()V

    return-object v0
.end method

.method public abstract scheme()Lcom/gpc/sdk/utils/modules/matcher/scheme/IURLScheme;
.end method

.method public abstract service()Lcom/gpc/sdk/utils/modules/matcher/service/IURLService;
.end method
