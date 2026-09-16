.class public Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private exception:Lcom/gpc/sdk/error/GPCException;


# direct methods
.method private constructor <init>(Lcom/gpc/sdk/error/GPCException;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->exception:Lcom/gpc/sdk/error/GPCException;

    return-void
.end method

.method public static createException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;-><init>(Lcom/gpc/sdk/error/GPCException;)V

    return-object v0
.end method

.method public static createException(Lcom/gpc/sdk/error/GPCException;Ljava/util/Map;Ljava/lang/String;)Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lcom/gpc/sdk/error/GPCException;->createException(Lcom/gpc/sdk/error/GPCException;Ljava/util/Map;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;

    invoke-direct {p1, p0}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;-><init>(Lcom/gpc/sdk/error/GPCException;)V

    return-object p1
.end method

.method public static exception(Ljava/lang/String;)Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;
    .locals 1

    .line 5
    invoke-static {p0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p0

    .line 6
    new-instance v0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;-><init>(Lcom/gpc/sdk/error/GPCException;)V

    return-object v0
.end method

.method public static exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p0

    .line 4
    new-instance p1, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;

    invoke-direct {p1, p0}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;-><init>(Lcom/gpc/sdk/error/GPCException;)V

    return-object p1
.end method

.method public static exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p0

    .line 2
    new-instance p1, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;

    invoke-direct {p1, p0}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;-><init>(Lcom/gpc/sdk/error/GPCException;)V

    return-object p1
.end method

.method public static noneException()Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;

    invoke-direct {v1, v0}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;-><init>(Lcom/gpc/sdk/error/GPCException;)V

    return-object v1
.end method


# virtual methods
.method public getBaseErrorCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->exception:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/sdk/error/GPCException;->getBaseErrorCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->exception:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCodeInteger()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->exception:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/sdk/error/GPCException;->getCodeInteger()I

    move-result v0

    return v0
.end method

.method public getException()Lcom/gpc/sdk/error/GPCException;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->exception:Lcom/gpc/sdk/error/GPCException;

    return-object v0
.end method

.method public getReadableUniqueCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->exception:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/sdk/error/GPCException;->getReadableUniqueCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSituation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->exception:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/sdk/error/GPCException;->getSituation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->exception:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/sdk/error/GPCException;->getSuggestion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnderlyingException()Lcom/gpc/sdk/error/GPCException;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->exception:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/sdk/error/GPCException;->getUnderlyingException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    return-object v0
.end method

.method public isNone()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->exception:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result v0

    return v0
.end method

.method public isOccurred()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->exception:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    return v0
.end method

.method public printReadableUniqueCode()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->exception:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    return-void
.end method

.method public suggestion(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->exception:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/error/GPCException;->suggestion(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->exception:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v0}, Lcom/gpc/sdk/error/GPCException;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->exception:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    return-object p1
.end method
