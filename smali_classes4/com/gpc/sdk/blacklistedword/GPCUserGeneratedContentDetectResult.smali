.class public Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult$GPCUserGeneratedContentDetectResultDetail;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String; = "GPCUserGeneratedContentDetectResult"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentDetectSuggestion;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult$GPCUserGeneratedContentDetectResultDetail;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDataId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult$GPCUserGeneratedContentDetectResultDetail;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->h:Ljava/util/List;

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getQueueTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRawData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getScenario()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestion()Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentDetectSuggestion;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->g:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentDetectSuggestion;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->c:Ljava/lang/String;

    return-void
.end method

.method public setDataId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->e:Ljava/lang/String;

    return-void
.end method

.method public setDataType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->f:Ljava/lang/String;

    return-void
.end method

.method public setDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult$GPCUserGeneratedContentDetectResultDetail;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->h:Ljava/util/List;

    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->d:Ljava/lang/String;

    return-void
.end method

.method public setQueueTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->b:Ljava/lang/String;

    return-void
.end method

.method public setRawData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->i:Ljava/lang/String;

    return-void
.end method

.method public setScenario(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->a:Ljava/lang/String;

    return-void
.end method

.method public setSuggestion(Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentDetectSuggestion;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->g:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentDetectSuggestion;

    return-void
.end method

.method public setup(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "GPCUserGeneratedContentDetectResult"

    if-nez p1, :cond_0

    .line 1
    const-string p1, "GPCUserGeneratedContentDetectResult data is null"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->i:Ljava/lang/String;

    .line 8
    const-string v1, "suggestion"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    sget-object v2, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentDetectSuggestion;->Pass:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentDetectSuggestion;

    iput-object v2, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->g:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentDetectSuggestion;

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 12
    const-string v3, "pass"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13
    iput-object v2, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->g:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentDetectSuggestion;

    goto :goto_0

    .line 14
    :cond_1
    const-string v2, "review"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    sget-object v1, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentDetectSuggestion;->Review:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentDetectSuggestion;

    iput-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->g:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentDetectSuggestion;

    goto :goto_0

    .line 16
    :cond_2
    const-string v2, "block"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    sget-object v1, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentDetectSuggestion;->Block:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentDetectSuggestion;

    iput-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->g:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentDetectSuggestion;

    .line 21
    :cond_3
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->h:Ljava/util/List;

    .line 22
    const-string v1, "details"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    .line 24
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 25
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 27
    new-instance v3, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult$GPCUserGeneratedContentDetectResultDetail;

    invoke-direct {v3}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult$GPCUserGeneratedContentDetectResultDetail;-><init>()V

    .line 28
    invoke-virtual {v3, v2}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult$GPCUserGeneratedContentDetectResultDetail;->setupData(Lorg/json/JSONObject;)V

    .line 29
    iget-object v2, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->h:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GPCUserGeneratedContentDetectResult setup error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Suggestion:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->g:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentDetectSuggestion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \nScenario:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \nQueueTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \nDataId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \nDataType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \nPayload:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \nContent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v3, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->i:Ljava/lang/String;

    const-string v4, "\n"

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    iget-object v3, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->i:Ljava/lang/String;

    const-string v5, "\r\n"

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 12
    const-string v5, "\r"

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 13
    const-string v5, "\t"

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 15
    const-string v3, "RawData:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->h:Ljava/util/List;

    const-string v2, "Details:\n"

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult$GPCUserGeneratedContentDetectResultDetail;

    .line 20
    invoke-virtual {v2}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult$GPCUserGeneratedContentDetectResultDetail;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "toString : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPCUserGeneratedContentDetectResult"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
