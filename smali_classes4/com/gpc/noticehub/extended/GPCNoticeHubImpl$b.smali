.class public Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->refreshUserNotice(Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;

.field public final synthetic b:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;->b:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;

    iput-object p2, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;->a:Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const-string v0, "refreshUserNotice called"

    const-string v1, "GPCNoticeHubImpl"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;->a:Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;

    if-nez v0, :cond_0

    .line 3
    const-string v0, "refreshUserNotice listener is null"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a;

    invoke-direct {v0, p0}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a;-><init>(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;)V

    .line 18
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v1

    .line 19
    new-instance v2, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;

    invoke-direct {v2, p0, v1, v0}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$b;-><init>(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;Lcom/gpc/operations/compact/OperationsCompatProxy;Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;)V

    invoke-interface {v1, v2}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getSSOTokenForWeb(Lcom/gpc/operations/compact/OperationsCompatProxy$GetWebSSOTokenListener;)V

    return-void
.end method
