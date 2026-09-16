.class public final Lcom/gpc/sdk/misc/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/apprating/service/AppRatingService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/misc/e$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/gpc/sdk/misc/e$a;

.field public static final d:Ljava/lang/String;


# instance fields
.field public a:Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

.field public b:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/misc/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/misc/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/misc/e;->c:Lcom/gpc/sdk/misc/e$a;

    .line 1
    const-string v0, "AppRatingServiceAGImpl"

    sput-object v0, Lcom/gpc/sdk/misc/e;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;)V
    .locals 1

    const-string v0, "matcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/misc/e;->a:Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getService()Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    move-result-object p1

    const-string v0, "serviceFactory().service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gpc/sdk/misc/e;->b:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/misc/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static final a(Lcom/gpc/sdk/apprating/GPCFeedbackResultListener;Lcom/gpc/sdk/misc/e;Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    const-string p3, "code"

    const-string v0, "responseString:"

    const-string v1, "$listener"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p2

    const-string p3, "error.code"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/misc/e;->a(I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/gpc/sdk/apprating/GPCFeedbackResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 10
    :cond_0
    :try_start_0
    sget-object p2, Lcom/gpc/sdk/misc/e;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    const-string p4, "error"

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 13
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p4

    if-nez p4, :cond_1

    .line 14
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const-string p2, "noneException()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/gpc/sdk/apprating/GPCFeedbackResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 16
    :cond_1
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/misc/e;->a(I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/gpc/sdk/apprating/GPCFeedbackResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 19
    sget-object p2, Lcom/gpc/sdk/misc/e;->d:Ljava/lang/String;

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    const-string p1, "310203"

    const-string p2, "20"

    invoke-static {p1, p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const-string p2, "exception(\n             \u2026                        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {p0, p1}, Lcom/gpc/sdk/apprating/GPCFeedbackResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public static final a(Lcom/gpc/sdk/apprating/service/GPCAppRatingServiceListener;Lcom/gpc/sdk/misc/e;Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4

    const-string p3, "name"

    const-string v0, "code"

    const-string v1, "responseString:"

    const-string v2, "$listener"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$0"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {p2}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p2

    const-string p3, "error.code"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/misc/e;->b(I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 63
    invoke-interface {p0, p1, v3}, Lcom/gpc/sdk/apprating/service/GPCAppRatingServiceListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/apprating/GPCDistributorAppStore;)V

    return-void

    .line 71
    :cond_0
    :try_start_0
    sget-object p2, Lcom/gpc/sdk/misc/e;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    const-string p4, "error"

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    .line 74
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 75
    const-string p1, "data"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 76
    const-string p2, "store"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 78
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 79
    const-string p4, "bundle_id"

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 80
    const-string v0, "web_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    new-instance v0, Lcom/gpc/sdk/apprating/GPCDistributorAppStore;

    .line 83
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    const-string p3, "bundleId"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    const-string p3, "webURL"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {v0, p2, p4, p1}, Lcom/gpc/sdk/apprating/GPCDistributorAppStore;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const-string p2, "noneException()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, v0}, Lcom/gpc/sdk/apprating/service/GPCAppRatingServiceListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/apprating/GPCDistributorAppStore;)V

    return-void

    .line 95
    :cond_1
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/misc/e;->b(I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 96
    invoke-interface {p0, p1, v3}, Lcom/gpc/sdk/apprating/service/GPCAppRatingServiceListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/apprating/GPCDistributorAppStore;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 102
    sget-object p2, Lcom/gpc/sdk/misc/e;->d:Ljava/lang/String;

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    const-string p1, "310103"

    const-string p2, "20"

    invoke-static {p1, p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const-string p2, "exception(\n             \u2026                        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-interface {p0, p1, v3}, Lcom/gpc/sdk/apprating/service/GPCAppRatingServiceListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/apprating/GPCDistributorAppStore;)V

    return-void
.end method

.method public static final b()Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Language"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCIdsManager;->getUIID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-gpc-uiid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->getGuestDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-gpc-udid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final e()Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Language"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCIdsManager;->getUIID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-gpc-uiid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->getGuestDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-gpc-udid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/gpc/sdk/error/GPCException;
    .locals 4

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const/16 v1, 0xfa0

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1770

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1388

    const-string v2, "20"

    const-string v3, "310203"

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1389

    if-eq p1, v1, :cond_0

    .line 44
    const-string p1, "310201"

    const-string v1, "10"

    invoke-static {p1, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 47
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    return-object p1

    .line 48
    :cond_0
    invoke-static {v3, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 51
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    return-object p1

    .line 52
    :cond_1
    invoke-static {v3, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 55
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    return-object p1

    .line 56
    :cond_2
    const-string p1, "310202"

    const-string v1, "32"

    invoke-static {p1, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 59
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/appdist"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "builder.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/gpc/sdk/misc/e;->b:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    return-void
.end method

.method public final a(Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/misc/e;->a:Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    return-void
.end method

.method public final b(I)Lcom/gpc/sdk/error/GPCException;
    .locals 4

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const/16 v1, 0xfa0

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1770

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1388

    const-string v2, "20"

    const-string v3, "310103"

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1389

    if-eq p1, v1, :cond_0

    .line 21
    const-string p1, "310101"

    const-string v1, "10"

    invoke-static {p1, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    return-object p1

    .line 25
    :cond_0
    invoke-static {v3, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 27
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    return-object p1

    .line 28
    :cond_1
    invoke-static {v3, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 30
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    return-object p1

    .line 31
    :cond_2
    const-string p1, "310102"

    const-string v1, "32"

    invoke-static {p1, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 33
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/e;->a:Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    return-object v0
.end method

.method public final d()Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/e;->b:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    return-object v0
.end method

.method public feedback(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/apprating/GPCFeedbackResultListener;)V
    .locals 5

    const-string v0, "gid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "listener"

    invoke-static {p6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v2, Ljava/util/HashMap;

    .line 12
    const-string v4, "game_id"

    invoke-static {v4, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 13
    const-string v4, "user_id"

    invoke-static {v4, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    .line 14
    invoke-static {v0, p5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p5

    .line 15
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "star"

    invoke-static {v0, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    .line 16
    const-string v0, "timestamp"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 17
    const-string v1, "type_id"

    invoke-static {v1, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p4

    const/4 v1, 0x6

    new-array v1, v1, [Lkotlin/Pair;

    aput-object p1, v1, v3

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p5, v1, p1

    const/4 p1, 0x3

    aput-object p3, v1, p1

    const/4 p1, 0x4

    aput-object v0, v1, p1

    const/4 p1, 0x5

    aput-object p4, v1, p1

    .line 18
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 19
    invoke-direct {v2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 30
    new-instance p1, Lcom/gpc/util/HttpParamsSigner;

    invoke-direct {p1}, Lcom/gpc/util/HttpParamsSigner;-><init>()V

    invoke-virtual {p1, v2}, Lcom/gpc/util/HttpParamsSigner;->signByOrderAsc(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sign"

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object p1, p0, Lcom/gpc/sdk/misc/e;->b:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    .line 33
    new-instance p2, Lcom/gpc/sdk/misc/e$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/gpc/sdk/misc/e$$ExternalSyntheticLambda0;-><init>()V

    .line 34
    new-instance p3, Lcom/gpc/sdk/misc/e$$ExternalSyntheticLambda1;

    invoke-direct {p3, p6, p0}, Lcom/gpc/sdk/misc/e$$ExternalSyntheticLambda1;-><init>(Lcom/gpc/sdk/apprating/GPCFeedbackResultListener;Lcom/gpc/sdk/misc/e;)V

    const-string p4, "/report_center/report_info/score/do"

    invoke-interface {p1, p4, v2, p2, p3}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->postRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Necessary parameters cannot be empty!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestDistributorAppStore(Lcom/gpc/sdk/GPCConfiguration;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/apprating/service/GPCAppRatingServiceListener;)V
    .locals 3

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "gameId"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "distributor"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "listener"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient;

    invoke-direct {v0}, Lcom/gpc/sdk/service/request/general/LegacyServiceClient;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gpc/sdk/misc/e;->a:Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    invoke-interface {v2}, Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Lcom/gpc/sdk/misc/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/gpc/sdk/misc/e$$ExternalSyntheticLambda2;

    invoke-direct {p3}, Lcom/gpc/sdk/misc/e$$ExternalSyntheticLambda2;-><init>()V

    .line 4
    new-instance v1, Lcom/gpc/sdk/misc/e$$ExternalSyntheticLambda3;

    invoke-direct {v1, p4, p0}, Lcom/gpc/sdk/misc/e$$ExternalSyntheticLambda3;-><init>(Lcom/gpc/sdk/apprating/service/GPCAppRatingServiceListener;Lcom/gpc/sdk/misc/e;)V

    invoke-virtual {v0, p2, p1, p3, v1}, Lcom/gpc/sdk/service/request/general/LegacyServiceClient;->getRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    return-void
.end method
