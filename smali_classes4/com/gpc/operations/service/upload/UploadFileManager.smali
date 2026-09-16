.class public final Lcom/gpc/operations/service/upload/UploadFileManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/service/upload/UploadFileManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/operations/service/upload/UploadFileManager$Companion;

.field public static final TAG:Ljava/lang/String; = "UploadFileManager"

.field private static instance:Lcom/gpc/operations/service/upload/UploadFileManager;


# instance fields
.field private final uploadTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gpc/operations/service/upload/UploadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/operations/service/upload/UploadFileManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/operations/service/upload/UploadFileManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/operations/service/upload/UploadFileManager;->Companion:Lcom/gpc/operations/service/upload/UploadFileManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/service/upload/UploadFileManager;->uploadTasks:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/gpc/operations/service/upload/UploadFileManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/service/upload/UploadFileManager;->instance:Lcom/gpc/operations/service/upload/UploadFileManager;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/gpc/operations/service/upload/UploadFileManager;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/gpc/operations/service/upload/UploadFileManager;->instance:Lcom/gpc/operations/service/upload/UploadFileManager;

    return-void
.end method


# virtual methods
.method public final cancel(Ljava/lang/String;)V
    .locals 3

    const-string v0, "taskId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/UploadFileManager;->uploadTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/operations/service/upload/UploadTask;

    .line 2
    invoke-interface {v1}, Lcom/gpc/operations/service/upload/UploadTask;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "upload task cancel id:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UploadFileManager"

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {v1}, Lcom/gpc/operations/service/upload/UploadTask;->cancel()V

    .line 5
    iget-object p1, p0, Lcom/gpc/operations/service/upload/UploadFileManager;->uploadTasks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/UploadFileManager;->uploadTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/operations/service/upload/UploadTask;

    .line 2
    invoke-interface {v1}, Lcom/gpc/operations/service/upload/UploadTask;->cancel()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/service/upload/UploadFileManager;->uploadTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final getAllTaskState()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/operations/service/upload/TaskState;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/gpc/operations/service/upload/UploadFileManager;->uploadTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/operations/service/upload/UploadTask;

    .line 4
    new-instance v3, Lcom/gpc/operations/service/upload/TaskState;

    .line 5
    invoke-interface {v2}, Lcom/gpc/operations/service/upload/UploadTask;->id()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-interface {v2}, Lcom/gpc/operations/service/upload/UploadTask;->itemId()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-interface {v2}, Lcom/gpc/operations/service/upload/UploadTask;->id()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-interface {v2}, Lcom/gpc/operations/service/upload/UploadTask;->progress()F

    move-result v7

    .line 9
    invoke-interface {v2}, Lcom/gpc/operations/service/upload/UploadTask;->isComplete()Z

    move-result v8

    .line 10
    invoke-interface {v2}, Lcom/gpc/operations/service/upload/UploadTask;->result()Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-interface {v2}, Lcom/gpc/operations/service/upload/UploadTask;->path()Ljava/lang/String;

    move-result-object v10

    .line 12
    invoke-direct/range {v3 .. v10}, Lcom/gpc/operations/service/upload/TaskState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getTaskSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/UploadFileManager;->uploadTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getUploadingFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "taskId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/service/upload/UploadFileManager;->uploadTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/operations/service/upload/UploadTask;

    .line 4
    invoke-interface {v2}, Lcom/gpc/operations/service/upload/UploadTask;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Lcom/gpc/operations/service/upload/UploadTask;->path()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final getUploadingFileId(Ljava/lang/String;)J
    .locals 5

    const-string v0, "taskId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/upload/UploadFileManager;->uploadTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/operations/service/upload/UploadTask;

    .line 2
    invoke-interface {v3}, Lcom/gpc/operations/service/upload/UploadTask;->id()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3
    invoke-interface {v3}, Lcom/gpc/operations/service/upload/UploadTask;->fileId()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public final getUploadingFiles()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/gpc/operations/service/upload/UploadFileManager;->uploadTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/operations/service/upload/UploadTask;

    .line 4
    invoke-interface {v2}, Lcom/gpc/operations/service/upload/UploadTask;->path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final uploadFile(Landroid/content/Context;Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Lcom/gpc/operations/service/upload/UploadStateTaskListener;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadStateTaskListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/gpc/operations/service/upload/UploadVideoTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/gpc/operations/service/upload/UploadVideoTask;-><init>(Landroid/content/Context;Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Lcom/gpc/operations/service/upload/UploadStateTaskListener;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/operations/service/upload/UploadImageTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/gpc/operations/service/upload/UploadImageTask;-><init>(Landroid/content/Context;Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Lcom/gpc/operations/service/upload/UploadStateTaskListener;)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/gpc/operations/service/upload/UploadFileManager;->uploadTasks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {v0}, Lcom/gpc/operations/service/upload/UploadTask;->excute()V

    return-void
.end method

.method public final uploadFile(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/operations/service/upload/UploadStateTaskListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "infos"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadStateTaskListeners"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    .line 2
    const-string v2, "info"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "uploadStateTaskListeners[i]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/gpc/operations/service/upload/UploadStateTaskListener;

    invoke-virtual {p0, p1, v1, v2}, Lcom/gpc/operations/service/upload/UploadFileManager;->uploadFile(Landroid/content/Context;Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Lcom/gpc/operations/service/upload/UploadStateTaskListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
