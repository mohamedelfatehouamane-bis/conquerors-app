.class public Lcom/gpc/operations/service/UploadResourceService$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/service/IStorageService$OnAbortMutipartUploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/service/UploadResourceService;->abortMutipartPart(Ljava/lang/String;Lcom/gpc/operations/service/bean/CreateMutipartUploadResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/service/UploadResourceService;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/service/UploadResourceService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/UploadResourceService$e;->a:Lcom/gpc/operations/service/UploadResourceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 0

    return-void
.end method
