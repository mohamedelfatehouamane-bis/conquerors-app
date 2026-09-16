.class public Lcom/gpc/sdk/translate/GPCTranslationSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/translate/GPCTranslationSource;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/translate/GPCTranslationSource;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/translate/GPCTranslationSet;->a:Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/translate/GPCTranslationSet;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/gpc/sdk/translate/GPCTranslationSet;->d:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/gpc/sdk/translate/GPCTranslationSet;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getByIndex(I)Lcom/gpc/sdk/translate/GPCTranslation;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/translate/GPCTranslationSet;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2
    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    const-string v2, "l"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    iput-object v2, p0, Lcom/gpc/sdk/translate/GPCTranslationSet;->b:Ljava/lang/String;

    .line 8
    :cond_0
    const-string v2, "p"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 13
    :cond_1
    new-instance v0, Lcom/gpc/sdk/translate/GPCTranslation;

    iget-object v2, p0, Lcom/gpc/sdk/translate/GPCTranslationSet;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/translate/GPCTranslation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/gpc/sdk/translate/GPCTranslationSet;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/gpc/sdk/translate/GPCTranslationSet;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/translate/GPCTranslationSource;

    invoke-virtual {v0, v1, p1}, Lcom/gpc/sdk/translate/GPCTranslation;->setSourceInfo(Ljava/lang/String;Lcom/gpc/sdk/translate/GPCTranslationSource;)V

    .line 15
    invoke-virtual {v0, v3}, Lcom/gpc/sdk/translate/GPCTranslation;->setP(Ljava/lang/String;)V

    return-object v0
.end method

.method public getByName(Ljava/lang/String;)Lcom/gpc/sdk/translate/GPCTranslation;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/translate/GPCTranslationSet;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2
    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    const-string v2, "l"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    iput-object v2, p0, Lcom/gpc/sdk/translate/GPCTranslationSet;->b:Ljava/lang/String;

    .line 8
    :cond_0
    const-string v2, "p"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 11
    :cond_1
    new-instance v0, Lcom/gpc/sdk/translate/GPCTranslation;

    iget-object v2, p0, Lcom/gpc/sdk/translate/GPCTranslationSet;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/translate/GPCTranslation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/gpc/sdk/translate/GPCTranslationSet;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 13
    iget-object v2, p0, Lcom/gpc/sdk/translate/GPCTranslationSet;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/translate/GPCTranslationNamedSource;

    .line 14
    invoke-virtual {v2}, Lcom/gpc/sdk/translate/GPCTranslationNamedSource;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 15
    iget-object v4, p0, Lcom/gpc/sdk/translate/GPCTranslationSet;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lcom/gpc/sdk/translate/GPCTranslation;->setSourceInfo(Ljava/lang/String;Lcom/gpc/sdk/translate/GPCTranslationSource;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {v0, v3}, Lcom/gpc/sdk/translate/GPCTranslation;->setP(Ljava/lang/String;)V

    return-object v0
.end method

.method public getType()Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/translate/GPCTranslationSet;->a:Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/translate/GPCTranslationSet;->f:Ljava/util/List;

    return-void
.end method

.method public setMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/translate/GPCTranslationSet;->e:Ljava/util/HashMap;

    return-void
.end method
