.class public Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/String; = "GPCPlayerRelationshipIM"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

.field public g:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;

.field public h:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;
    .locals 10

    const-string v0, "btn_link"

    const-string v1, "btn_copy"

    const-string v2, "link"

    const-string v3, "official_account"

    const-string v4, "type"

    const-string v5, "text_copy_success"

    const-string v6, "text_official_account"

    const-string v7, "icon"

    .line 1
    new-instance v8, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;

    invoke-direct {v8}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 4
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->setIconURL(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 8
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->setLocalizedOfficialAccountLabel(Ljava/lang/String;)V

    .line 11
    :cond_1
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 12
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->setLocalizedCopySuccessLabel(Ljava/lang/String;)V

    .line 15
    :cond_2
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 16
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    goto :goto_0

    .line 25
    :cond_3
    sget-object v4, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;->Both:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

    invoke-virtual {v8, v4}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->setImStyle(Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;)V

    goto :goto_0

    .line 26
    :cond_4
    sget-object v4, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;->Link:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

    invoke-virtual {v8, v4}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->setImStyle(Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;)V

    goto :goto_0

    .line 27
    :cond_5
    sget-object v4, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;->Copy:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

    invoke-virtual {v8, v4}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->setImStyle(Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;)V

    .line 39
    :cond_6
    :goto_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 40
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->setOfficialAccount(Ljava/lang/String;)V

    .line 43
    :cond_7
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 44
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->setOfficialAccountUrl(Ljava/lang/String;)V

    .line 47
    :cond_8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 48
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;->fromJSONObject(Lorg/json/JSONObject;)Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->setCopyButton(Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;)V

    .line 51
    :cond_9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 52
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;->fromJSONObject(Lorg/json/JSONObject;)Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;

    move-result-object p0

    invoke-virtual {v8, p0}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->setOfficialAccountButton(Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    move-exception p0

    .line 55
    const-string v0, "GPCPlayerRelationshipIM"

    const-string v1, "fromJSONObject"

    invoke-static {v0, v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    return-object v8
.end method


# virtual methods
.method public getCopyButton()Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->g:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;

    return-object v0
.end method

.method public getIconURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getImStyle()Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->f:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

    return-object v0
.end method

.method public getLocalizedCopySuccessLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedOfficialAccountLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficialAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficialAccountButton()Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->h:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;

    return-object v0
.end method

.method public getOfficialAccountUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setCopyButton(Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->g:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;

    return-void
.end method

.method public setIconURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->a:Ljava/lang/String;

    return-void
.end method

.method public setImStyle(Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->f:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

    return-void
.end method

.method public setLocalizedCopySuccessLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->c:Ljava/lang/String;

    return-void
.end method

.method public setLocalizedOfficialAccountLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->b:Ljava/lang/String;

    return-void
.end method

.method public setOfficialAccount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->d:Ljava/lang/String;

    return-void
.end method

.method public setOfficialAccountButton(Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->h:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;

    return-void
.end method

.method public setOfficialAccountUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->e:Ljava/lang/String;

    return-void
.end method
