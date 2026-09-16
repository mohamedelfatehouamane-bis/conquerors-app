.class public Lcom/gpc/sdk/service/network/http/HTTPClientImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/service/network/http/HTTPClientImpl;->sortInterceptorsByPriority()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/gpc/sdk/service/network/http/HTTPInterceptor;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/service/network/http/HTTPClientImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/network/http/HTTPClientImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$b;->a:Lcom/gpc/sdk/service/network/http/HTTPClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)I
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/gpc/sdk/service/network/http/HTTPInterceptor;->priority()I

    move-result v0

    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/HTTPInterceptor;->priority()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/gpc/sdk/service/network/http/HTTPInterceptor;->priority()I

    move-result p1

    invoke-interface {p2}, Lcom/gpc/sdk/service/network/http/HTTPInterceptor;->priority()I

    move-result p2

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/gpc/sdk/service/network/http/HTTPInterceptor;

    check-cast p2, Lcom/gpc/sdk/service/network/http/HTTPInterceptor;

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl$b;->a(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)I

    move-result p1

    return p1
.end method
