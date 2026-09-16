.class public Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;->onComplete(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;


# direct methods
.method public constructor <init>(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b$a;->a:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionError(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V
    .locals 1

    .line 1
    const-string p1, "GPCNoticeHubImpl"

    const-string v0, "refreshUserNotice onConnectionError"

    invoke-static {p1, v0, p2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    const-string p1, "710102"

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
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

    .line 4
    iget-object p2, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b$a;->a:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;

    iget-object v0, p2, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;->c:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;

    iget-object v0, v0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;->b:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;

    iget-object p2, p2, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;->b:Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;

    invoke-static {v0, p1, p2}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->access$400(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;)V

    return-void
.end method

.method public onResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    .locals 5

    const-string p1, "5001"

    const-string v0, "710104"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refreshUserNotice onResponse:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPCNoticeHubImpl"

    invoke-static {v2, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->isSuccess()Z

    move-result v1

    const-string v3, "710103"

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getBody()Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponseBody;->getString()Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "refreshUserNotice response:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-static {p2}, Lcom/gpc/operations/helper/GeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/operations/helper/GeneralResponse;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/gpc/operations/helper/GeneralResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p2}, Lcom/gpc/operations/helper/GeneralResponse;->getData()Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-static {p2}, Lcom/gpc/noticehub/bean/GPCUserNoticeResult;->parseJson(Ljava/lang/String;)Lcom/gpc/noticehub/bean/GPCUserNoticeResult;

    move-result-object v1

    if-nez v1, :cond_0

    .line 12
    const-string p2, "refreshUserNotice data node parse error."

    invoke-static {v2, p2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    .line 14
    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    .line 15
    iget-object v1, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b$a;->a:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;

    iget-object v3, v1, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;->c:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;

    iget-object v3, v3, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;->b:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;

    iget-object v1, v1, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;->b:Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;

    invoke-static {v3, p2, v1}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->access$400(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;)V

    return-void

    .line 19
    :cond_0
    const-string v3, "refreshUserNotice data response success."

    invoke-static {v2, v3}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v3, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b$a;->a:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;

    iget-object v3, v3, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;->c:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;

    iget-object v3, v3, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;->b:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;

    invoke-static {v3, p2}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->access$500(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object p2

    const-string v3, "NOTICE_RESULT_KEY"

    invoke-virtual {p2, v3, v1}, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    iget-object p2, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b$a;->a:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;

    iget-object p2, p2, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;->b:Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p2, v3, v4, v1}, Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;->onResult(Lcom/gpc/operations/migrate/error/GPCException;ZLcom/gpc/noticehub/bean/GPCUserNoticeResult;)V

    return-void

    .line 26
    :cond_1
    const-string v1, "refreshUserNotice data business error."

    invoke-static {v2, v1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {v3}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    .line 28
    invoke-virtual {p2}, Lcom/gpc/operations/helper/GeneralResponse;->createException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    .line 29
    iget-object v1, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b$a;->a:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;

    iget-object v3, v1, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;->c:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;

    iget-object v3, v3, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;->b:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;

    iget-object v1, v1, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;->b:Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;

    invoke-static {v3, p2, v1}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->access$400(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 39
    const-string p2, "refreshUserNotice error."

    invoke-static {v2, p2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    const-string p1, "710101"

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    .line 41
    const-string p2, "-1"

    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b$a;->a:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;

    iget-object v0, p2, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;->c:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;

    iget-object v0, v0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;->b:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;

    iget-object p2, p2, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;->b:Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;

    invoke-static {v0, p1, p2}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->access$400(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;)V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 43
    const-string v1, "refreshUserNotice data parse error."

    invoke-static {v2, v1, p2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    invoke-static {v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    .line 46
    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    .line 47
    iget-object p2, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b$a;->a:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;

    iget-object v0, p2, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;->c:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;

    iget-object v0, v0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;->b:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;

    iget-object p2, p2, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;->b:Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;

    invoke-static {v0, p1, p2}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->access$400(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;)V

    :goto_0
    return-void

    .line 57
    :cond_2
    const-string p1, "refreshUserNotice response service error."

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {v3}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;->getCode()I

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

    .line 60
    iget-object p2, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b$a;->a:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;

    iget-object v0, p2, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;->c:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;

    iget-object v0, v0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;->b:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;

    iget-object p2, p2, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;->b:Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;

    invoke-static {v0, p1, p2}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->access$400(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;)V

    return-void
.end method
