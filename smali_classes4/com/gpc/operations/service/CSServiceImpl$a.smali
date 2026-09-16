.class public Lcom/gpc/operations/service/CSServiceImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/service/CSServiceImpl;->gotoForward(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/service/OnGotoForwardResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/service/OnGotoForwardResultCallback;

.field public final synthetic b:Lcom/gpc/operations/service/CSServiceImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/service/CSServiceImpl;Lcom/gpc/operations/service/OnGotoForwardResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/CSServiceImpl$a;->b:Lcom/gpc/operations/service/CSServiceImpl;

    iput-object p2, p0, Lcom/gpc/operations/service/CSServiceImpl$a;->a:Lcom/gpc/operations/service/OnGotoForwardResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/operations/service/CSServiceImpl$a;->a:Lcom/gpc/operations/service/OnGotoForwardResultCallback;

    if-eqz p1, :cond_0

    .line 2
    const-string p1, "4000"

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPException;->getError()Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->getCode()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/gpc/operations/service/CSServiceImpl$a;->a:Lcom/gpc/operations/service/OnGotoForwardResultCallback;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/gpc/operations/service/OnGotoForwardResultCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/service/bean/GotoForwardResult;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    .locals 4

    const-string p1, "5001"

    .line 1
    const-string v0, "onResponse"

    const-string v1, "CSServiceImpl"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "response:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gpc/operations/helper/GeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/operations/helper/GeneralResponse;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/gpc/operations/helper/GeneralResponse;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p2}, Lcom/gpc/operations/helper/GeneralResponse;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gpc/operations/service/bean/GotoForwardResult;->create(Ljava/lang/String;)Lcom/gpc/operations/service/bean/GotoForwardResult;

    move-result-object p2

    if-nez p2, :cond_0

    .line 8
    iget-object p2, p0, Lcom/gpc/operations/service/CSServiceImpl$a;->a:Lcom/gpc/operations/service/OnGotoForwardResultCallback;

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v2

    invoke-interface {p2, v2, v0}, Lcom/gpc/operations/service/OnGotoForwardResultCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/service/bean/GotoForwardResult;)V

    return-void

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/gpc/operations/service/CSServiceImpl$a;->a:Lcom/gpc/operations/service/OnGotoForwardResultCallback;

    if-eqz v2, :cond_2

    .line 12
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/gpc/operations/service/OnGotoForwardResultCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/service/bean/GotoForwardResult;)V

    return-void

    .line 15
    :cond_1
    iget-object v2, p0, Lcom/gpc/operations/service/CSServiceImpl$a;->a:Lcom/gpc/operations/service/OnGotoForwardResultCallback;

    if-eqz v2, :cond_2

    .line 16
    const-string v3, "8000"

    invoke-static {v3}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v3

    invoke-virtual {p2}, Lcom/gpc/operations/helper/GeneralResponse;->createException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-interface {v2, p2, v0}, Lcom/gpc/operations/service/OnGotoForwardResultCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/service/bean/GotoForwardResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 21
    const-string v2, ""

    invoke-static {v1, v2, p2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    iget-object p2, p0, Lcom/gpc/operations/service/CSServiceImpl$a;->a:Lcom/gpc/operations/service/OnGotoForwardResultCallback;

    if-eqz p2, :cond_2

    .line 23
    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Lcom/gpc/operations/service/OnGotoForwardResultCallback;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/service/bean/GotoForwardResult;)V

    :cond_2
    return-void
.end method
