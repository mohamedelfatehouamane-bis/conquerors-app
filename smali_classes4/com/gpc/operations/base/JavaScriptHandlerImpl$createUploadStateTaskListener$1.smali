.class public final Lcom/gpc/operations/base/JavaScriptHandlerImpl$createUploadStateTaskListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/service/upload/UploadStateTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/base/JavaScriptHandlerImpl;->createUploadStateTaskListener(Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;)Lcom/gpc/operations/service/upload/UploadStateTaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $uploadJs:Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;

.field final synthetic this$0:Lcom/gpc/operations/base/JavaScriptHandlerImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/base/JavaScriptHandlerImpl;Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl$createUploadStateTaskListener$1;->this$0:Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    iput-object p2, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl$createUploadStateTaskListener$1;->$uploadJs:Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/gpc/operations/service/upload/UploadTask;Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 5

    const-string v0, "uploadTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"error\":{\"code\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"message\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/error/GPCException;->getReadableUniqueCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"},\"data\":{\"url\":\"\",\"aid\":0,\"item_id\":\"\"}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl$createUploadStateTaskListener$1;->this$0:Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    iget-object v2, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl$createUploadStateTaskListener$1;->$uploadJs:Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;

    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->itemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;->showResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "uploadJs.showResult(resu\u2026temId(), uploadTask.id())"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->loadUrl(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFailure task.id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2c

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/gpc/operations/migrate/error/GPCException;->printReadableUniqueCode()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFileException(Lcom/gpc/operations/service/upload/UploadTask;Ljava/lang/String;)V
    .locals 3

    const-string v0, "uploadTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lcom/gpc/operations/utils/Constant$Error;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"error\":{\"code\":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",\"message\":\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"},\"data\":{\"url\":\"\",\"aid\":0,\"item_id\":\"\"}}"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl$createUploadStateTaskListener$1;->this$0:Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    iget-object v1, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl$createUploadStateTaskListener$1;->$uploadJs:Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;

    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->itemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p2, v2, p1}, Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;->showResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "uploadJs.showResult(resu\u2026temId(), uploadTask.id())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onFinished(Lcom/gpc/operations/service/upload/UploadTask;Ljava/lang/String;)V
    .locals 4

    const-string v0, "uploadTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl$createUploadStateTaskListener$1;->this$0:Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl$createUploadStateTaskListener$1;->$uploadJs:Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;

    .line 3
    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->result()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->itemId()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->id()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-interface {v0, v1, v2, v3}, Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;->showResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadJs.showResult(\n   \u2026d()\n                    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2, v0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->loadUrl(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFinished taskState.result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->result()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFinished taskState.currentItemId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(Lcom/gpc/operations/service/upload/UploadTask;F)V
    .locals 3

    const-string p2, "uploadTask"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->progress()F

    move-result p2

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    const/high16 p2, 0x42b40000    # 90.0f

    .line 5
    :cond_0
    invoke-static {}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProgress uploadTask.currentItemId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->itemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProgress uploadTask.tid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProgress uploadTask.progress:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl$createUploadStateTaskListener$1;->this$0:Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    iget-object v1, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl$createUploadStateTaskListener$1;->$uploadJs:Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;

    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->itemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1, p2}, Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;->showLoading(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p1

    const-string p2, "uploadJs.showLoading(upl\u2026ploadTask.id(), progress)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Lcom/gpc/operations/service/upload/UploadTask;F)V
    .locals 3

    const-string p2, "uploadTask"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStart uploadTask.currentItemId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->itemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStart uploadTask.tid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStart uploadTask.progress:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->progress()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl$createUploadStateTaskListener$1;->this$0:Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    iget-object v0, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl$createUploadStateTaskListener$1;->$uploadJs:Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;

    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->itemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/gpc/operations/service/upload/UploadTask;->id()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;->showLoading(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p1

    const-string v0, "uploadJs.showLoading(upl\u2026), uploadTask.id(), 0.0f)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
