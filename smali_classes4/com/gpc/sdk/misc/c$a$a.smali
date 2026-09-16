.class public Lcom/gpc/sdk/misc/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/misc/c$a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/c$a$a;->a:Lcom/gpc/sdk/misc/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBusinessError(ILorg/json/JSONObject;)V
    .locals 3

    const-string v0, "error"

    .line 1
    const-string v1, "320104"

    const-string v2, "10"

    invoke-static {v1, v2, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 5
    const-string v0, "message"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/error/GPCException;->suggestion(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 9
    const-string v0, "AgreementSigningServiceImplV2"

    const-string v1, ""

    invoke-static {v0, v1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/gpc/sdk/misc/c$a$a;->a:Lcom/gpc/sdk/misc/c$a;

    iget-object p2, p2, Lcom/gpc/sdk/misc/c$a;->d:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;)V

    return-void
.end method

.method public onFail(I)V
    .locals 3

    .line 1
    const-string v0, "320101"

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

    .line 6
    :cond_0
    const-string v0, "320103"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_1
    const-string v0, "320102"

    invoke-static {v0, v1, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/misc/c$a$a;->a:Lcom/gpc/sdk/misc/c$a;

    iget-object p1, p1, Lcom/gpc/sdk/misc/c$a;->d:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 14

    const-string v0, "checkboxes"

    const-string v1, "guardianVerification"

    const-string v2, "displayLabels"

    const-string v3, "policyIds"

    const-string v4, "popUpData"

    const-string v5, "consentedData"

    const-string v6, "policies"

    const-string v7, "data"

    .line 1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "checkAgreementsPendingSigning:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AgreementSigningServiceImplV2"

    invoke-static {v9, v8}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v8, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;

    invoke-direct {v8}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;-><init>()V

    const/4 v10, 0x2

    .line 3
    invoke-virtual {v8, v10}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setAgreementSigningStatusValue(I)V

    .line 5
    :try_start_0
    iget-object v10, p0, Lcom/gpc/sdk/misc/c$a$a;->a:Lcom/gpc/sdk/misc/c$a;

    iget-object v10, v10, Lcom/gpc/sdk/misc/c$a;->e:Lcom/gpc/sdk/misc/c;

    invoke-static {v10}, Lcom/gpc/sdk/misc/c;->c(Lcom/gpc/sdk/misc/c;)Lcom/gpc/sdk/misc/a;

    move-result-object v10

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/gpc/sdk/misc/a;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 7
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 10
    const-string v7, "popUp"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 11
    invoke-virtual {v8, v7}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setPopUp(I)V

    if-nez v7, :cond_0

    const/4 v7, 0x1

    .line 13
    invoke-virtual {v8, v7}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setAgreementSigningStatusValue(I)V

    .line 15
    :cond_0
    const-string v7, "popUpType"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setType(I)V

    .line 16
    const-string v7, "userRegion"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setUserRegion(Ljava/lang/String;)V

    .line 19
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 20
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_2

    .line 21
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v10, 0x0

    .line 22
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v10, v12, :cond_2

    .line 23
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 25
    invoke-virtual {v12}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 32
    new-instance v6, Lcom/gpc/sdk/agreementsigning/bean/GPCCacheConsents;

    invoke-direct {v6}, Lcom/gpc/sdk/agreementsigning/bean/GPCCacheConsents;-><init>()V

    .line 33
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 34
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 35
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 36
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 37
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_3

    .line 39
    invoke-virtual {v6}, Lcom/gpc/sdk/agreementsigning/bean/GPCCacheConsents;->getDisagrees()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 41
    :cond_3
    invoke-virtual {v6}, Lcom/gpc/sdk/agreementsigning/bean/GPCCacheConsents;->getAgrees()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    :cond_4
    invoke-virtual {v8, v6}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setConsents(Lcom/gpc/sdk/agreementsigning/bean/GPCCacheConsents;)V

    .line 48
    :cond_5
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 49
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 54
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    .line 55
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 56
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    .line 57
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    if-eqz v6, :cond_6

    .line 59
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 65
    :cond_7
    new-instance v3, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    invoke-direct {v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;-><init>()V

    .line 66
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 67
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 68
    invoke-static {v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object v3, v2

    .line 73
    :cond_8
    invoke-virtual {v3, v4}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->setAgreements(Ljava/util/List;)V

    .line 75
    invoke-virtual {v8, v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setAgreementSigningFile(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)V

    .line 78
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 79
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 80
    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;->createFromJsonObject(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;

    move-result-object v1

    .line 81
    invoke-virtual {v8, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setGuardianVerification(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;)V

    .line 85
    :cond_9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 88
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v11, v0, :cond_b

    .line 89
    invoke-virtual {p1, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 90
    invoke-static {v0, v7}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningOption;->createFromJsonObject(Lorg/json/JSONObject;Ljava/util/Map;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningOption;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 92
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 95
    :cond_b
    invoke-virtual {v8, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setAgreementOptions(Ljava/util/List;)V

    .line 99
    :cond_c
    iget-object p1, p0, Lcom/gpc/sdk/misc/c$a$a;->a:Lcom/gpc/sdk/misc/c$a;

    iget-object p1, p1, Lcom/gpc/sdk/misc/c$a;->d:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0, v8}, Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 102
    const-string v0, ""

    invoke-static {v9, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    const-string p1, "20"

    const/16 v0, 0x1389

    const-string v1, "320103"

    invoke-static {v1, p1, v0}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/gpc/sdk/misc/c$a$a;->a:Lcom/gpc/sdk/misc/c$a;

    iget-object v0, v0, Lcom/gpc/sdk/misc/c$a;->d:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;)V

    :cond_d
    return-void
.end method
