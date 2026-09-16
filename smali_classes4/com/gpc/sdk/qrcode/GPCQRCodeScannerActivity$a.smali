.class public Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->handleResult(Lcom/google/zxing/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$a;->a:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$a;->a:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;

    invoke-static {v0}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->a(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;)Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$a;->a:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->resumeCameraPreview(Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;)V

    return-void
.end method
