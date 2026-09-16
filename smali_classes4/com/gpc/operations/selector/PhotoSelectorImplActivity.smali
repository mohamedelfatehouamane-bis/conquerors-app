.class public Lcom/gpc/operations/selector/PhotoSelectorImplActivity;
.super Lcom/gpc/photoselector/ui/PhotoSelectorActivity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoSelectorImplActivi"


# instance fields
.field private easyPermission:Lcom/gpc/operations/permision/GPCEasyPermission;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/operations/permision/GPCEasyPermission$Builder;

    invoke-direct {v0}, Lcom/gpc/operations/permision/GPCEasyPermission$Builder;-><init>()V

    new-instance v1, Lcom/gpc/operations/selector/PhotoSelectorImplActivity$a;

    invoke-direct {v1, p0}, Lcom/gpc/operations/selector/PhotoSelectorImplActivity$a;-><init>(Lcom/gpc/operations/selector/PhotoSelectorImplActivity;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/gpc/operations/permision/GPCEasyPermission$Builder;->requestPermissionResultHandleListener(Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;)Lcom/gpc/operations/permision/GPCEasyPermission$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/gpc/operations/permision/GPCEasyPermission$Builder;->build()Lcom/gpc/operations/permision/GPCEasyPermission;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/selector/PhotoSelectorImplActivity;->easyPermission:Lcom/gpc/operations/permision/GPCEasyPermission;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/operations/selector/PhotoSelectorImplActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/selector/PhotoSelectorImplActivity;->refreshUI()V

    return-void
.end method

.method public static synthetic access$100(Lcom/gpc/operations/selector/PhotoSelectorImplActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->refreshData()V

    return-void
.end method

.method private refreshUI()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->type:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/selector/PhotoSelectorImplActivity;->easyPermission:Lcom/gpc/operations/permision/GPCEasyPermission;

    invoke-virtual {v0, p0}, Lcom/gpc/operations/permision/GPCEasyPermission;->isFullAccessImageAndVideo(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/selector/PhotoSelectorImplActivity;->easyPermission:Lcom/gpc/operations/permision/GPCEasyPermission;

    invoke-virtual {v0, p0}, Lcom/gpc/operations/permision/GPCEasyPermission;->isFullAccessImage(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->showAuthorizeTip()V

    return-void

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->hideAuthorizeTip()V

    return-void
.end method


# virtual methods
.method public gotoAuthorize(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->type:Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/operations/selector/PhotoSelectorImplActivity;->easyPermission:Lcom/gpc/operations/permision/GPCEasyPermission;

    sget-object v0, Lcom/gpc/operations/permision/GPCMediaPermissionType;->IMAGE_AND_VIDEO:Lcom/gpc/operations/permision/GPCMediaPermissionType;

    sget v1, Lcom/gpc/operations/utils/Constant$ACTIVITY_RESULT_CODE;->REQUEST_CODE_ASK_PERMISSIONS:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/gpc/operations/permision/GPCEasyPermission;->requestMediaPermissionImmediately(Landroid/app/Activity;Lcom/gpc/operations/permision/GPCMediaPermissionType;I)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/gpc/operations/selector/PhotoSelectorImplActivity;->easyPermission:Lcom/gpc/operations/permision/GPCEasyPermission;

    sget-object v0, Lcom/gpc/operations/permision/GPCMediaPermissionType;->ONLY_IMAGE:Lcom/gpc/operations/permision/GPCMediaPermissionType;

    sget v1, Lcom/gpc/operations/utils/Constant$ACTIVITY_RESULT_CODE;->REQUEST_CODE_ASK_PERMISSIONS:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/gpc/operations/permision/GPCEasyPermission;->requestMediaPermissionImmediately(Landroid/app/Activity;Lcom/gpc/operations/permision/GPCMediaPermissionType;I)V

    return-void
.end method

.method public init()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/selector/PhotoSelectorImplActivity;->refreshUI()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/selector/PhotoSelectorImplActivity;->easyPermission:Lcom/gpc/operations/permision/GPCEasyPermission;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/gpc/operations/permision/GPCEasyPermission;->handlePermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method
