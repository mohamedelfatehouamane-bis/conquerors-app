.class public Lcom/gpc/sdk/misc/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/c;->restoreAssignedAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;

.field public final synthetic b:Lcom/gpc/sdk/misc/c;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/c;Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/c$c;->b:Lcom/gpc/sdk/misc/c;

    iput-object p2, p0, Lcom/gpc/sdk/misc/c$c;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    const-string v0, "checkboxes"

    const-string v1, "displayLabels"

    const-string v2, "policyIds"

    const-string v3, "popUpDataForSettingPage"

    const-string v4, "policies"

    const-string v5, "data"

    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gpc/sdk/account/GPCSessionManager;->restoreAsCurrent()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 2
    invoke-virtual {v6}, Lcom/gpc/sdk/account/GPCSession;->isValid()Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 7
    :cond_0
    iget-object v7, p0, Lcom/gpc/sdk/misc/c$c;->b:Lcom/gpc/sdk/misc/c;

    invoke-static {v7}, Lcom/gpc/sdk/misc/c;->c(Lcom/gpc/sdk/misc/c;)Lcom/gpc/sdk/misc/a;

    move-result-object v7

    invoke-virtual {v6}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/gpc/sdk/misc/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 9
    iget-object v6, p0, Lcom/gpc/sdk/misc/c$c;->b:Lcom/gpc/sdk/misc/c;

    invoke-static {v6}, Lcom/gpc/sdk/misc/c;->c(Lcom/gpc/sdk/misc/c;)Lcom/gpc/sdk/misc/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gpc/sdk/misc/a;->c()Ljava/lang/String;

    move-result-object v6

    .line 11
    :cond_1
    new-instance v7, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;

    invoke-direct {v7}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;-><init>()V

    .line 13
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 15
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 19
    const-string v6, "popUpTypeForSettingPage"

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 20
    invoke-virtual {v7, v6}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;->setType(I)V

    .line 21
    const-string v8, "userRegion"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;->setUserRegion(Ljava/lang/String;)V

    .line 24
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 25
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    .line 26
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v9, 0x0

    .line 27
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v9, v11, :cond_3

    .line 28
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-static {v11}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 30
    invoke-virtual {v11}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 37
    :cond_3
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 38
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 43
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v5, 0x0

    .line 44
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_5

    .line 45
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v9

    .line 46
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    if-eqz v9, :cond_4

    .line 48
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 54
    :cond_5
    new-instance v2, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    invoke-direct {v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;-><init>()V

    .line 55
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 56
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    move-result-object v5

    if-eqz v5, :cond_6

    move-object v2, v5

    .line 61
    :cond_6
    const-string v5, "labelForEntryBtn"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;->setLocalizedForEntryBtn(Ljava/lang/String;)V

    .line 63
    :cond_7
    invoke-virtual {v2, v4}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->setAgreements(Ljava/util/List;)V

    .line 65
    invoke-virtual {v7, v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;->setAgreementSigningFile(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)V

    const/4 v1, 0x2

    if-ne v6, v1, :cond_a

    .line 67
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 72
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v10, v2, :cond_9

    .line 73
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 74
    invoke-static {v2, v8}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningOption;->createFromJsonObject(Lorg/json/JSONObject;Ljava/util/Map;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningOption;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 76
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 79
    :cond_9
    invoke-virtual {v7, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;->setAgreementOptions(Ljava/util/List;)V

    .line 83
    :cond_a
    iget-object v0, p0, Lcom/gpc/sdk/misc/c$c;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;

    const/4 v1, 0x0

    invoke-interface {v0, v7, v1, v1}, Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;->onSuccess(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 84
    :cond_b
    :goto_3
    const-string v0, "320702"

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/gpc/sdk/misc/c$c;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;

    invoke-interface {v1, v0}, Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 166
    const-string v1, "AgreementSigningServiceImplV2"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    iget-object v0, p0, Lcom/gpc/sdk/misc/c$c;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;

    const-string v1, "320701"

    invoke-static {v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
