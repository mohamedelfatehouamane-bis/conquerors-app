.class public Lcom/gpc/operations/base/JavascriptCreater$UploadImg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/base/JavascriptCreater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadImg"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/operations/base/JavascriptCreater;

.field private uploadImage:Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/base/JavascriptCreater;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/JavascriptCreater$UploadImg;->this$0:Lcom/gpc/operations/base/JavascriptCreater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/gpc/operations/base/JavascriptCreaterV2$Uploader;

    invoke-direct {p1}, Lcom/gpc/operations/base/JavascriptCreaterV2$Uploader;-><init>()V

    iput-object p1, p0, Lcom/gpc/operations/base/JavascriptCreater$UploadImg;->uploadImage:Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;

    return-void
.end method


# virtual methods
.method public checkLimitNum(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/JavascriptCreater$UploadImg;->uploadImage:Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;

    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;->checkLimitNum(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prepare(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/JavascriptCreater$UploadImg;->uploadImage:Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;

    invoke-interface {v0, p1, p2}, Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;->prepare(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public showLoading(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/JavascriptCreater$UploadImg;->uploadImage:Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;

    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;->showLoading(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public showResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/JavascriptCreater$UploadImg;->uploadImage:Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;

    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;->showResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
