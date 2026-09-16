.class public Lcom/gpc/sdk/service/request/general/LegacyServiceClient$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/network/http/request/HTTPRequestWriteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/service/request/general/LegacyServiceClient;->putFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;

.field public final synthetic b:Lcom/gpc/sdk/service/request/general/LegacyServiceClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/request/general/LegacyServiceClient;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$e;->b:Lcom/gpc/sdk/service/request/general/LegacyServiceClient;

    iput-object p2, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$e;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$e;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;->onProgress(JJ)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$e;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;

    invoke-interface {v0}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;->onStart()V

    return-void
.end method
