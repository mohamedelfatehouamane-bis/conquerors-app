.class public Lcom/gpc/webapp/ui/CommonWebAppController$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/compact/OperationsCompatProxy$GetWebSSOTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/webapp/ui/CommonWebAppController;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/webapp/ui/CommonWebAppController;


# direct methods
.method public constructor <init>(Lcom/gpc/webapp/ui/CommonWebAppController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/webapp/ui/CommonWebAppController$b;->a:Lcom/gpc/webapp/ui/CommonWebAppController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get web sso token error."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonWebViewController"

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/gpc/webapp/ui/CommonWebAppController$b;->a:Lcom/gpc/webapp/ui/CommonWebAppController;

    invoke-static {p1, p2}, Lcom/gpc/webapp/ui/CommonWebAppController;->access$600(Lcom/gpc/webapp/ui/CommonWebAppController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gpc/webapp/ui/CommonWebAppController;->access$700(Lcom/gpc/webapp/ui/CommonWebAppController;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/gpc/webapp/ui/CommonWebAppController$b;->a:Lcom/gpc/webapp/ui/CommonWebAppController;

    invoke-static {p1}, Lcom/gpc/webapp/ui/CommonWebAppController;->access$801(Lcom/gpc/webapp/ui/CommonWebAppController;)V

    return-void
.end method
