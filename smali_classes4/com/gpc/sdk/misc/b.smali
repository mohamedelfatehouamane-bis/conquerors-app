.class public final Lcom/gpc/sdk/misc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/misc/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAgreementSigningServiceAGImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AgreementSigningServiceAGImpl.kt\ncom/gpc/sdk/agreementsigning/service/AgreementSigningServiceAGImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,727:1\n288#2,2:728\n*S KotlinDebug\n*F\n+ 1 AgreementSigningServiceAGImpl.kt\ncom/gpc/sdk/agreementsigning/service/AgreementSigningServiceAGImpl\n*L\n512#1:728,2\n*E\n"
.end annotation


# static fields
.field public static final c:Lcom/gpc/sdk/misc/b$a;

.field public static final d:Ljava/lang/String; = "GPCAgreementSigning"


# instance fields
.field public a:Lcom/gpc/sdk/service/request/client/IServiceClient;

.field public b:Lcom/gpc/sdk/service/request/client/IServiceClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/misc/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/misc/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/misc/b;->c:Lcom/gpc/sdk/misc/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getApiGatewayCacheClient()Lcom/gpc/sdk/service/request/client/IServiceClient;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/misc/b;->b:Lcom/gpc/sdk/service/request/client/IServiceClient;

    return-void
.end method

.method public static final synthetic a(Lcom/gpc/sdk/misc/b;Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/misc/b;->e(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;
    .locals 7

    const-string v0, "style"

    const-string v1, "GPCAgreementSigning"

    const-string v2, "agreementJSONObject"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    invoke-direct {v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;-><init>()V

    .line 5
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->setId(I)V

    .line 6
    const-string v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->setTitle(Ljava/lang/String;)V

    .line 7
    const-string v3, "type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->setType(I)V

    .line 8
    const-string v3, "typeLabel"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->setLocalizedName(Ljava/lang/String;)V

    .line 9
    const-string v3, "version"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->setVersion(Ljava/lang/String;)V

    .line 13
    :cond_0
    const-string v3, "showInSettingPage"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    .line 14
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->setShowInSettingPage(Z)V

    .line 17
    :cond_2
    const-string v3, "innerVersion"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 18
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->setInnerVersion(I)V

    .line 20
    :cond_3
    const-string v3, "url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->setUrl(Ljava/lang/String;)V

    .line 22
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 26
    :try_start_1
    const-string v0, "bold"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lt v0, v6, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    .line 28
    :catch_0
    :try_start_2
    const-string v0, "createAgreement remote bold is error."

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 32
    :goto_2
    :try_start_3
    const-string v3, "italic"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-lt v3, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    .line 34
    :catch_1
    :try_start_4
    const-string v3, "createAgreement remote italic is error."

    invoke-static {v1, v3}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 38
    :cond_5
    :goto_3
    :try_start_5
    const-string v3, "color"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 40
    :catch_2
    :try_start_6
    const-string p1, "createAgreement remote color is error."

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 42
    :goto_4
    new-instance v3, Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;

    invoke-direct {v3, v0, v5, p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;-><init>(ZZLjava/lang/String;)V

    .line 43
    invoke-virtual {v2, v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->setPolicyTextStyle(Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 46
    :catch_3
    const-string p1, "createAgreement remote style is error."

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_5
    return-object v2
.end method

.method public final a()Lcom/gpc/sdk/service/request/client/IServiceClient;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/misc/b;->b:Lcom/gpc/sdk/service/request/client/IServiceClient;

    return-object v0
.end method

.method public final a(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;)Ljava/lang/String;
    .locals 2

    const-string v0, "agreement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"id\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\"version\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"innerVersion\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getInnerVersion()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sb.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "agreements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    .line 52
    invoke-virtual {p0, v3}, Lcom/gpc/sdk/misc/b;->a(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    .line 54
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_1
    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sb.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lcom/gpc/sdk/service/request/client/IServiceClient;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/gpc/sdk/misc/b;->b:Lcom/gpc/sdk/service/request/client/IServiceClient;

    return-void
.end method

.method public final b(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSignedFile;
    .locals 7

    .line 2
    new-instance v0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSignedFile;

    invoke-direct {v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSignedFile;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 4
    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    const-string v3, "popupPolicies"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_3

    const/4 v5, 0x0

    .line 9
    :goto_2
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 11
    invoke-virtual {p0, v6}, Lcom/gpc/sdk/misc/b;->a(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eq v5, v4, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->setAgreements(Ljava/util/List;)V

    if-eqz p1, :cond_4

    .line 17
    const-string v1, "displayLabels"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_5

    .line 19
    const-string p1, "popupTitle"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->setLocalizedTitle(Ljava/lang/String;)V

    .line 20
    const-string p1, "popupMessage"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->setLocalizedCaption(Ljava/lang/String;)V

    .line 21
    const-string p1, "labelOfAgreeButton"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->setLocalizedActionSign(Ljava/lang/String;)V

    .line 22
    const-string p1, "labelOfDisAgreeButton"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 23
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSignedFile;->setLocalizedActionRefuse(Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method public final b()Lcom/gpc/sdk/service/request/client/IServiceClient;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/gpc/sdk/misc/b;->a:Lcom/gpc/sdk/service/request/client/IServiceClient;

    if-eqz v0, :cond_0

    return-object v0

    .line 25
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceClient()Lcom/gpc/sdk/service/request/client/IServiceClient;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/misc/b;->a:Lcom/gpc/sdk/service/request/client/IServiceClient;

    return-object v0
.end method

.method public final b(Lcom/gpc/sdk/service/request/client/IServiceClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/b;->a:Lcom/gpc/sdk/service/request/client/IServiceClient;

    return-void
.end method

.method public final c(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    new-instance v2, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;

    invoke-direct {v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;-><init>()V

    .line 3
    new-instance v3, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    invoke-direct {v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;-><init>()V

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    .line 5
    const-string v6, "data"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 6
    const-string v6, "policies"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x1

    if-eqz v1, :cond_2

    .line 8
    const-string v8, "popupType"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x1

    .line 9
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "createAgreementSigningStatusFromResponse popupType is:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "GPCAgreementSigning"

    invoke-static {v10, v9}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    if-eqz v6, :cond_4

    .line 12
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    sub-int/2addr v10, v7

    if-ltz v10, :cond_4

    const/4 v7, 0x0

    .line 14
    :goto_3
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 16
    invoke-virtual {v0, v11}, Lcom/gpc/sdk/misc/b;->a(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eq v7, v10, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 20
    :cond_4
    invoke-virtual {v3, v4}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->setAgreements(Ljava/util/List;)V

    if-eqz v1, :cond_5

    .line 23
    const-string v6, "displayLabels"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_6

    .line 25
    const-string v7, "popupTitle"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->setLocalizedTitle(Ljava/lang/String;)V

    .line 26
    const-string v7, "popupMessage"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->setLocalizedCaption(Ljava/lang/String;)V

    .line 27
    const-string v7, "labelOfAgreeButton"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->setLocalizedActionSign(Ljava/lang/String;)V

    .line 28
    const-string v7, "labelOfAgreeAllPoliciesWithOneClick"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->setLocalizedAgreeAllPolicies(Ljava/lang/String;)V

    :cond_6
    const/4 v6, 0x2

    if-ne v8, v6, :cond_e

    if-eqz v1, :cond_7

    .line 33
    const-string v7, "guardianVerification"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    .line 34
    :goto_5
    invoke-virtual {v0, v7}, Lcom/gpc/sdk/misc/b;->e(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;

    move-result-object v7

    if-eqz v1, :cond_8

    .line 36
    const-string v10, "policyCheckboxes"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    .line 37
    :goto_6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_d

    .line 39
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    :goto_7
    if-ge v9, v11, :cond_d

    .line 40
    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 41
    new-instance v13, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningOption;

    invoke-direct {v13}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningOption;-><init>()V

    .line 42
    const-string v14, "label"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningOption;->setLabel(Ljava/lang/String;)V

    .line 43
    const-string v14, "required"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningOption;->setRequired(I)V

    .line 45
    const-string v14, "policyIds"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 46
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 47
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v15

    const-string v5, "policyIdsJO.keys()"

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 48
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 265
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v17

    check-cast v18, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    .line 266
    invoke-virtual/range {v18 .. v18}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getId()I

    move-result v0

    if-ne v0, v6, :cond_9

    goto :goto_a

    :cond_9
    move-object/from16 v0, p0

    goto :goto_9

    :cond_a
    const/16 v17, 0x0

    :goto_a
    move-object/from16 v0, v17

    check-cast v0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    if-eqz v0, :cond_b

    .line 267
    const-string v6, "key"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v14, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    move-object/from16 v0, p0

    const/4 v6, 0x2

    goto :goto_8

    .line 270
    :cond_c
    invoke-virtual {v13, v14}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningOption;->setVariables(Ljava/util/HashMap;)V

    .line 271
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    const/4 v6, 0x2

    goto :goto_7

    .line 274
    :cond_d
    invoke-virtual {v2, v10}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setAgreementOptions(Ljava/util/List;)V

    .line 275
    invoke-virtual {v2, v7}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setGuardianVerification(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;)V

    :cond_e
    const/4 v0, 0x2

    .line 278
    invoke-virtual {v2, v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setAgreementSigningStatusValue(I)V

    .line 279
    invoke-virtual {v2, v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setAgreementSigningFile(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)V

    .line 280
    invoke-virtual {v2, v8}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setType(I)V

    return-object v2
.end method

.method public final c()Lcom/gpc/sdk/service/request/client/IServiceClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/b;->a:Lcom/gpc/sdk/service/request/client/IServiceClient;

    return-object v0
.end method

.method public final d(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;

    invoke-direct {v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    const-string v1, "displayLabels"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 6
    const-string p1, "popupTitle"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;->setLocalizedTitle(Ljava/lang/String;)V

    .line 7
    const-string p1, "popupConfirmDisagreeMessage"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;->setLocalizedCaption(Ljava/lang/String;)V

    .line 8
    const-string p1, "labelOfAgreeButtonInConfirmation"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;->setLocalizedActionDismiss(Ljava/lang/String;)V

    .line 9
    const-string p1, "labelOfDisagreeButtonInConfirmation"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementTerminationAlert;->setLocalizedActionTerminate(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public final e(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;
    .locals 8

    .line 1
    new-instance v0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;

    invoke-direct {v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    new-instance v1, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationAboveAdolescence;

    invoke-direct {v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationAboveAdolescence;-><init>()V

    .line 4
    new-instance v2, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;

    invoke-direct {v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;-><init>()V

    .line 6
    const-string v3, "aboveAdolescence"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 7
    const-string v4, "label"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationAboveAdolescence;->setLabel(Ljava/lang/String;)V

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "createGuardianVerification aboveAdolescence.label is:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationAboveAdolescence;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GPCAgreementSigning"

    invoke-static {v6, v5}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationAboveAdolescence;->setValue(I)V

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "createGuardianVerification aboveAdolescence.value is:"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationAboveAdolescence;->getValue()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v3, "childhood"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->setLabel(Ljava/lang/String;)V

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createGuardianVerification childhood.label is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->setValue(I)V

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createGuardianVerification childhood.value is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->getValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v3, "url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->setUrl(Ljava/lang/String;)V

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createGuardianVerification childhood.url is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v3, "status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->setStatus(I)V

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "createGuardianVerification childhood.status is:"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->getStatus()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;->setAboveAdolescence(Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationAboveAdolescence;)V

    .line 23
    invoke-virtual {v0, v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;->setChildhood(Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;)V

    :cond_0
    return-object v0
.end method

.method public requestAssignedAgreementsForSetting(Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/misc/b;->b()Lcom/gpc/sdk/service/request/client/IServiceClient;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/gpc/sdk/misc/b$b;

    invoke-direct {v1, p1, p0}, Lcom/gpc/sdk/misc/b$b;-><init>(Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;Lcom/gpc/sdk/misc/b;)V

    const-string p1, "/ums/policy/policies"

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v2, v1}, Lcom/gpc/sdk/service/request/client/IServiceClient;->get(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;)V

    :cond_0
    return-void
.end method

.method public requestAssignedAgreementsForSigned(Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/misc/b;->b()Lcom/gpc/sdk/service/request/client/IServiceClient;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/gpc/sdk/misc/b$c;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/misc/b$c;-><init>(Lcom/gpc/sdk/misc/b;Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;)V

    const-string p1, "/ums/policy/popup_in_setting_page"

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v2, v1}, Lcom/gpc/sdk/service/request/client/IServiceClient;->get(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;)V

    :cond_0
    return-void
.end method

.method public requestGuardianVerificationState(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sso_token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/misc/b;->b:Lcom/gpc/sdk/service/request/client/IServiceClient;

    if-eqz p1, :cond_2

    new-instance v1, Lcom/gpc/sdk/misc/b$d;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/misc/b$d;-><init>(Lcom/gpc/sdk/misc/b;Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;)V

    const-string p2, "/ums/policy/get_guardian_verification_state"

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v2, v1}, Lcom/gpc/sdk/service/request/client/IServiceClient;->get(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;)V

    :cond_2
    return-void
.end method

.method public requestStatus(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const-string v1, "sso_token"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/misc/b;->b()Lcom/gpc/sdk/service/request/client/IServiceClient;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/gpc/sdk/misc/b$e;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/misc/b$e;-><init>(Lcom/gpc/sdk/misc/b;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V

    const-string p2, "/ums/policy/has_agreed"

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v2, v1}, Lcom/gpc/sdk/service/request/client/IServiceClient;->get(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;)V

    :cond_0
    return-void
.end method

.method public sign(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            ">;",
            "Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;",
            ")V"
        }
    .end annotation

    const-string v0, "agreements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const-string v1, "sso_token"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/gpc/sdk/misc/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "policies"

    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3
    invoke-virtual {p0}, Lcom/gpc/sdk/misc/b;->b()Lcom/gpc/sdk/service/request/client/IServiceClient;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lcom/gpc/sdk/misc/b$f;

    invoke-direct {p2, p3}, Lcom/gpc/sdk/misc/b$f;-><init>(Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V

    const-string p3, "/ums/policy/agree"

    const/4 v1, 0x0

    invoke-interface {p1, p3, v0, v1, p2}, Lcom/gpc/sdk/service/request/client/IServiceClient;->get(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;)V

    :cond_0
    return-void
.end method

.method public signKRSpecialConditions(Ljava/lang/String;Ljava/util/List;ILcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            ">;I",
            "Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;",
            ")V"
        }
    .end annotation

    const-string v0, "agreements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sso_token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/misc/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "policies"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "guardian_verification"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/gpc/sdk/misc/b;->b()Lcom/gpc/sdk/service/request/client/IServiceClient;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lcom/gpc/sdk/misc/b$g;

    invoke-direct {p2, p4}, Lcom/gpc/sdk/misc/b$g;-><init>(Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V

    const-string p3, "/ums/policy/agree"

    const/4 p4, 0x0

    invoke-interface {p1, p3, v0, p4, p2}, Lcom/gpc/sdk/service/request/client/IServiceClient;->get(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;)V

    :cond_0
    return-void
.end method

.method public terminate(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;)V
    .locals 3

    const-string v0, "ssoToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const-string v1, "sso_token"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3
    invoke-virtual {p0}, Lcom/gpc/sdk/misc/b;->b()Lcom/gpc/sdk/service/request/client/IServiceClient;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/gpc/sdk/misc/b$h;

    invoke-direct {v1, p2}, Lcom/gpc/sdk/misc/b$h;-><init>(Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;)V

    const-string p2, "/ums/policy/disagree"

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v2, v1}, Lcom/gpc/sdk/service/request/client/IServiceClient;->get(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;)V

    :cond_0
    return-void
.end method
