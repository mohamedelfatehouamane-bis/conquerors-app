.class public Lcom/gpc/sdk/service/network/http/HTTPException;
.super Ljava/lang/Throwable;
.source "SourceFile"


# instance fields
.field private error:Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

.field private isNetworkAvailable:Z


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;Ljava/lang/String;)V
    .locals 1

    .line 7
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/gpc/sdk/service/network/http/HTTPException;->isNetworkAvailable:Z

    .line 17
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/HTTPException;->error:Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lcom/gpc/sdk/service/network/http/HTTPException;->isNetworkAvailable:Z

    .line 6
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/HTTPException;->error:Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

    return-void
.end method


# virtual methods
.method public getError()Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/HTTPException;->error:Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public isNetworkAvailable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/service/network/http/HTTPException;->isNetworkAvailable:Z

    return v0
.end method

.method public setError(Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/HTTPException;->error:Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/service/network/http/HTTPException;->isNetworkAvailable:Z

    return-void
.end method
