.class public Lcom/gpc/sdk/utils/factory/HTTPFactoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/factory/IHTTPFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createHTTPClient()Lcom/gpc/sdk/service/network/http/HTTPClient;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;

    invoke-direct {v0}, Lcom/gpc/sdk/service/network/http/HTTPClientImpl;-><init>()V

    return-object v0
.end method
