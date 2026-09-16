.class public Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->triggerUserNoticeRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$a;->a:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/gpc/operations/migrate/error/GPCException;ZLcom/gpc/noticehub/bean/GPCUserNoticeResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$a;->a:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;

    invoke-static {v0}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->access$000(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$a;->a:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;

    invoke-static {v0}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->access$100(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;)Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$a;->a:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;

    invoke-static {v0}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->access$100(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;)Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;->onResult(Lcom/gpc/operations/migrate/error/GPCException;ZLcom/gpc/noticehub/bean/GPCUserNoticeResult;)V

    :cond_0
    return-void
.end method
