.class public Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$Build;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Build"
.end annotation


# instance fields
.field boundary:[B

.field private parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$Build;->parts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public appendBody(Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;Ljava/util/List;)Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$Build;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$Build;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$b;-><init>(Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$a;)V

    .line 2
    iput-object p1, v0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$b;->a:Lcom/gpc/sdk/service/network/http/request/HTTPRequestBody;

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, v0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$b;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$Build;->parts:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public boundary([B)Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$Build;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$Build;->boundary:[B

    return-object p0
.end method

.method public build()Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody;
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody;

    iget-object v1, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$Build;->boundary:[B

    invoke-direct {v0, v1}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody;-><init>([B)V

    .line 2
    invoke-static {v0}, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody;->access$100(Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/sdk/service/network/http/request/HTTPRequestMultipartBody$Build;->parts:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
