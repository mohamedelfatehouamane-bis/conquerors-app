.class public Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->getToken(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;

.field public final synthetic b:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$a;->b:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    iput-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p3

    const-string v0, "get token from cache."

    const-string v1, ""

    const-string v2, "StorageServiceAGImplV2"

    if-eqz p3, :cond_1

    .line 2
    const-string p2, "request is error."

    invoke-static {v2, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$a;->b:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    invoke-static {p2}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->a(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 5
    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;->onCompleted(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    sget-object p2, Lcom/gpc/sdk/storage/error/GPCStorageErrorCode;->STORAGE_V2_GET_TOKEN:Lcom/gpc/sdk/error/GPCExceptionMapping;

    invoke-virtual {p2, p1}, Lcom/gpc/sdk/error/GPCExceptionMapping;->generate(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;

    invoke-interface {p2, p1, v1}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;->onCompleted(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGeneralResponse;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 18
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    const-string p1, "token"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    const-string p3, "expires_at"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 21
    iget-object v3, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$a;->b:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    invoke-static {v3, p1, p2, p3}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->a(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;Ljava/lang/String;J)V

    .line 23
    iget-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;->onCompleted(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 26
    :cond_2
    iget-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$a;->b:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    invoke-static {p2}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->a(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;)Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 28
    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;->onCompleted(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 32
    :cond_3
    const-string p2, "8000"

    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCGeneralResponse;->createException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 33
    const-string p2, "400304"

    const-string p3, "20"

    invoke-static {p2, p3}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;

    invoke-interface {p2, p1, v1}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;->onCompleted(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 37
    invoke-static {v2, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    iget-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$a;->b:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;

    invoke-static {p1}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->a(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 40
    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;->onCompleted(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 44
    :cond_4
    const-string p1, "5001"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 45
    const-string p2, "400305"

    const-string p3, "10"

    invoke-static {p2, p3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 46
    invoke-virtual {p2, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 47
    iget-object p2, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$a;->a:Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;

    invoke-interface {p2, p1, v1}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;->onCompleted(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void
.end method
