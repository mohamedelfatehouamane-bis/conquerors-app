.class public Lcom/gpc/operations/migrate/utils/share/InternalShareModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/utils/share/InternalShareModule;->share(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/utils/share/action/IShareAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/utils/share/action/IShareAction;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/gpc/operations/migrate/utils/share/InternalShareModule;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/utils/share/InternalShareModule;Lcom/gpc/operations/migrate/utils/share/action/IShareAction;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule$a;->c:Lcom/gpc/operations/migrate/utils/share/InternalShareModule;

    iput-object p2, p0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule$a;->a:Lcom/gpc/operations/migrate/utils/share/action/IShareAction;

    iput-object p3, p0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(F)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download file progress:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InternalShareModule"

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 2

    .line 1
    const-string v0, "InternalShareModule"

    const-string v1, "download file error"

    invoke-static {v0, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule$a;->c:Lcom/gpc/operations/migrate/utils/share/InternalShareModule;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/share/InternalShareModule;->access$100(Lcom/gpc/operations/migrate/utils/share/InternalShareModule;)Lcom/gpc/operations/migrate/utils/share/OnShareResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule$a;->c:Lcom/gpc/operations/migrate/utils/share/InternalShareModule;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/share/InternalShareModule;->access$100(Lcom/gpc/operations/migrate/utils/share/InternalShareModule;)Lcom/gpc/operations/migrate/utils/share/OnShareResultListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gpc/operations/migrate/utils/share/OnShareResultListener;->onFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download file success :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InternalShareModule"

    invoke-static {v2, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule$a;->a:Lcom/gpc/operations/migrate/utils/share/action/IShareAction;

    iget-object v2, p0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule$a;->c:Lcom/gpc/operations/migrate/utils/share/InternalShareModule;

    invoke-static {v2}, Lcom/gpc/operations/migrate/utils/share/InternalShareModule;->access$000(Lcom/gpc/operations/migrate/utils/share/InternalShareModule;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule$a;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3, p1}, Lcom/gpc/operations/migrate/utils/share/action/IShareAction;->execute(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule$a;->c:Lcom/gpc/operations/migrate/utils/share/InternalShareModule;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/share/InternalShareModule;->access$100(Lcom/gpc/operations/migrate/utils/share/InternalShareModule;)Lcom/gpc/operations/migrate/utils/share/OnShareResultListener;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule$a;->c:Lcom/gpc/operations/migrate/utils/share/InternalShareModule;

    invoke-static {p1}, Lcom/gpc/operations/migrate/utils/share/InternalShareModule;->access$100(Lcom/gpc/operations/migrate/utils/share/InternalShareModule;)Lcom/gpc/operations/migrate/utils/share/OnShareResultListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/gpc/operations/migrate/utils/share/OnShareResultListener;->onSuccess()V

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule$a;->c:Lcom/gpc/operations/migrate/utils/share/InternalShareModule;

    invoke-static {p1}, Lcom/gpc/operations/migrate/utils/share/InternalShareModule;->access$100(Lcom/gpc/operations/migrate/utils/share/InternalShareModule;)Lcom/gpc/operations/migrate/utils/share/OnShareResultListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/gpc/operations/migrate/utils/share/OnShareResultListener;->onFailed(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
