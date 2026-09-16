.class public Lcom/gpc/sdk/blacklistedword/GPCBlackListedWord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/blacklistedword/GPCBlackListedWord$GPCUserGeneratedContentCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserGeneratedContent()Lcom/gpc/sdk/blacklistedword/listener/GPCUserGeneratedContent;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentImpl;

    invoke-direct {v0}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentImpl;-><init>()V

    return-object v0
.end method

.method public prepareUserGeneratedContent(Lcom/gpc/sdk/blacklistedword/GPCBlackListedWord$GPCUserGeneratedContentCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/blacklistedword/GPCBlackListedWord$GPCUserGeneratedContentCallback;->onComplete(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
