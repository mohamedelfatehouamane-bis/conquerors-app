.class public Lme/dm7/barcodescanner/core/CameraHandlerThread$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/dm7/barcodescanner/core/CameraHandlerThread$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/hardware/Camera;

.field public final synthetic b:Lme/dm7/barcodescanner/core/CameraHandlerThread$a;


# direct methods
.method public constructor <init>(Lme/dm7/barcodescanner/core/CameraHandlerThread$a;Landroid/hardware/Camera;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lme/dm7/barcodescanner/core/CameraHandlerThread$a$a;->b:Lme/dm7/barcodescanner/core/CameraHandlerThread$a;

    iput-object p2, p0, Lme/dm7/barcodescanner/core/CameraHandlerThread$a$a;->a:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraHandlerThread$a$a;->b:Lme/dm7/barcodescanner/core/CameraHandlerThread$a;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraHandlerThread$a;->b:Lme/dm7/barcodescanner/core/CameraHandlerThread;

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraHandlerThread;->a(Lme/dm7/barcodescanner/core/CameraHandlerThread;)Lme/dm7/barcodescanner/core/BarcodeScannerView;

    move-result-object v0

    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraHandlerThread$a$a;->a:Landroid/hardware/Camera;

    iget-object v2, p0, Lme/dm7/barcodescanner/core/CameraHandlerThread$a$a;->b:Lme/dm7/barcodescanner/core/CameraHandlerThread$a;

    iget v2, v2, Lme/dm7/barcodescanner/core/CameraHandlerThread$a;->a:I

    invoke-static {v1, v2}, Lme/dm7/barcodescanner/core/CameraWrapper;->getWrapper(Landroid/hardware/Camera;I)Lme/dm7/barcodescanner/core/CameraWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setupCameraPreview(Lme/dm7/barcodescanner/core/CameraWrapper;)V

    return-void
.end method
