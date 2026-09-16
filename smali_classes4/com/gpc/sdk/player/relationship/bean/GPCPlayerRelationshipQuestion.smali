.class public Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "GPCPlayerRelationshipQuestion"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestionOption;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;->a:Ljava/util/List;

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;
    .locals 7

    const-string v0, "text_question_description"

    const-string v1, "list"

    .line 1
    new-instance v2, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;

    invoke-direct {v2}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 8
    iget-object v5, v2, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;->a:Ljava/util/List;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestionOption;->fromJSONObject(Lorg/json/JSONObject;)Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestionOption;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;->setLocalizedQuestionDescription(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 17
    const-string v0, "GPCPlayerRelationshipQuestion"

    const-string v1, "fromJSONObject"

    invoke-static {v0, v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v2
.end method


# virtual methods
.method public getLocalizedQuestionDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestionOption;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;->a:Ljava/util/List;

    return-object v0
.end method

.method public setLocalizedQuestionDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;->b:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestionOption;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;->a:Ljava/util/List;

    return-void
.end method
