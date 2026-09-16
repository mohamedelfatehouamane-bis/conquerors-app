.class public Lcom/gpc/noticehub/extended/UOPS;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/gpc/noticehub/extended/UOPS;


# instance fields
.field protected noticeHubModule:Lcom/gpc/noticehub/extended/NoticeHubModule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized sharedInstance()Lcom/gpc/noticehub/extended/UOPS;
    .locals 2

    const-class v0, Lcom/gpc/noticehub/extended/UOPS;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/gpc/noticehub/extended/UOPS;->sInstance:Lcom/gpc/noticehub/extended/UOPS;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/noticehub/extended/UOPS;

    invoke-direct {v1}, Lcom/gpc/noticehub/extended/UOPS;-><init>()V

    sput-object v1, Lcom/gpc/noticehub/extended/UOPS;->sInstance:Lcom/gpc/noticehub/extended/UOPS;

    .line 4
    :cond_0
    sget-object v1, Lcom/gpc/noticehub/extended/UOPS;->sInstance:Lcom/gpc/noticehub/extended/UOPS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public setNoticeHub(Lcom/gpc/noticehub/extended/INoticeHub;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/extended/UOPS;->noticeHubModule:Lcom/gpc/noticehub/extended/NoticeHubModule;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/gpc/noticehub/extended/NoticeHubModule;->setNoticeHub(Lcom/gpc/noticehub/extended/INoticeHub;)V

    :cond_0
    return-void
.end method

.method public setNoticeHubModule(Lcom/gpc/noticehub/extended/NoticeHubModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/extended/UOPS;->noticeHubModule:Lcom/gpc/noticehub/extended/NoticeHubModule;

    return-void
.end method
