.class public Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;
    }
.end annotation


# static fields
.field public static final SCENE_NAME:Ljava/lang/String; = "player_relationship"

.field public static final j:Ljava/lang/String; = "GPCPlayerRelationshipPanel"


# instance fields
.field public a:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipAwards;

.field public g:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;

.field public h:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;

.field public i:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;->Normal:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

    iput-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->a:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->e:Ljava/util/List;

    .line 31
    new-instance v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipAwards;

    invoke-direct {v0}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipAwards;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->f:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipAwards;

    .line 36
    new-instance v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;

    invoke-direct {v0}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->g:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;

    .line 41
    new-instance v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;

    invoke-direct {v0}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->h:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;

    .line 46
    new-instance v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;

    invoke-direct {v0}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->i:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;

    return-void
.end method

.method public static fromJSONString(Ljava/lang/String;)Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;
    .locals 9

    const-string v0, "button_info"

    const-string v1, "data"

    const-string v2, "scene"

    .line 1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rawNotice:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GPCPlayerRelationshipPanel"

    invoke-static {v4, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 3
    const-string p0, "Notice data empty."

    invoke-static {v4, p0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 8
    :cond_0
    :try_start_0
    new-instance v3, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;

    invoke-direct {v3}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;-><init>()V

    .line 9
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "player_relationship"

    .line 12
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 13
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 15
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 16
    const-string v1, "message_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->setMessageId(Ljava/lang/String;)V

    .line 18
    const-string v1, "content"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 19
    const-string v1, "text_title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->setLocalizedTitle(Ljava/lang/String;)V

    .line 20
    const-string v1, "text_description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->setLocalizedDescription(Ljava/lang/String;)V

    .line 21
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 23
    sget-object v1, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;->Normal:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

    invoke-virtual {v3, v1}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->setType(Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;)V

    goto :goto_0

    .line 25
    :cond_1
    sget-object v1, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;->NeedConfirm:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

    invoke-virtual {v3, v1}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->setType(Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;)V

    .line 28
    :goto_0
    const-string v1, "im_info"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "list"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 30
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_2

    .line 32
    invoke-virtual {v3}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->getIms()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;->fromJSONObject(Lorg/json/JSONObject;)Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 36
    :cond_2
    const-string v1, "award_info"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipAwards;->fromJSONObject(Lorg/json/JSONObject;)Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipAwards;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->setAwards(Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipAwards;)V

    .line 37
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "btn_never"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;->fromJSONObject(Lorg/json/JSONObject;)Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->setNeverButton(Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;)V

    .line 38
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "btn_think_over"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;->fromJSONObject(Lorg/json/JSONObject;)Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->setThinkOverButton(Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;)V

    .line 39
    const-string v0, "question_info"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;->fromJSONObject(Lorg/json/JSONObject;)Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->setQuestion(Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_3
    return-object v5

    :catch_0
    move-exception p0

    .line 47
    const-string v0, "fromJSONString"

    invoke-static {v4, v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v5
.end method


# virtual methods
.method public getAwards()Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipAwards;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->f:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipAwards;

    return-object v0
.end method

.method public getIms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->e:Ljava/util/List;

    return-object v0
.end method

.method public getLocalizedDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNeverButton()Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->h:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;

    return-object v0
.end method

.method public getQuestion()Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->g:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;

    return-object v0
.end method

.method public getThinkOverButton()Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->i:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;

    return-object v0
.end method

.method public getType()Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->a:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

    return-object v0
.end method

.method public setAwards(Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipAwards;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->f:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipAwards;

    return-void
.end method

.method public setIms(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->e:Ljava/util/List;

    return-void
.end method

.method public setLocalizedDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->d:Ljava/lang/String;

    return-void
.end method

.method public setLocalizedTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->c:Ljava/lang/String;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->b:Ljava/lang/String;

    return-void
.end method

.method public setNeverButton(Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->h:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;

    return-void
.end method

.method public setQuestion(Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->g:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipQuestion;

    return-void
.end method

.method public setThinkOverButton(Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->i:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipButton;

    return-void
.end method

.method public setType(Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;->a:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

    return-void
.end method
