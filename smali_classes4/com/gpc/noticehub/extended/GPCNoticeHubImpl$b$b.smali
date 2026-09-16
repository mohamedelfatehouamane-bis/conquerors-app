.class public Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/compact/OperationsCompatProxy$GetWebSSOTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/compact/OperationsCompatProxy;

.field public final synthetic b:Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;

.field public final synthetic c:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;


# direct methods
.method public constructor <init>(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;Lcom/gpc/operations/compact/OperationsCompatProxy;Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;->c:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;

    iput-object p2, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;->a:Lcom/gpc/operations/compact/OperationsCompatProxy;

    iput-object p3, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;->b:Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    const-string p1, "GPCNoticeHubImpl"

    const-string v0, "refreshUserNotice webSSOToken is empty."

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 5
    const-string v0, "sso_token"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;->a:Lcom/gpc/operations/compact/OperationsCompatProxy;

    invoke-interface {p2}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "game_id"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;->c:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;

    iget-object p2, p2, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;->b:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;

    invoke-static {p2}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->access$300(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lcom/gpc/operations/utils/JsonUtils;->map2JsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "payload"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;->getHTTPService()Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    move-result-object v0

    new-instance v1, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b$a;

    invoke-direct {v1, p0}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b$a;-><init>(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;)V

    const-string v2, "/business/message_integration/get_notice"

    invoke-interface {v0, v2, p1, p2, v1}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method
