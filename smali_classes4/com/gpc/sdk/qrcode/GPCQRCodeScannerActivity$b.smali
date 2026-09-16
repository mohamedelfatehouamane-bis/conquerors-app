.class public Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$b;->a:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$b;-><init>(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    const-string p2, "close"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    invoke-static {}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->sharedInstance()Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->getQrCodeResultListener()Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    .line 5
    invoke-interface {p2, v0}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;->onCancel(I)V

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$b;->a:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 10
    :cond_1
    const-string p2, "toggleflash"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 11
    iget-object p2, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$b;->a:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;

    invoke-static {p2}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->a(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;)Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    move-result-object p2

    invoke-virtual {p2}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->toggleFlash()V

    .line 12
    iget-object p2, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$b;->a:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;

    invoke-static {p2}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->b(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;)Landroid/widget/TextView;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/CheckedTextView;

    if-eqz p2, :cond_3

    .line 13
    iget-object p2, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$b;->a:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;

    invoke-static {p2}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->a(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;)Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    move-result-object p2

    invoke-virtual {p2}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getFlash()Z

    move-result p2

    const-string v0, "QRCodeScannerActivity"

    if-eqz p2, :cond_2

    .line 14
    iget-object p2, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$b;->a:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;

    invoke-static {p2}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->b(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;)Landroid/widget/TextView;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckedTextView;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 15
    const-string p2, "Checked(true)"

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object p2, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$b;->a:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;

    invoke-static {p2}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->b(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;)Landroid/widget/TextView;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 18
    const-string p2, "Checked(false)"

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_3
    :goto_0
    const-string p2, "decodebitmap"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method
