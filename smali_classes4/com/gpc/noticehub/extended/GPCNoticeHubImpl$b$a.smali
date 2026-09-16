.class public Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;


# direct methods
.method public constructor <init>(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a;->a:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/gpc/operations/migrate/error/GPCException;ZLcom/gpc/noticehub/bean/GPCUserNoticeResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a;->a:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;

    iget-object v0, v0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;->b:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;

    invoke-static {v0}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;->access$200(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a$a;-><init>(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a;Lcom/gpc/operations/migrate/error/GPCException;ZLcom/gpc/noticehub/bean/GPCUserNoticeResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
