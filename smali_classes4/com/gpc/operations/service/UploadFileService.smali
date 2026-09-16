.class public final Lcom/gpc/operations/service/UploadFileService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/service/UploadFileService$Companion;,
        Lcom/gpc/operations/service/UploadFileService$UploadFileResponseListener;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/operations/service/UploadFileService$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isCancel:Z

.field private uploadResourceService:Lcom/gpc/operations/service/UploadResourceService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/operations/service/UploadFileService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/operations/service/UploadFileService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/operations/service/UploadFileService;->Companion:Lcom/gpc/operations/service/UploadFileService$Companion;

    .line 1
    const-string v0, "UploadFileService"

    sput-object v0, Lcom/gpc/operations/service/UploadFileService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/gpc/operations/service/UploadResourceService;

    invoke-direct {v0, p1}, Lcom/gpc/operations/service/UploadResourceService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/operations/service/UploadFileService;->uploadResourceService:Lcom/gpc/operations/service/UploadResourceService;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/service/UploadFileService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isCancel$p(Lcom/gpc/operations/service/UploadFileService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/gpc/operations/service/UploadFileService;->isCancel:Z

    return p0
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/gpc/operations/service/UploadFileService;->isCancel:Z

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/service/UploadFileService;->uploadResourceService:Lcom/gpc/operations/service/UploadResourceService;

    invoke-virtual {v0}, Lcom/gpc/operations/service/UploadResourceService;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lcom/gpc/operations/service/UploadFileService;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final uploadFile(Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Ljava/lang/String;Lcom/gpc/operations/service/UploadFileService$UploadFileResponseListener;)V
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadResponseListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/UploadFileService;->uploadResourceService:Lcom/gpc/operations/service/UploadResourceService;

    .line 2
    new-instance v1, Lcom/gpc/operations/service/UploadFileService$uploadFile$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/gpc/operations/service/UploadFileService$uploadFile$1;-><init>(Lcom/gpc/operations/service/UploadFileService;Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Lcom/gpc/operations/service/UploadFileService$UploadFileResponseListener;)V

    .line 3
    invoke-virtual {v0, p1, p2, v1}, Lcom/gpc/operations/service/UploadResourceService;->uploadFile(Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Ljava/lang/String;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V

    return-void
.end method

.method public final uploadImageResource(Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Lcom/gpc/operations/service/UploadFileService$UploadFileResponseListener;)V
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadResponseListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/UploadFileService;->uploadResourceService:Lcom/gpc/operations/service/UploadResourceService;

    .line 2
    new-instance v1, Lcom/gpc/operations/service/UploadFileService$uploadImageResource$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/operations/service/UploadFileService$uploadImageResource$1;-><init>(Lcom/gpc/operations/service/UploadFileService;Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Lcom/gpc/operations/service/UploadFileService$UploadFileResponseListener;)V

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/gpc/operations/service/UploadResourceService;->uploadImageResource(Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V

    return-void
.end method
