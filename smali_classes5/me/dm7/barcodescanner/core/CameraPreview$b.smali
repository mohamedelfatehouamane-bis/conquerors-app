.class public Lme/dm7/barcodescanner/core/CameraPreview$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/dm7/barcodescanner/core/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lme/dm7/barcodescanner/core/CameraPreview;


# direct methods
.method public constructor <init>(Lme/dm7/barcodescanner/core/CameraPreview;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/dm7/barcodescanner/core/CameraPreview$b;->a:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lme/dm7/barcodescanner/core/CameraPreview$b;->a:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-static {p1}, Lme/dm7/barcodescanner/core/CameraPreview;->e(Lme/dm7/barcodescanner/core/CameraPreview;)V

    return-void
.end method
