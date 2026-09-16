.class public Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a;->onResult(Lcom/gpc/operations/migrate/error/GPCException;ZLcom/gpc/noticehub/bean/GPCUserNoticeResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/error/GPCException;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/gpc/noticehub/bean/GPCUserNoticeResult;

.field public final synthetic d:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a;


# direct methods
.method public constructor <init>(Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a;Lcom/gpc/operations/migrate/error/GPCException;ZLcom/gpc/noticehub/bean/GPCUserNoticeResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a$a;->d:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a;

    iput-object p2, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a$a;->a:Lcom/gpc/operations/migrate/error/GPCException;

    iput-boolean p3, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a$a;->b:Z

    iput-object p4, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a$a;->c:Lcom/gpc/noticehub/bean/GPCUserNoticeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a$a;->d:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a;

    iget-object v0, v0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a;->a:Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;

    iget-object v0, v0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b;->a:Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;

    iget-object v1, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a$a;->a:Lcom/gpc/operations/migrate/error/GPCException;

    iget-boolean v2, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a$a;->b:Z

    iget-object v3, p0, Lcom/gpc/noticehub/extended/GPCNoticeHubImpl$b$a$a;->c:Lcom/gpc/noticehub/bean/GPCUserNoticeResult;

    invoke-interface {v0, v1, v2, v3}, Lcom/gpc/noticehub/GPCUserNoticeRefreshListener;->onResult(Lcom/gpc/operations/migrate/error/GPCException;ZLcom/gpc/noticehub/bean/GPCUserNoticeResult;)V

    return-void
.end method
