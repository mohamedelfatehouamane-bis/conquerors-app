.class public Lcom/gpc/operations/migrate/error/GPCException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final NO_EXCEPTION_CODE:Ljava/lang/String; = "0"

.field private static final TAG:Ljava/lang/String; = "GPCException"


# instance fields
.field private code:Ljava/lang/String;

.field private situation:Ljava/lang/String;

.field private suggestion:Ljava/lang/String;

.field private underlyingException:Lcom/gpc/operations/migrate/error/GPCException;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/operations/migrate/error/GPCException;->code:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/gpc/operations/migrate/error/GPCException;->situation:Ljava/lang/String;

    return-void
.end method

.method public static createException(Lcom/gpc/operations/migrate/error/GPCException;Ljava/util/Map;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/error/GPCException;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/gpc/operations/migrate/error/GPCException;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/migrate/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/gpc/operations/migrate/error/GPCException;->getCodeInteger()I

    move-result v0

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xfa0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1770

    if-eq v0, v1, :cond_1

    .line 15
    const-string p1, "10"

    invoke-static {p2, p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p0

    return-object p0

    .line 16
    :cond_1
    const-string p2, "20"

    invoke-static {p1, p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p0

    return-object p0

    .line 17
    :cond_2
    const-string p2, "32"

    invoke-static {p1, p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p0

    return-object p0
.end method

.method public static exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;
    .locals 2

    .line 5
    new-instance v0, Lcom/gpc/operations/migrate/error/GPCException;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/gpc/operations/migrate/error/GPCException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;
    .locals 1

    .line 4
    new-instance v0, Lcom/gpc/operations/migrate/error/GPCException;

    invoke-direct {v0, p0, p1}, Lcom/gpc/operations/migrate/error/GPCException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/error/GPCException;

    invoke-direct {v0, p0, p2}, Lcom/gpc/operations/migrate/error/GPCException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/error/GPCException;->suggestion(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p3}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    return-object v0
.end method

.method public static noneException()Lcom/gpc/operations/migrate/error/GPCException;
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/error/GPCException;

    const-string v1, "0"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/gpc/operations/migrate/error/GPCException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, v2}, Lcom/gpc/operations/migrate/error/GPCException;->suggestion(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    return-object v0
.end method

.method private printUnderlyingException()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/operations/migrate/error/GPCException;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", underlying error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gpc/operations/migrate/error/GPCException;->getBaseErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCException"

    invoke-static {v1, v0}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createException()Ljava/lang/Exception;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p0}, Lcom/gpc/operations/migrate/error/GPCException;->getReadableUniqueCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getBaseErrorCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException:Lcom/gpc/operations/migrate/error/GPCException;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/gpc/operations/migrate/error/GPCException;->code:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/migrate/error/GPCException;->printReadableUniqueCode()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/migrate/error/GPCException;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeInteger()I
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/migrate/error/GPCException;->printReadableUniqueCode()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/migrate/error/GPCException;->code:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transform code to Integer error.code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/operations/migrate/error/GPCException;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPCException"

    invoke-static {v2, v1, v0}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getReadableUniqueCode()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/error/GPCException;->code:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException:Lcom/gpc/operations/migrate/error/GPCException;

    if-eqz v1, :cond_0

    .line 4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, v1, Lcom/gpc/operations/migrate/error/GPCException;->code:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v0, "%s-%s"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSituation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/error/GPCException;->situation:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/error/GPCException;->suggestion:Ljava/lang/String;

    return-object v0
.end method

.method public getUnderlyingException()Lcom/gpc/operations/migrate/error/GPCException;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException:Lcom/gpc/operations/migrate/error/GPCException;

    return-object v0
.end method

.method public isNone()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/error/GPCException;->code:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOccurred()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/error/GPCException;->code:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public printReadableUniqueCode()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException:Lcom/gpc/operations/migrate/error/GPCException;

    const/4 v1, 0x0

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_1

    const/16 v3, 0xa

    if-ge v1, v3, :cond_1

    .line 5
    invoke-direct {v2}, Lcom/gpc/operations/migrate/error/GPCException;->printUnderlyingException()V

    if-eqz v0, :cond_0

    .line 8
    iget-object v2, v0, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException:Lcom/gpc/operations/migrate/error/GPCException;

    goto :goto_1

    :cond_0
    move-object v2, v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method public suggestion(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/error/GPCException;->suggestion:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception{code=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/operations/migrate/error/GPCException;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', suggestion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/operations/migrate/error/GPCException;->suggestion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', situation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/operations/migrate/error/GPCException;->situation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', underlyingException="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException:Lcom/gpc/operations/migrate/error/GPCException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException:Lcom/gpc/operations/migrate/error/GPCException;

    return-object p0
.end method
