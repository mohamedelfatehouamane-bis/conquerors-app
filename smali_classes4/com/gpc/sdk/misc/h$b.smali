.class public Lcom/gpc/sdk/misc/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/storage/service/UploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;Ljava/lang/String;JLcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;

.field public final synthetic b:Lcom/gpc/sdk/misc/h;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/h;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/h$b;->b:Lcom/gpc/sdk/misc/h;

    iput-object p2, p0, Lcom/gpc/sdk/misc/h$b;->a:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    .line 1
    const-string v0, "CDNUploaderImpl"

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/misc/h$b;->a:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;

    sget-object v1, Lcom/gpc/sdk/storage/error/GPCStorageErrorCode;->STORAGE_UPLOAD_SHELF_TIME_EX:Lcom/gpc/sdk/error/GPCExceptionMapping;

    invoke-virtual {v1, p1}, Lcom/gpc/sdk/error/GPCExceptionMapping;->generate(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onProgress(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/h$b;->a:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;->onProgress(JJ)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    const-string v0, "CDNUploaderImpl"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/misc/h$b;->a:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;

    invoke-interface {v0}, Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;->onStart()V

    return-void
.end method

.method public onSuceess(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mark_not_AccessKey onSuceess:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDNUploaderImpl"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/misc/h$b;->a:Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
