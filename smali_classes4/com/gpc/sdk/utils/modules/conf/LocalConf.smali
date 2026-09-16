.class public Lcom/gpc/sdk/utils/modules/conf/LocalConf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalConf"

.field private static final VERSION:Ljava/lang/String; = "1"


# instance fields
.field private familyItem:Lcom/gpc/sdk/utils/modules/conf/FamilyItem;

.field private moduleItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem;

.field private systemItem:Lcom/gpc/sdk/utils/modules/conf/SystemItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJson(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/conf/LocalConf;
    .locals 7

    const-string v0, "module"

    const-string v1, "system"

    const-string v2, "family"

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "LocalConf"

    if-nez v3, :cond_4

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "create LocalConf ,json is : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {v3}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->verifyVersion(Lorg/json/JSONObject;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object v4

    .line 8
    :cond_0
    new-instance p0, Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    invoke-direct {p0}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;-><init>()V

    .line 9
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 10
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 11
    invoke-static {v2}, Lcom/gpc/sdk/utils/modules/conf/FamilyItem;->createFamily(Lorg/json/JSONObject;)Lcom/gpc/sdk/utils/modules/conf/FamilyItem;

    move-result-object v2

    iput-object v2, p0, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->familyItem:Lcom/gpc/sdk/utils/modules/conf/FamilyItem;

    .line 13
    :cond_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 14
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/gpc/sdk/utils/modules/conf/SystemItem;->createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/utils/modules/conf/SystemItem;

    move-result-object v1

    iput-object v1, p0, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->systemItem:Lcom/gpc/sdk/utils/modules/conf/SystemItem;

    .line 17
    :cond_2
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 18
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/utils/modules/conf/ModuleItem;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->moduleItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object p0

    :catch_0
    move-exception p0

    .line 23
    const-string v0, "JSONException"

    invoke-static {v5, v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 26
    :cond_4
    const-string p0, "json is null."

    invoke-static {v5, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v4
.end method

.method private static verifyVersion(Lorg/json/JSONObject;)Z
    .locals 7

    const-string v0, "version"

    const-string v1, "_"

    const-string v2, "LocalConf"

    const-string v3, "verifyVersion error;parse version:"

    const-string v4, "VERSION1 ;parse version: "

    const/4 v5, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    return v5

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v5

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 13
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception p0

    .line 17
    const-string v0, "verifyVersion JSONException"

    invoke-static {v2, v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v5
.end method


# virtual methods
.method public getAppConfDomain(Lcom/gpc/sdk/GPCSDKConstant$CDNType;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->moduleItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->getAppConf()Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->moduleItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->getAppConf()Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AppConfItem;->getUrls()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 5
    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public getFamilyItem()Lcom/gpc/sdk/utils/modules/conf/FamilyItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->familyItem:Lcom/gpc/sdk/utils/modules/conf/FamilyItem;

    return-object v0
.end method

.method public getModuleItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->moduleItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem;

    return-object v0
.end method

.method public getSystemItem()Lcom/gpc/sdk/utils/modules/conf/SystemItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->systemItem:Lcom/gpc/sdk/utils/modules/conf/SystemItem;

    return-object v0
.end method

.method public isFamilyConfDataError()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->familyItem:Lcom/gpc/sdk/utils/modules/conf/FamilyItem;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->systemItem:Lcom/gpc/sdk/utils/modules/conf/SystemItem;

    if-nez v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->moduleItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem;

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public setFamilyItem(Lcom/gpc/sdk/utils/modules/conf/FamilyItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->familyItem:Lcom/gpc/sdk/utils/modules/conf/FamilyItem;

    return-void
.end method

.method public setModuleItem(Lcom/gpc/sdk/utils/modules/conf/ModuleItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->moduleItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem;

    return-void
.end method

.method public setSystemItem(Lcom/gpc/sdk/utils/modules/conf/SystemItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->systemItem:Lcom/gpc/sdk/utils/modules/conf/SystemItem;

    return-void
.end method
