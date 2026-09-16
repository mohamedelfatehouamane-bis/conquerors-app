.class public Lcom/gpc/operations/service/UploadResourceService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/service/UploadResourceService;->uploadFile(Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Ljava/lang/String;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

.field public final synthetic b:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/gpc/operations/service/UploadResourceService;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/service/UploadResourceService;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/UploadResourceService$a;->d:Lcom/gpc/operations/service/UploadResourceService;

    iput-object p2, p0, Lcom/gpc/operations/service/UploadResourceService$a;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    iput-object p3, p0, Lcom/gpc/operations/service/UploadResourceService$a;->b:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    iput-object p4, p0, Lcom/gpc/operations/service/UploadResourceService$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/UploadResourceService$a;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-interface {v0, v1}, Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;->onProgress(F)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/gpc/operations/service/UploadResourceService$a;->b:Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    const-string v2, "img0"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/gpc/operations/service/UploadResourceService$a;->d:Lcom/gpc/operations/service/UploadResourceService;

    invoke-static {v1, v0}, Lcom/gpc/operations/service/UploadResourceService;->access$000(Lcom/gpc/operations/service/UploadResourceService;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/operations/service/net/MultipartFormDataFile;

    .line 8
    invoke-interface {v1}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    iget-object v2, p0, Lcom/gpc/operations/service/UploadResourceService$a;->d:Lcom/gpc/operations/service/UploadResourceService;

    iget-object v3, p0, Lcom/gpc/operations/service/UploadResourceService$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/gpc/operations/service/UploadResourceService$a;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    invoke-static {v2, v1, v3, v4}, Lcom/gpc/operations/service/UploadResourceService;->access$100(Lcom/gpc/operations/service/UploadResourceService;Lcom/gpc/operations/service/net/MultipartFormDataFile;Ljava/lang/String;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/gpc/operations/service/UploadResourceService$a;->d:Lcom/gpc/operations/service/UploadResourceService;

    iget-object v3, p0, Lcom/gpc/operations/service/UploadResourceService$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/gpc/operations/service/UploadResourceService$a;->a:Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;

    invoke-static {v2, v1, v3, v4}, Lcom/gpc/operations/service/UploadResourceService;->access$200(Lcom/gpc/operations/service/UploadResourceService;Lcom/gpc/operations/service/net/MultipartFormDataFile;Ljava/lang/String;Lcom/gpc/operations/service/UploadResourceService$OnUploadResourceListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method
