.class public Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCUserBindingProfile"


# instance fields
.field private displayName:Ljava/lang/String;

.field private hasBound:Z

.field private key:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lorg/json/JSONObject;)Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;

    invoke-direct {v0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->setType(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->setHasBound(Z)V

    .line 5
    const-string v1, "key"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->setKey(Ljava/lang/String;)V

    .line 6
    const-string v1, "label"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {v0, p0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->setDisplayName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    const/4 v0, 0x0

    .line 11
    :goto_0
    const-string v1, "GPCUserBindingProfile"

    const-string v2, ""

    invoke-static {v1, v2, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isHasBound()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->hasBound:Z

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setHasBound(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->hasBound:Z

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->key:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->type:Ljava/lang/String;

    return-void
.end method
