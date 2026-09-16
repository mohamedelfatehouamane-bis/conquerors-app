.class public Lcom/gpc/operations/migrate/error/utils/ExceptionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/gpc/operations/migrate/error/utils/ExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p0

    return-object p0
.end method

.method public static instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/operations/migrate/error/GPCException;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    return-object p0
.end method

.method public static instantiatedException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;
    .locals 0

    .line 5
    invoke-static {p2}, Lcom/gpc/operations/migrate/utils/safelang/Integer;->parseIntSafety(Ljava/lang/String;)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/gpc/operations/migrate/error/utils/ExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p0

    return-object p0
.end method
