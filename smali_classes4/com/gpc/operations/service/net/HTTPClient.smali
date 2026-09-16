.class public final Lcom/gpc/operations/service/net/HTTPClient;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createHttpRequest()Lcom/gpc/operations/service/net/HTTPRequest;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/service/net/HTTPRequest;

    invoke-direct {v0}, Lcom/gpc/operations/service/net/HTTPRequest;-><init>()V

    return-object v0
.end method
