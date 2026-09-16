.class public Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "GPCPlayerRelationshipButton"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;
    .locals 4

    const-string v0, "id"

    const-string v1, "name"

    .line 1
    new-instance v2, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;

    invoke-direct {v2}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;->setLocalizedLabel(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;->setClickId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 11
    const-string v0, "GPCPlayerRelationshipButton"

    const-string v1, "fromJSONObject"

    invoke-static {v0, v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v2
.end method


# virtual methods
.method public getClickId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setClickId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;->b:Ljava/lang/String;

    return-void
.end method

.method public setLocalizedLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;->a:Ljava/lang/String;

    return-void
.end method
