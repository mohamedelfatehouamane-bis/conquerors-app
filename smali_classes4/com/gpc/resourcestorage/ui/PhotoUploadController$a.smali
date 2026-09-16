.class public Lcom/gpc/resourcestorage/ui/PhotoUploadController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/resourcestorage/ui/PhotoUploadController;->onPhotoSelectFinish(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/gpc/resourcestorage/ui/PhotoUploadController;


# direct methods
.method public constructor <init>(Lcom/gpc/resourcestorage/ui/PhotoUploadController;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController$a;->b:Lcom/gpc/resourcestorage/ui/PhotoUploadController;

    iput-object p2, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController$a;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController$a;->b:Lcom/gpc/resourcestorage/ui/PhotoUploadController;

    iget-object v1, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/gpc/resourcestorage/ui/PhotoUploadController$a;->b:Lcom/gpc/resourcestorage/ui/PhotoUploadController;

    invoke-static {v1, v0}, Lcom/gpc/resourcestorage/ui/PhotoUploadController;->a(Lcom/gpc/resourcestorage/ui/PhotoUploadController;Ljava/util/ArrayList;)V

    return-void
.end method
