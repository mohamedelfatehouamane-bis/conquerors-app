.class public Lcom/gpc/operations/permision/impl/GPCMediaPermission;
.super Lcom/gpc/operations/permision/impl/GPCUIPermission;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/permision/impl/GPCUIPermission;-><init>()V

    return-void
.end method


# virtual methods
.method public getReadMediaPermissionGroup(Lcom/gpc/operations/permision/GPCMediaPermissionType;)[Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/gpc/operations/permision/impl/GPCMediaPermission;->getReadMediaPermissionGroupAbove14(Lcom/gpc/operations/permision/GPCMediaPermissionType;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/operations/permision/impl/GPCMediaPermission;->getReadMediaPermissionGroupBelow14()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getReadMediaPermissionGroupAbove14(Lcom/gpc/operations/permision/GPCMediaPermissionType;)[Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_2

    .line 2
    sget-object v0, Lcom/gpc/operations/permision/GPCMediaPermissionType;->ONLY_IMAGE:Lcom/gpc/operations/permision/GPCMediaPermissionType;

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    const-string v2, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    if-ne p1, v0, :cond_0

    .line 3
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Lcom/gpc/operations/permision/GPCMediaPermissionType;->ONLY_VIDEO:Lcom/gpc/operations/permision/GPCMediaPermissionType;

    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    if-ne p1, v0, :cond_1

    .line 5
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    filled-new-array {v2, v1, v3}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    .line 10
    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getReadMediaPermissionGroupBelow14()[Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    .line 2
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 4
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public handlePermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/gpc/operations/permision/impl/GPCPermission;->requestCode:I

    if-eq v0, p2, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p3, :cond_c

    .line 2
    array-length v0, p3

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz p4, :cond_c

    .line 3
    array-length v0, p4

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 4
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7
    :goto_0
    array-length v5, p4

    if-ge v4, v5, :cond_5

    .line 8
    aget-object v5, p3, v4

    .line 9
    aget v6, p4, v4

    if-nez v6, :cond_3

    .line 10
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {p1, v5}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 14
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_4
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20
    :cond_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x22

    if-ge v4, v5, :cond_8

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p4

    array-length v0, p3

    if-ne p4, v0, :cond_6

    .line 23
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/operations/permision/impl/GPCPermission;->permissionGranted(Landroid/app/Activity;ILjava/util/List;)V

    return-void

    .line 25
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_7

    .line 26
    invoke-virtual {p0, p1, p2, v2}, Lcom/gpc/operations/permision/impl/GPCMediaPermission;->permissionNoAsked(Landroid/app/Activity;ILjava/util/List;)V

    return-void

    .line 28
    :cond_7
    invoke-virtual {p0, p1, p2, v1}, Lcom/gpc/operations/permision/impl/GPCPermission;->permissionDenied(Landroid/app/Activity;ILjava/util/List;)V

    return-void

    .line 34
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    array-length v4, p3

    if-ne v0, v4, :cond_9

    .line 35
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/operations/permision/impl/GPCPermission;->permissionGranted(Landroid/app/Activity;ILjava/util/List;)V

    return-void

    .line 37
    :cond_9
    aget p4, p4, v3

    if-nez p4, :cond_a

    .line 39
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/operations/permision/impl/GPCPermission;->permissionGranted(Landroid/app/Activity;ILjava/util/List;)V

    return-void

    .line 41
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_b

    .line 42
    invoke-virtual {p0, p1, p2, v2}, Lcom/gpc/operations/permision/impl/GPCMediaPermission;->permissionNoAsked(Landroid/app/Activity;ILjava/util/List;)V

    return-void

    .line 44
    :cond_b
    invoke-virtual {p0, p1, p2, v1}, Lcom/gpc/operations/permision/impl/GPCPermission;->permissionDenied(Landroid/app/Activity;ILjava/util/List;)V

    :cond_c
    :goto_2
    return-void
.end method

.method public hasReadMediaPermission(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/gpc/operations/permision/impl/GPCMediaPermission;->hasReadMediaUserSelectedPermission(Landroid/app/Activity;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/operations/permision/impl/GPCMediaPermission;->getReadMediaPermissionGroupBelow14()[Ljava/lang/String;

    move-result-object v0

    .line 6
    array-length v1, v0

    if-lez v1, :cond_1

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/gpc/operations/permision/impl/GPCPermission;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public hasReadMediaUserSelectedPermission(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 2
    const-string v0, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/gpc/operations/permision/impl/GPCPermission;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isFullAccessImage(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0x22

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 3
    const-string v0, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return v3

    .line 5
    :cond_1
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method public isFullAccessImageAndVideo(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0x22

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 3
    const-string v0, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return v3

    .line 5
    :cond_1
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method public permissionNoAsked(Landroid/app/Activity;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/permision/impl/GPCUIPermission;->configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {v0}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->isDefaultUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/permision/impl/GPCUIPermission;->configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {v0}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->getMediaNoAskedDialog()Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/permision/impl/GPCMediaPermission$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/gpc/operations/permision/impl/GPCMediaPermission$a;-><init>(Lcom/gpc/operations/permision/impl/GPCMediaPermission;Landroid/app/Activity;ILjava/util/List;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/gpc/operations/permision/impl/GPCUIPermission;->showDialog(Landroid/app/Activity;Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;Lcom/gpc/operations/permision/listener/OnPermissionDialogClickListener;)V

    return-void

    .line 19
    :cond_0
    new-instance v0, Lcom/gpc/operations/permision/impl/GPCMediaPermission$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/gpc/operations/permision/impl/GPCMediaPermission$b;-><init>(Lcom/gpc/operations/permision/impl/GPCMediaPermission;Landroid/app/Activity;ILjava/util/List;)V

    .line 35
    iget-object p1, p0, Lcom/gpc/operations/permision/impl/GPCUIPermission;->configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {p1}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->getPermissionCustomMediaUI()Lcom/gpc/operations/permision/listener/OnShowPermissionCustomMediaUI;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 36
    iget-object p1, p0, Lcom/gpc/operations/permision/impl/GPCUIPermission;->configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {p1}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->getPermissionCustomMediaUI()Lcom/gpc/operations/permision/listener/OnShowPermissionCustomMediaUI;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/gpc/operations/permision/listener/OnShowPermissionCustomMediaUI;->showNoAskedMediaUI(Lcom/gpc/operations/permision/listener/OnPermissionCustomUIOperationListener;)V

    :cond_1
    return-void
.end method

.method public requestMediaPermission(Landroid/app/Activity;Lcom/gpc/operations/permision/GPCMediaPermissionType;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/operations/permision/impl/GPCMediaPermission;->hasReadMediaPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p2}, Lcom/gpc/operations/permision/impl/GPCMediaPermission;->getReadMediaPermissionGroup(Lcom/gpc/operations/permision/GPCMediaPermissionType;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/gpc/operations/permision/impl/GPCPermission;->permissionGranted(Landroid/app/Activity;ILjava/util/List;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/permision/impl/GPCUIPermission;->configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {v0}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->isDefaultUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/gpc/operations/permision/impl/GPCUIPermission;->configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {v0}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->getMediaRequestDialog()Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/permision/impl/GPCMediaPermission$c;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/gpc/operations/permision/impl/GPCMediaPermission$c;-><init>(Lcom/gpc/operations/permision/impl/GPCMediaPermission;Landroid/app/Activity;ILcom/gpc/operations/permision/GPCMediaPermissionType;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/gpc/operations/permision/impl/GPCUIPermission;->showDialog(Landroid/app/Activity;Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;Lcom/gpc/operations/permision/listener/OnPermissionDialogClickListener;)V

    return-void

    .line 20
    :cond_1
    new-instance v0, Lcom/gpc/operations/permision/impl/GPCMediaPermission$d;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/gpc/operations/permision/impl/GPCMediaPermission$d;-><init>(Lcom/gpc/operations/permision/impl/GPCMediaPermission;Landroid/app/Activity;ILcom/gpc/operations/permision/GPCMediaPermissionType;)V

    .line 31
    iget-object p1, p0, Lcom/gpc/operations/permision/impl/GPCUIPermission;->configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {p1}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->getPermissionCustomMediaUI()Lcom/gpc/operations/permision/listener/OnShowPermissionCustomMediaUI;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 32
    iget-object p1, p0, Lcom/gpc/operations/permision/impl/GPCUIPermission;->configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    invoke-virtual {p1}, Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;->getPermissionCustomMediaUI()Lcom/gpc/operations/permision/listener/OnShowPermissionCustomMediaUI;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/gpc/operations/permision/listener/OnShowPermissionCustomMediaUI;->showRequestMediaUI(Lcom/gpc/operations/permision/listener/OnPermissionCustomUIOperationListener;)V

    :cond_2
    return-void
.end method

.method public requestMediaPermissionImmediately(Landroid/app/Activity;Lcom/gpc/operations/permision/GPCMediaPermissionType;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/gpc/operations/permision/impl/GPCMediaPermission;->getReadMediaPermissionGroup(Lcom/gpc/operations/permision/GPCMediaPermissionType;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/gpc/operations/permision/impl/GPCPermission;->requestPermission(Landroid/app/Activity;I[Ljava/lang/String;)V

    return-void
.end method
