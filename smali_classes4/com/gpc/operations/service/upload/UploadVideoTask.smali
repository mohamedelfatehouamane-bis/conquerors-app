.class public final Lcom/gpc/operations/service/upload/UploadVideoTask;
.super Lcom/gpc/operations/service/upload/BaseUploadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/service/upload/UploadVideoTask$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/operations/service/upload/UploadVideoTask$Companion;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$MMQva0IyWngYrgL6HNAPV6DtFaA(Lcom/gpc/operations/service/upload/UploadVideoTask;)V
    .locals 0

    invoke-static {p0}, Lcom/gpc/operations/service/upload/UploadVideoTask;->excute$lambda$0(Lcom/gpc/operations/service/upload/UploadVideoTask;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/operations/service/upload/UploadVideoTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/operations/service/upload/UploadVideoTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/operations/service/upload/UploadVideoTask;->Companion:Lcom/gpc/operations/service/upload/UploadVideoTask$Companion;

    .line 1
    const-string v0, "UploadVideoTask"

    sput-object v0, Lcom/gpc/operations/service/upload/UploadVideoTask;->TAG:Ljava/lang/String;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/gpc/operations/service/upload/BaseUploadTask;-><init>(Landroid/content/Context;Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Lcom/gpc/operations/service/upload/UploadStateTaskListener;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/service/upload/UploadVideoTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static final excute$lambda$0(Lcom/gpc/operations/service/upload/UploadVideoTask;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "excute in:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseUploadTask"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/service/upload/BaseUploadTask;->getUploadTaskStateListener()Lcom/gpc/operations/service/upload/UploadStateTaskListener;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Lcom/gpc/operations/service/upload/UploadStateTaskListener;->onStart(Lcom/gpc/operations/service/upload/UploadTask;F)V

    .line 4
    new-instance v0, Lcom/gpc/operations/service/upload/UploadVideoTask$excute$1$listener$1;

    invoke-direct {v0, p0}, Lcom/gpc/operations/service/upload/UploadVideoTask$excute$1$listener$1;-><init>(Lcom/gpc/operations/service/upload/UploadVideoTask;)V

    .line 37
    invoke-virtual {p0}, Lcom/gpc/operations/service/upload/BaseUploadTask;->getUploadFileInfo()Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getModuleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RESOURCE_UPLOAD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    sget-object v0, Lcom/gpc/operations/service/upload/UploadVideoTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uploadFileInfo.moduleName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/operations/service/upload/BaseUploadTask;->getUploadFileInfo()Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getModuleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/gpc/operations/service/upload/BaseUploadTask;->getUploadFileInfo()Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getItemId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item_id"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "payloadJson.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/gpc/operations/service/upload/BaseUploadTask;->getUploadFileService()Lcom/gpc/operations/service/UploadFileService;

    move-result-object v3

    invoke-virtual {p0}, Lcom/gpc/operations/service/upload/BaseUploadTask;->getUploadFileInfo()Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    move-result-object p0

    invoke-virtual {v3, p0, v2, v0}, Lcom/gpc/operations/service/UploadFileService;->uploadFile(Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Ljava/lang/String;Lcom/gpc/operations/service/UploadFileService$UploadFileResponseListener;)V

    .line 45
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "excute out:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public excute()V
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/operations/service/upload/UploadVideoTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "excute:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/operations/service/upload/BaseUploadTask;->itemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/service/upload/BaseUploadTask;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/service/upload/UploadVideoTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/gpc/operations/service/upload/UploadVideoTask$$ExternalSyntheticLambda0;-><init>(Lcom/gpc/operations/service/upload/UploadVideoTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/operations/service/upload/BaseUploadTask;->setFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method
