.class public Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/json/JSONObject;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;->a:Lorg/json/JSONObject;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;->b:Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 4
    const-string v0, "policies"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    const-string v2, "scenario"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    const-string v3, "policy"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    const-string v3, "strict"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;->b:Ljava/util/Map;

    sget-object v3, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;->Strict:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;->b:Ljava/util/Map;

    sget-object v3, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;->None:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getOriginData()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPolicy(Ljava/lang/String;)Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;->None:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;

    return-object p1
.end method
