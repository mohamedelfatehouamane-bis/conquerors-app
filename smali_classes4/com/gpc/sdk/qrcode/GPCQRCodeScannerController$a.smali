.class public Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$a;->a:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$a;->a:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;

    invoke-static {v0}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->a(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;)Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$a;->a:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;

    invoke-static {v0}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->a(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;)Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;->onCancel(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$a;->a:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;

    invoke-static {p1}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->b(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$a;->a:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->a(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;)Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$a;->a:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;

    invoke-static {v0}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->a(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;)Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$a;->a:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;

    invoke-static {v0}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->a(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;)Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;->onResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
