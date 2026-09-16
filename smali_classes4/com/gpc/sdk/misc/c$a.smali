.class public Lcom/gpc/sdk/misc/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/c;->checkAgreementsPendingSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;

.field public final synthetic e:Lcom/gpc/sdk/misc/c;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/c$a;->e:Lcom/gpc/sdk/misc/c;

    iput-object p2, p0, Lcom/gpc/sdk/misc/c$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/sdk/misc/c$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/gpc/sdk/misc/c$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/gpc/sdk/misc/c$a;->d:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/misc/c$a;->a:Ljava/lang/String;

    const-string v2, "sso_token"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/misc/c$a;->b:Ljava/lang/String;

    const-string v2, "ad_sdk_list"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/misc/c$a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/gpc/sdk/misc/c$a;->c:Ljava/lang/String;

    const-string v2, "payload"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/gpc/sdk/misc/c$a;->e:Lcom/gpc/sdk/misc/c;

    invoke-static {v1}, Lcom/gpc/sdk/misc/c;->b(Lcom/gpc/sdk/misc/c;)Lcom/gpc/sdk/service/request/client/IServiceClient;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/sdk/misc/c$a;->e:Lcom/gpc/sdk/misc/c;

    invoke-static {v2}, Lcom/gpc/sdk/misc/c;->a(Lcom/gpc/sdk/misc/c;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/gpc/sdk/service/request/client/IServiceClient;->updateReadTimeout(I)V

    .line 8
    iget-object v1, p0, Lcom/gpc/sdk/misc/c$a;->e:Lcom/gpc/sdk/misc/c;

    invoke-static {v1}, Lcom/gpc/sdk/misc/c;->b(Lcom/gpc/sdk/misc/c;)Lcom/gpc/sdk/service/request/client/IServiceClient;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/sdk/misc/c$a;->e:Lcom/gpc/sdk/misc/c;

    invoke-static {v2}, Lcom/gpc/sdk/misc/c;->a(Lcom/gpc/sdk/misc/c;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/gpc/sdk/service/request/client/IServiceClient;->updateConnectTimeout(I)V

    .line 9
    iget-object v1, p0, Lcom/gpc/sdk/misc/c$a;->e:Lcom/gpc/sdk/misc/c;

    invoke-static {v1}, Lcom/gpc/sdk/misc/c;->b(Lcom/gpc/sdk/misc/c;)Lcom/gpc/sdk/service/request/client/IServiceClient;

    move-result-object v1

    new-instance v2, Lcom/gpc/sdk/misc/c$a$a;

    invoke-direct {v2, p0}, Lcom/gpc/sdk/misc/c$a$a;-><init>(Lcom/gpc/sdk/misc/c$a;)V

    const-string v3, "/ums/policy/consent_mode/check"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Lcom/gpc/sdk/service/request/client/IServiceClient;->get(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;)V

    return-void
.end method
