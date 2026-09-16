.class public abstract Lcom/gpc/operations/service/upload/BaseUploadTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/service/upload/UploadTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/service/upload/BaseUploadTask$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/operations/service/upload/BaseUploadTask$Companion;

.field public static final TAG:Ljava/lang/String; = "BaseUploadTask"


# instance fields
.field private final context:Landroid/content/Context;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private isCompleted:Z

.field private isFailure:Z

.field private progress:F

.field private result:Ljava/lang/String;

.field private final uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

.field private uploadFileService:Lcom/gpc/operations/service/UploadFileService;

.field private final uploadTaskStateListener:Lcom/gpc/operations/service/upload/UploadStateTaskListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/operations/service/upload/BaseUploadTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/operations/service/upload/BaseUploadTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/operations/service/upload/BaseUploadTask;->Companion:Lcom/gpc/operations/service/upload/BaseUploadTask$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Lcom/gpc/operations/service/upload/UploadStateTaskListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadFileInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadTaskStateListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    .line 4
    iput-object p3, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->uploadTaskStateListener:Lcom/gpc/operations/service/upload/UploadStateTaskListener;

    .line 7
    invoke-static {}, Lcom/gpc/operations/utils/ExcutorUtils;->instanceExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 12
    const-string p2, ""

    iput-object p2, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->result:Ljava/lang/String;

    .line 14
    new-instance p2, Lcom/gpc/operations/service/UploadFileService;

    invoke-direct {p2, p1}, Lcom/gpc/operations/service/UploadFileService;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->uploadFileService:Lcom/gpc/operations/service/UploadFileService;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->uploadFileService:Lcom/gpc/operations/service/UploadFileService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/gpc/operations/service/UploadFileService;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 8
    :catch_0
    const-string v0, "BaseUploadTask"

    const-string v1, "cancel error"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public fileId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public final getFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->future:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final getProgress()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->progress:F

    return v0
.end method

.method public final getResult()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->result:Ljava/lang/String;

    return-object v0
.end method

.method public final getUploadFileInfo()Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    return-object v0
.end method

.method public final getUploadFileService()Lcom/gpc/operations/service/UploadFileService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->uploadFileService:Lcom/gpc/operations/service/UploadFileService;

    return-object v0
.end method

.method public final getUploadTaskStateListener()Lcom/gpc/operations/service/upload/UploadStateTaskListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->uploadTaskStateListener:Lcom/gpc/operations/service/upload/UploadStateTaskListener;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getUploadId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->isCompleted:Z

    return v0
.end method

.method public final isCompleted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->isCompleted:Z

    return v0
.end method

.method public final isFailure()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->isFailure:Z

    return v0
.end method

.method public itemId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getItemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->uploadFileInfo:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-virtual {v0}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public progress()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->progress:F

    return v0
.end method

.method public result()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->result:Ljava/lang/String;

    return-object v0
.end method

.method public final setCompleted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->isCompleted:Z

    return-void
.end method

.method public final setExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public final setFailure(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->isFailure:Z

    return-void
.end method

.method public final setFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->future:Ljava/util/concurrent/Future;

    return-void
.end method

.method public final setProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->progress:F

    return-void
.end method

.method public final setResult(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->result:Ljava/lang/String;

    return-void
.end method

.method public final setUploadFileService(Lcom/gpc/operations/service/UploadFileService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/upload/BaseUploadTask;->uploadFileService:Lcom/gpc/operations/service/UploadFileService;

    return-void
.end method
