.class public Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;
.super Lcom/gpc/sdk/GPCBaseActivity;
.source "SourceFile"

# interfaces
.implements Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/gpc/util/PermissionHelper$OnCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$b;
    }
.end annotation


# static fields
.field public static final ACTION_CLOSE:Ljava/lang/String; = "close"

.field public static final ACTION_DECODEBITMAP:Ljava/lang/String; = "decodebitmap"

.field public static final ACTION_TOGGLEFLASH:Ljava/lang/String; = "toggleflash"

.field public static final SCANNER_CONFIG_PARAM:Ljava/lang/String; = "scanner_config"

.field public static final i:Ljava/lang/String; = "QRCodeScannerActivity"


# instance fields
.field public a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

.field public b:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerConfig;

.field public c:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$b;

.field public d:Landroid/widget/RelativeLayout;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Lcom/gpc/util/PermissionHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/GPCBaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;)Lme/dm7/barcodescanner/zxing/ZXingScannerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    return-object p0
.end method

.method public static synthetic b(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->g:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 2
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget v2, Lcom/gpc/sdk/misc/R$drawable;->gpc_a_core_ic_picture_loading:I

    .line 7
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget v2, Lcom/gpc/sdk/misc/R$drawable;->gpc_a_core_ic_picture_loadfailed:I

    .line 8
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    const/16 v1, 0x1e0

    const/16 v2, 0x320

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheExtraOptions(II)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 14
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 16
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 2
    new-instance v0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$b;-><init>(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$a;)V

    iput-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->c:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$b;

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    const-string v1, "decodebitmap"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    const-string v1, "toggleflash"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 8
    iget-object v1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->c:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$b;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/gpc/sdk/GPCBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->c:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$b;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->b()V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v0, p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->setResultHandler(Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->startCamera()V

    .line 5
    invoke-virtual {p0}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->a()V

    return-void
.end method

.method public handleOnBackPressed()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->sharedInstance()Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->getQrCodeResultListener()Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;->onCancel(I)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1
.end method

.method public handleResult(Lcom/google/zxing/Result;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v1, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$a;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$a;-><init>(Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    invoke-static {}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->sharedInstance()Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->getQrCodeResultListener()Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;->onResult(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/gpc/sdk/GPCBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAllGrand()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->c()V

    return-void
.end method

.method public onAndroidSDKUnderM()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcom/gpc/sdk/misc/R$id;->tv_close:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    invoke-static {}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->sharedInstance()Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;->getQrCodeResultListener()Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, v1}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;->onCancel(I)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    :cond_1
    sget v0, Lcom/gpc/sdk/misc/R$id;->tv_open_photo_picker:I

    if-ne p1, v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->h:Lcom/gpc/util/PermissionHelper;

    invoke-virtual {v0}, Lcom/gpc/util/PermissionHelper;->lacksPermissions()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->selectPicFromLocal()V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->h:Lcom/gpc/util/PermissionHelper;

    invoke-virtual {v0}, Lcom/gpc/util/PermissionHelper;->requestPermissions()V

    .line 18
    :cond_3
    :goto_0
    sget v0, Lcom/gpc/sdk/misc/R$id;->tv_toggle_flash:I

    if-ne p1, v0, :cond_5

    .line 19
    iget-object p1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {p1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->toggleFlash()V

    .line 20
    iget-object p1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->g:Landroid/widget/TextView;

    instance-of p1, p1, Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_5

    .line 21
    iget-object p1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {p1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getFlash()Z

    move-result p1

    const-string v0, "QRCodeScannerActivity"

    if-eqz p1, :cond_4

    .line 22
    iget-object p1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->g:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 23
    const-string p1, "Checked(true)"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_4
    iget-object p1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->g:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 26
    const-string p1, "Checked(false)"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/gpc/sdk/GPCBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/gpc/sdk/GPCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 4
    sget p1, Lcom/gpc/sdk/misc/R$layout;->gpc_a_misc_activity_qrcode_scanner:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "scanner_config"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerConfig;

    iput-object p1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->b:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerConfig;

    .line 8
    sget p1, Lcom/gpc/sdk/misc/R$id;->content_frame:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 9
    new-instance v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    .line 10
    iget-object v1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->b:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerConfig;

    if-eqz v1, :cond_0

    .line 11
    iget v2, v1, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerConfig;->borderMargin:I

    iget v1, v1, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerConfig;->borderColor:I

    invoke-virtual {v0, v2, v1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->init(II)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 15
    sget p1, Lcom/gpc/sdk/misc/R$id;->rl_operation_panel:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->d:Landroid/widget/RelativeLayout;

    .line 17
    iget-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->b:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerConfig;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerConfig;->layoutId:I

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 19
    iget-object p1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->d:Landroid/widget/RelativeLayout;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->b:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerConfig;

    iget v1, v1, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerConfig;->layoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 22
    :cond_1
    sget p1, Lcom/gpc/sdk/misc/R$id;->tv_close:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->e:Landroid/widget/TextView;

    .line 23
    sget p1, Lcom/gpc/sdk/misc/R$id;->tv_open_photo_picker:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->f:Landroid/widget/TextView;

    .line 24
    sget p1, Lcom/gpc/sdk/misc/R$id;->tv_toggle_flash:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->g:Landroid/widget/TextView;

    .line 26
    iget-object p1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object p1, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    new-instance p1, Lcom/gpc/util/PermissionHelper$DialogConfig;

    invoke-direct {p1}, Lcom/gpc/util/PermissionHelper$DialogConfig;-><init>()V

    .line 31
    const-string v0, "Common_Prompt_Title"

    invoke-static {v0}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/gpc/util/PermissionHelper$DialogConfig;->setRequestDialogTitle(Ljava/lang/String;)V

    .line 32
    sget v1, Lcom/gpc/sdk/misc/R$string;->gpc_sdk_request_permissions_grant:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/gpc/util/PermissionHelper$DialogConfig;->setRequestDialogPositiveBtnText(Ljava/lang/String;)V

    .line 33
    const-string v1, "Common_Prompt_Action_Cancel"

    invoke-static {v1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/gpc/util/PermissionHelper$DialogConfig;->setRequestDialogNegativeBtnText(Ljava/lang/String;)V

    .line 34
    sget v1, Lcom/gpc/sdk/misc/R$string;->gpc_sdk_qrcode_request_stroage_camera_message:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/gpc/util/PermissionHelper$DialogConfig;->setRequestDialogMessage(Ljava/lang/String;)V

    .line 36
    invoke-static {v0}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/util/PermissionHelper$DialogConfig;->setSettingDialogTitle(Ljava/lang/String;)V

    .line 37
    sget v0, Lcom/gpc/sdk/misc/R$string;->gpc_sdk_request_stroage_camera_permissions_message:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/util/PermissionHelper$DialogConfig;->setSettingDialogMessage(Ljava/lang/String;)V

    .line 38
    sget v0, Lcom/gpc/sdk/misc/R$string;->gpc_sdk_request_permissions_know:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/util/PermissionHelper$DialogConfig;->setSettingPositiveBtnText(Ljava/lang/String;)V

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v3, "android.permission.CAMERA"

    if-lt v0, v1, :cond_2

    .line 40
    new-instance v0, Lcom/gpc/util/PermissionHelper;

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    const-string v4, "android.permission.READ_MEDIA_VIDEO"

    filled-new-array {v3, v2, v1, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0, p1}, Lcom/gpc/util/PermissionHelper;-><init>(Landroid/app/Activity;[Ljava/lang/String;Lcom/gpc/util/PermissionHelper$OnCallback;Lcom/gpc/util/PermissionHelper$DialogConfig;)V

    iput-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->h:Lcom/gpc/util/PermissionHelper;

    goto :goto_0

    .line 42
    :cond_2
    new-instance v0, Lcom/gpc/util/PermissionHelper;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v3, v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0, p1}, Lcom/gpc/util/PermissionHelper;-><init>(Landroid/app/Activity;[Ljava/lang/String;Lcom/gpc/util/PermissionHelper$OnCallback;Lcom/gpc/util/PermissionHelper$DialogConfig;)V

    iput-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->h:Lcom/gpc/util/PermissionHelper;

    .line 45
    :goto_0
    const-string p1, "QRCodeScannerActivity"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDeny(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/gpc/sdk/GPCBaseActivity;->onPause()V

    .line 2
    const-string v0, "QRCodeScannerActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPermissionsSettingsTipDialog(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/gpc/sdk/GPCBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->h:Lcom/gpc/util/PermissionHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/util/PermissionHelper;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/gpc/sdk/GPCBaseActivity;->onResume()V

    .line 3
    const-string v0, "QRCodeScannerActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/gpc/sdk/GPCBaseActivity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->h:Lcom/gpc/util/PermissionHelper;

    invoke-virtual {v0}, Lcom/gpc/util/PermissionHelper;->lacksPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->c()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->h:Lcom/gpc/util/PermissionHelper;

    invoke-virtual {v0}, Lcom/gpc/util/PermissionHelper;->requestPermissions()V

    .line 8
    :goto_0
    const-string v0, "QRCodeScannerActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/gpc/sdk/GPCBaseActivity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->a:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->stopCamera()V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity;->c:Lcom/gpc/sdk/qrcode/GPCQRCodeScannerActivity$b;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    :cond_0
    const-string v0, "QRCodeScannerActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public selectPicFromLocal()V
    .locals 0

    return-void
.end method
