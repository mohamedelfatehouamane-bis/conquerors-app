.class public final Lcom/gpc/operations/service/upload/UploadFileManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/service/upload/UploadFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/service/upload/UploadFileManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized sharedInstance()Lcom/gpc/operations/service/upload/UploadFileManager;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/gpc/operations/service/upload/UploadFileManager;->access$getInstance$cp()Lcom/gpc/operations/service/upload/UploadFileManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/operations/service/upload/UploadFileManager;

    invoke-direct {v0}, Lcom/gpc/operations/service/upload/UploadFileManager;-><init>()V

    invoke-static {v0}, Lcom/gpc/operations/service/upload/UploadFileManager;->access$setInstance$cp(Lcom/gpc/operations/service/upload/UploadFileManager;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/gpc/operations/service/upload/UploadFileManager;->access$getInstance$cp()Lcom/gpc/operations/service/upload/UploadFileManager;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
