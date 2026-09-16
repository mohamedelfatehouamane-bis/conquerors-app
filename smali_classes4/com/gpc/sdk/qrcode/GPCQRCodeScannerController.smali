.class public Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "QrCodeController"

.field public static e:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;

.field public c:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$a;-><init>(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;)V

    iput-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->c:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;)Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->b:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;)Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->b:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;

    return-object p1
.end method

.method public static synthetic b(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static sharedInstance()Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->e:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->e:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;

    invoke-direct {v1}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;-><init>()V

    sput-object v1, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->e:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->e:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;

    return-object v0
.end method


# virtual methods
.method public close(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->b:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public getQrCodeResultListener()Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->c:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;

    return-object v0
.end method

.method public present(Landroid/app/Activity;Lcom/gpc/sdk/qrcode/GPCQRCodeScannerConfig;Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string p1, "QrCodeController"

    const-string p2, "QrCode is presenting"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    iput-object p3, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->b:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;

    .line 9
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;

    invoke-direct {p3, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    const-string v0, "scanner_config"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 12
    iget p3, p2, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerConfig;->activityInAnimationResId:I

    if-eqz p3, :cond_1

    iget p2, p2, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerConfig;->activityOutAnimationResId:I

    if-eqz p2, :cond_1

    .line 13
    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method
