.class public final Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGPCAgreementSigningController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GPCAgreementSigningController.kt\ncom/gpc/sdk/agreementsigning/GPCAgreementSigningController\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,163:1\n215#2,2:164\n*S KotlinDebug\n*F\n+ 1 GPCAgreementSigningController.kt\ncom/gpc/sdk/agreementsigning/GPCAgreementSigningController\n*L\n149#1:164,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController$Companion;

.field public static final h:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

.field public c:Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;

.field public d:Lcom/gpc/sdk/agreementsigning/service/AgreementSigningServiceV2;

.field public e:Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;

.field public final f:Lcom/gpc/util/LocalStorage;

.field public g:Lcom/gpc/sdk/misc/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->Companion:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController$Companion;

    .line 1
    const-string v0, "GPCAgreementSigningController"

    sput-object v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "informType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->a:Ljava/lang/String;

    .line 7
    new-instance p1, Lcom/gpc/util/LocalStorage;

    .line 8
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    sget-object v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->SIGNING_STATUS_PROFILE:Ljava/lang/String;

    .line 10
    invoke-direct {p1, v0, v1}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->f:Lcom/gpc/util/LocalStorage;

    .line 14
    new-instance p1, Lcom/gpc/sdk/misc/d;

    invoke-direct {p1}, Lcom/gpc/sdk/misc/d;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->g:Lcom/gpc/sdk/misc/d;

    return-void
.end method

.method public static final synthetic access$getAgreementSigningStateRecord$p(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;)Lcom/gpc/sdk/misc/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->g:Lcom/gpc/sdk/misc/d;

    return-object p0
.end method

.method public static final synthetic access$getGuardianVerification$p(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;)Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->e:Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;

    return-object p0
.end method

.method public static final synthetic access$getProxy$p(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;)Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    return-object p0
.end method

.method public static final synthetic access$getStorage$p(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;)Lcom/gpc/util/LocalStorage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->f:Lcom/gpc/util/LocalStorage;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 26
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "jsonObject.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 48
    :catch_0
    sget-object p1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->h:Ljava/lang/String;

    const-string v0, "map2JsonString error"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->a(Ljava/util/Map;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;

    invoke-direct {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;-><init>()V

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setAgreementSigningStatusValue(I)V

    .line 7
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const-string v1, "noneException()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;)V

    return-void
.end method

.method public final a(Ljava/util/Map;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->f:Lcom/gpc/util/LocalStorage;

    iget-object v3, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    invoke-static {v3}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->lastSigningTimestampKey(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/util/LocalStorage;->readLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "storage.readLong(lastSigningTimestampKey(proxy))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 9
    new-instance p1, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;

    invoke-direct {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;-><init>()V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setPopUp(I)V

    const/4 v0, 0x3

    .line 11
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setAgreementSigningStatusValue(I)V

    .line 13
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->g:Lcom/gpc/sdk/misc/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/misc/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setUserRegion(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const-string v1, "noneException()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;)V

    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->d:Lcom/gpc/sdk/agreementsigning/service/AgreementSigningServiceV2;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSession;->getWebSSOToken()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getDps()Ljava/util/List;

    move-result-object v3

    const-string v2, "getLocalConfigManager().dps"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const-string v4, ","

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v3, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController$requestStatus$1;

    invoke-direct {v3, p0, p2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController$requestStatus$1;-><init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V

    .line 22
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/gpc/sdk/agreementsigning/service/AgreementSigningServiceV2;->checkAgreementsPendingSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public final checkAgreementsPendingSigning(Ljava/util/Map;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->a(Ljava/util/Map;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V

    return-void
.end method

.method public final getInformType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final informAsap(Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->INFORM_TYPE_ASAP:Ljava/lang/String;

    const-string v1, "INFORM_TYPE_ASAP"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->a(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V

    return-void
.end method

.method public final informKindly(Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->INFORM_TYPE_KINDLY:Ljava/lang/String;

    const-string v1, "INFORM_TYPE_KINDLY"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->a(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V

    return-void
.end method

.method public final informMatches(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V
    .locals 1

    const-string v0, "inform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->a(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V

    return-void
.end method

.method public final setAgreementSigningCompatProxy(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    return-void
.end method

.method public final setAgreementSigningService(Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;)V
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->c:Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;

    return-void
.end method

.method public final setAgreementSigningServiceV2(Lcom/gpc/sdk/agreementsigning/service/AgreementSigningServiceV2;)V
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->d:Lcom/gpc/sdk/agreementsigning/service/AgreementSigningServiceV2;

    return-void
.end method

.method public final setGuardianVerification(Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->h:Ljava/lang/String;

    const-string v1, "setGuardianVerification"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->e:Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;

    return-void
.end method
