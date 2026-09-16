.class public Lcom/gpc/sdk/misc/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/t;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/gpc/sdk/storage/service/UploadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/storage/service/UploadListener;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/gpc/sdk/misc/t;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/t;Lcom/gpc/sdk/storage/service/UploadListener;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/t$b;->f:Lcom/gpc/sdk/misc/t;

    iput-object p2, p0, Lcom/gpc/sdk/misc/t$b;->a:Lcom/gpc/sdk/storage/service/UploadListener;

    iput-object p3, p0, Lcom/gpc/sdk/misc/t$b;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/gpc/sdk/misc/t$b;->c:J

    iput-object p6, p0, Lcom/gpc/sdk/misc/t$b;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/gpc/sdk/misc/t$b;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string p2, "StorageServiceAGImpl"

    const-string v0, "request web sso token error.errorcode."

    invoke-static {p2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->printReadableUniqueCode()V

    .line 4
    iget-object p2, p0, Lcom/gpc/sdk/misc/t$b;->a:Lcom/gpc/sdk/storage/service/UploadListener;

    invoke-virtual {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->getException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/storage/service/UploadListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 8
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 10
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 11
    const-string p1, "v"

    const-string v0, "3"

    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "fo"

    const-string v0, "standard"

    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/gpc/sdk/misc/t$b;->b:Ljava/lang/String;

    const-string v0, "g_id"

    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-wide v0, p0, Lcom/gpc/sdk/misc/t$b;->c:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, p0, Lcom/gpc/sdk/misc/t$b;->c:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "timestamp"

    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/misc/t$b;->f:Lcom/gpc/sdk/misc/t;

    iget-object v0, p0, Lcom/gpc/sdk/misc/t$b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/gpc/sdk/misc/t$b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/gpc/sdk/misc/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    const-string v0, "sign"

    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "sso_token"

    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Lcom/gpc/sdk/misc/t$b;->f:Lcom/gpc/sdk/misc/t;

    iget-object v0, p1, Lcom/gpc/sdk/misc/t;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    iget-object v2, p0, Lcom/gpc/sdk/misc/t$b;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/gpc/sdk/misc/t$b;->d:Ljava/lang/String;

    new-instance v7, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;

    invoke-direct {v7}, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;-><init>()V

    new-instance v8, Lcom/gpc/sdk/misc/t$c;

    iget-object p1, p0, Lcom/gpc/sdk/misc/t$b;->a:Lcom/gpc/sdk/storage/service/UploadListener;

    invoke-direct {v8, p1}, Lcom/gpc/sdk/misc/t$c;-><init>(Lcom/gpc/sdk/storage/service/UploadListener;)V

    const-string v1, "/storage/game_storage/protracted/cdn/push"

    const-string v4, "video"

    invoke-interface/range {v0 .. v8}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->postFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    return-void
.end method
