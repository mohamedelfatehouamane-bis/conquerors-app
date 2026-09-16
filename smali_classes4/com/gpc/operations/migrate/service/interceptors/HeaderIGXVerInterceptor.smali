.class public Lcom/gpc/operations/migrate/service/interceptors/HeaderIGXVerInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/network/http/HTTPInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/migrate/service/interceptors/HeaderIGXVerInterceptor$a;
    }
.end annotation


# static fields
.field public static targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/operations/migrate/service/interceptors/HeaderIGXVerInterceptor$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gpc/operations/migrate/service/interceptors/HeaderIGXVerInterceptor;->targets:Ljava/util/List;

    .line 4
    new-instance v1, Lcom/gpc/operations/migrate/service/interceptors/HeaderIGXVerInterceptor$a;

    const-string v2, "/ums/member"

    const-string v3, "2.4"

    invoke-direct {v1, v2, v3}, Lcom/gpc/operations/migrate/service/interceptors/HeaderIGXVerInterceptor$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/gpc/operations/migrate/service/interceptors/HeaderIGXVerInterceptor;->targets:Ljava/util/List;

    new-instance v1, Lcom/gpc/operations/migrate/service/interceptors/HeaderIGXVerInterceptor$a;

    const-string v2, "/ums/policy"

    const-string v3, "1.1"

    invoke-direct {v1, v2, v3}, Lcom/gpc/operations/migrate/service/interceptors/HeaderIGXVerInterceptor$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/gpc/operations/migrate/service/interceptors/HeaderIGXVerInterceptor;->targets:Ljava/util/List;

    new-instance v1, Lcom/gpc/operations/migrate/service/interceptors/HeaderIGXVerInterceptor$a;

    const-string v2, "/ums/verify"

    const-string v3, "2.1"

    invoke-direct {v1, v2, v3}, Lcom/gpc/operations/migrate/service/interceptors/HeaderIGXVerInterceptor$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptException(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/HTTPException;)V
    .locals 0

    return-void
.end method

.method public interceptRequest(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getUrl()Ljava/net/URL;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/gpc/operations/migrate/service/interceptors/HeaderIGXVerInterceptor;->targets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/operations/migrate/service/interceptors/HeaderIGXVerInterceptor$a;

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/gpc/operations/migrate/service/interceptors/HeaderIGXVerInterceptor$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;->getHeaders()Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;

    move-result-object p1

    iget-object v0, v2, Lcom/gpc/operations/migrate/service/interceptors/HeaderIGXVerInterceptor$a;->b:Ljava/lang/String;

    const-string v1, "x-gpc-ver"

    invoke-virtual {p1, v1, v0}, Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public interceptResponse(Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequest;Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)V
    .locals 0

    return-void
.end method

.method public priority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
