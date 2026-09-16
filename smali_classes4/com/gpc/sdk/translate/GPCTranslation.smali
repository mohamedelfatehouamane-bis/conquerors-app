.class public Lcom/gpc/sdk/translate/GPCTranslation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/gpc/sdk/translate/GPCTranslationSource;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/translate/GPCTranslation;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/translate/GPCTranslation;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/translate/GPCTranslation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/translate/GPCTranslation;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/translate/GPCTranslation;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/translate/GPCTranslation;->d:Lcom/gpc/sdk/translate/GPCTranslationSource;

    invoke-virtual {v0}, Lcom/gpc/sdk/translate/GPCTranslationSource;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/translate/GPCTranslation;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setP(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/translate/GPCTranslation;->e:Ljava/lang/String;

    return-void
.end method

.method public setSourceInfo(Ljava/lang/String;Lcom/gpc/sdk/translate/GPCTranslationSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/translate/GPCTranslation;->c:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/gpc/sdk/translate/GPCTranslation;->d:Lcom/gpc/sdk/translate/GPCTranslationSource;

    return-void
.end method
