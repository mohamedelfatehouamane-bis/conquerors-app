.class public Lcom/gpc/sdk/misc/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/c;->a(Ljava/util/HashMap;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/HashMap;

.field public final synthetic b:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

.field public final synthetic c:Lcom/gpc/sdk/misc/c;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/c;Ljava/util/HashMap;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/c$b;->c:Lcom/gpc/sdk/misc/c;

    iput-object p2, p0, Lcom/gpc/sdk/misc/c$b;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/gpc/sdk/misc/c$b;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/c$b;->c:Lcom/gpc/sdk/misc/c;

    invoke-static {v0}, Lcom/gpc/sdk/misc/c;->d(Lcom/gpc/sdk/misc/c;)Lcom/gpc/sdk/service/request/client/IServiceClient;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/misc/c$b;->c:Lcom/gpc/sdk/misc/c;

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceClient()Lcom/gpc/sdk/service/request/client/IServiceClient;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/sdk/misc/c;->a(Lcom/gpc/sdk/misc/c;Lcom/gpc/sdk/service/request/client/IServiceClient;)Lcom/gpc/sdk/service/request/client/IServiceClient;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/misc/c$b;->c:Lcom/gpc/sdk/misc/c;

    invoke-static {v0}, Lcom/gpc/sdk/misc/c;->d(Lcom/gpc/sdk/misc/c;)Lcom/gpc/sdk/service/request/client/IServiceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/misc/c$b;->a:Ljava/util/HashMap;

    new-instance v2, Lcom/gpc/sdk/misc/c$b$a;

    invoke-direct {v2, p0}, Lcom/gpc/sdk/misc/c$b$a;-><init>(Lcom/gpc/sdk/misc/c$b;)V

    const-string v3, "/ums/policy/consent_mode/submit"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v4, v2}, Lcom/gpc/sdk/service/request/client/IServiceClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;)V

    return-void
.end method
