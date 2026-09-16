.class public abstract Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/service/request/api/MultiLinkImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LinkSelectionStrategyCallbackR"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;

.field private prefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private serviceURLBuilder:Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;",
            ">;",
            "Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;",
            "Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->listener:Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;

    .line 3
    iput-object p3, p0, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->serviceURLBuilder:Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

    .line 4
    iput-object p4, p0, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->context:Landroid/content/Context;

    .line 5
    iput-object p1, p0, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->prefixes:Ljava/util/List;

    return-void
.end method

.method private canSelectThisPrefixe(Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result p1

    const/16 v0, 0x130

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isNeedRetry(Lcom/gpc/sdk/service/network/http/HTTPException;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/HTTPException;->isNetworkAvailable()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "isNeedRetry isNetworkAvailable false"

    const-string v3, "MultiLinkImpl"

    if-nez v0, :cond_0

    .line 3
    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 6
    :cond_0
    sget-object v0, Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;->REQUEST_THROW_RUNTIME_EXCEPTION_FAIL:Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/HTTPException;->getError()Lcom/gpc/sdk/service/network/http/HTTPExceptionCode;

    move-result-object p1

    if-ne v0, p1, :cond_1

    .line 8
    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 12
    :cond_1
    const-string p1, "httpException, retry."

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private isNeedRetry(Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)Z
    .locals 3

    .line 13
    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    const-string v2, "MultiLinkImpl"

    if-eq v1, v0, :cond_1

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/response/HTTPResponse;->getCode()I

    move-result p1

    const/16 v0, 0x130

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    const-string p1, "HTTP Response code is not Available."

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 20
    :cond_1
    :goto_0
    const-string p1, "HTTP Response success."

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onConnectionError(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->prefixes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 2
    invoke-direct {p0, p2}, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->isNeedRetry(Lcom/gpc/sdk/service/network/http/HTTPException;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->prefixes:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object p2, p0, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->prefixes:Ljava/util/List;

    invoke-virtual {p0, p2, p1}, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->repeat(Ljava/util/List;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->listener:Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/service/network/http/HTTPCallback;->onConnectionError(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->listener:Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;

    if-eqz v0, :cond_2

    .line 12
    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/service/network/http/HTTPCallback;->onConnectionError(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/HTTPException;)V

    :cond_2
    return-void
.end method

.method public onResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "---Link---response address:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiLinkImpl"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->prefixes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    .line 4
    invoke-direct {p0, p2}, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->isNeedRetry(Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p2, p0, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->prefixes:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->prefixes:Ljava/util/List;

    invoke-virtual {p0, p2, p1}, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->repeat(Ljava/util/List;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V

    return-void

    .line 12
    :cond_0
    invoke-direct {p0, p2}, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->canSelectThisPrefixe(Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "---Link---selected address:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->prefixes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string v0, "---Link-----------------------------"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->serviceURLBuilder:Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->prefixes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;

    invoke-interface {v0, v1, v2}, Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;->setPickPrefix(Landroid/content/Context;Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;)V

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/api/MultiLinkImpl$LinkSelectionStrategyCallbackR;->listener:Lcom/gpc/sdk/service/request/api/HTTPServiceCallback;

    if-eqz v0, :cond_2

    .line 19
    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/service/network/http/HTTPCallback;->onResponse(Lcom/gpc/sdk/service/network/http/request/HTTPRequest;Lcom/gpc/sdk/service/network/http/response/HTTPResponse;)V

    :cond_2
    return-void
.end method

.method public abstract repeat(Ljava/util/List;Lcom/gpc/sdk/service/network/http/request/HTTPRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;",
            ">;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequest;",
            ")V"
        }
    .end annotation
.end method
