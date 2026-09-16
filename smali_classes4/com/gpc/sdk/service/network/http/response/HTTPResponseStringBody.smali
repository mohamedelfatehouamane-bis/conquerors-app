.class public Lcom/gpc/sdk/service/network/http/response/HTTPResponseStringBody;
.super Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "HTTPResponseStringBody"


# instance fields
.field private body:Ljava/lang/String;

.field private bodyBytes:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseBody;-><init>()V

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStringBody;->body:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStringBody;->bodyBytes:[B

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStringBody;->body:Ljava/lang/String;

    return-object v0
.end method

.method public parseString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStringBody;->bodyBytes:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStringBody;->body:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    const-string v1, "HTTPResponseStringBody"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStringBody;->body:Ljava/lang/String;

    return-object v0
.end method

.method public setBodyBytes([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStringBody;->bodyBytes:[B

    return-void
.end method

.method public setBodyString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/response/HTTPResponseStringBody;->body:Ljava/lang/String;

    return-void
.end method
