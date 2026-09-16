.class public Lcom/gpc/util/PermissionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/util/PermissionHelper$Companion;,
        Lcom/gpc/util/PermissionHelper$DialogConfig;,
        Lcom/gpc/util/PermissionHelper$OnCallback;,
        Lcom/gpc/util/PermissionHelper$PermissionStruct;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/util/PermissionHelper$Companion;

.field private static final REQUEST_CODE_ASK_PERMISSIONS:I

.field private static final TAG:Ljava/lang/String; = "PermissionHelper"


# instance fields
.field private activity:Landroid/app/Activity;

.field private callback:Lcom/gpc/util/PermissionHelper$OnCallback;

.field private dialogConfig:Lcom/gpc/util/PermissionHelper$DialogConfig;

.field private fragment:Landroidx/fragment/app/Fragment;

.field private permissionStructs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/util/PermissionHelper$PermissionStruct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/util/PermissionHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/util/PermissionHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/util/PermissionHelper;->Companion:Lcom/gpc/util/PermissionHelper$Companion;

    const/16 v0, 0x2712

    .line 1
    sput v0, Lcom/gpc/util/PermissionHelper;->REQUEST_CODE_ASK_PERMISSIONS:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;[Ljava/lang/String;Lcom/gpc/util/PermissionHelper$OnCallback;Lcom/gpc/util/PermissionHelper$DialogConfig;)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v1 .. v6}, Lcom/gpc/util/PermissionHelper;-><init>(Landroid/app/Activity;[Ljava/lang/String;Lcom/gpc/util/PermissionHelper$OnCallback;Lcom/gpc/util/PermissionHelper$DialogConfig;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;[Ljava/lang/String;Lcom/gpc/util/PermissionHelper$OnCallback;Lcom/gpc/util/PermissionHelper$DialogConfig;Landroidx/fragment/app/Fragment;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/util/PermissionHelper;->permissionStructs:Ljava/util/List;

    .line 28
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 30
    new-instance v3, Lcom/gpc/util/PermissionHelper$PermissionStruct;

    invoke-direct {v3}, Lcom/gpc/util/PermissionHelper$PermissionStruct;-><init>()V

    .line 31
    invoke-virtual {v3, v2}, Lcom/gpc/util/PermissionHelper$PermissionStruct;->setName(Ljava/lang/String;)V

    .line 32
    iget-object v2, p0, Lcom/gpc/util/PermissionHelper;->permissionStructs:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/gpc/util/PermissionHelper;->activity:Landroid/app/Activity;

    .line 35
    iput-object p3, p0, Lcom/gpc/util/PermissionHelper;->callback:Lcom/gpc/util/PermissionHelper$OnCallback;

    .line 36
    iput-object p4, p0, Lcom/gpc/util/PermissionHelper;->dialogConfig:Lcom/gpc/util/PermissionHelper$DialogConfig;

    .line 37
    iput-object p5, p0, Lcom/gpc/util/PermissionHelper;->fragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/gpc/util/PermissionHelper;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/util/PermissionHelper;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$getFragment$p(Lcom/gpc/util/PermissionHelper;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/util/PermissionHelper;->fragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public static final synthetic access$getPermissionStructs$p(Lcom/gpc/util/PermissionHelper;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/util/PermissionHelper;->permissionStructs:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getREQUEST_CODE_ASK_PERMISSIONS$cp()I
    .locals 1

    .line 1
    sget v0, Lcom/gpc/util/PermissionHelper;->REQUEST_CODE_ASK_PERMISSIONS:I

    return v0
.end method


# virtual methods
.method public lacksPermissions()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/util/PermissionHelper;->permissionStructs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/util/PermissionHelper$PermissionStruct;

    .line 2
    iget-object v2, p0, Lcom/gpc/util/PermissionHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/gpc/util/PermissionHelper$PermissionStruct;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 10

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/gpc/util/PermissionHelper;->REQUEST_CODE_ASK_PERMISSIONS:I

    if-ne p1, v0, :cond_7

    .line 2
    const-string p1, "PermissionHelper"

    const-string v0, "onRequestPermissionsResult"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v3, v0, :cond_4

    .line 10
    aget-object v6, p2, v3

    .line 11
    aget v7, p3, v3

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 13
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v5, p0, Lcom/gpc/util/PermissionHelper;->activity:Landroid/app/Activity;

    invoke-static {v5, v6}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    .line 17
    iget-object v7, p0, Lcom/gpc/util/PermissionHelper;->permissionStructs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/gpc/util/PermissionHelper$PermissionStruct;

    .line 18
    invoke-virtual {v8}, Lcom/gpc/util/PermissionHelper$PermissionStruct;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 19
    invoke-virtual {v8}, Lcom/gpc/util/PermissionHelper$PermissionStruct;->getLastRationale()Z

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :goto_1
    if-nez v6, :cond_2

    if-nez v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    const/4 v5, 0x0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    .line 31
    invoke-virtual {p0}, Lcom/gpc/util/PermissionHelper;->showGotoPermissionsSettingsTipDialog()V

    .line 32
    iget-object p2, p0, Lcom/gpc/util/PermissionHelper;->callback:Lcom/gpc/util/PermissionHelper$OnCallback;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1}, Lcom/gpc/util/PermissionHelper$OnCallback;->onPermissionsSettingsTipDialog(Ljava/util/List;)V

    return-void

    :cond_5
    if-eqz v5, :cond_6

    .line 35
    iget-object p1, p0, Lcom/gpc/util/PermissionHelper;->callback:Lcom/gpc/util/PermissionHelper$OnCallback;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/gpc/util/PermissionHelper$OnCallback;->onAllGrand()V

    return-void

    .line 37
    :cond_6
    iget-object p2, p0, Lcom/gpc/util/PermissionHelper;->callback:Lcom/gpc/util/PermissionHelper$OnCallback;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1}, Lcom/gpc/util/PermissionHelper$OnCallback;->onDeny(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public final requestPermissions()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/gpc/util/PermissionHelper;->callback:Lcom/gpc/util/PermissionHelper$OnCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/gpc/util/PermissionHelper$OnCallback;->onAndroidSDKUnderM()V

    :cond_0
    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/gpc/util/PermissionHelper;->permissionStructs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/util/PermissionHelper$PermissionStruct;

    .line 8
    iget-object v2, p0, Lcom/gpc/util/PermissionHelper;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_2

    .line 9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/gpc/util/PermissionHelper$PermissionStruct;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 11
    :cond_2
    iget-object v2, p0, Lcom/gpc/util/PermissionHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/gpc/util/PermissionHelper$PermissionStruct;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    .line 14
    :goto_1
    invoke-virtual {v1, v2}, Lcom/gpc/util/PermissionHelper$PermissionStruct;->setLastRationale(Z)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/gpc/util/PermissionHelper;->showRequestPermissionsTipDialog()V

    return-void
.end method

.method public final showGotoPermissionsSettingsTipDialog()V
    .locals 7

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gpc/util/PermissionHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 4
    iget-object v1, p0, Lcom/gpc/util/PermissionHelper;->dialogConfig:Lcom/gpc/util/PermissionHelper$DialogConfig;

    invoke-virtual {v1}, Lcom/gpc/util/PermissionHelper$DialogConfig;->getSettingDialogTitle()Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/gpc/util/PermissionHelper;->Companion:Lcom/gpc/util/PermissionHelper$Companion;

    iget-object v3, p0, Lcom/gpc/util/PermissionHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/gpc/util/PermissionHelper$Companion;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    .line 6
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "format(format, *args)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 15
    iget-object v1, p0, Lcom/gpc/util/PermissionHelper;->dialogConfig:Lcom/gpc/util/PermissionHelper$DialogConfig;

    invoke-virtual {v1}, Lcom/gpc/util/PermissionHelper$DialogConfig;->getSettingDialogMessage()Ljava/lang/String;

    move-result-object v1

    .line 16
    iget-object v5, p0, Lcom/gpc/util/PermissionHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v5}, Lcom/gpc/util/PermissionHelper$Companion;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v6

    .line 17
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 25
    iget-object v1, p0, Lcom/gpc/util/PermissionHelper;->dialogConfig:Lcom/gpc/util/PermissionHelper$DialogConfig;

    invoke-virtual {v1}, Lcom/gpc/util/PermissionHelper$DialogConfig;->getSettingPositiveBtnText()Ljava/lang/String;

    move-result-object v1

    .line 26
    new-instance v2, Lcom/gpc/util/PermissionHelper$showGotoPermissionsSettingsTipDialog$1;

    invoke-direct {v2, p0}, Lcom/gpc/util/PermissionHelper$showGotoPermissionsSettingsTipDialog$1;-><init>(Lcom/gpc/util/PermissionHelper;)V

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 36
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final showRequestPermissionsTipDialog()V
    .locals 6

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gpc/util/PermissionHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 4
    iget-object v1, p0, Lcom/gpc/util/PermissionHelper;->dialogConfig:Lcom/gpc/util/PermissionHelper$DialogConfig;

    invoke-virtual {v1}, Lcom/gpc/util/PermissionHelper$DialogConfig;->getRequestDialogTitle()Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/gpc/util/PermissionHelper;->Companion:Lcom/gpc/util/PermissionHelper$Companion;

    iget-object v3, p0, Lcom/gpc/util/PermissionHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/gpc/util/PermissionHelper$Companion;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 6
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 13
    iget-object v1, p0, Lcom/gpc/util/PermissionHelper;->dialogConfig:Lcom/gpc/util/PermissionHelper$DialogConfig;

    invoke-virtual {v1}, Lcom/gpc/util/PermissionHelper$DialogConfig;->getRequestDialogMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 15
    iget-object v1, p0, Lcom/gpc/util/PermissionHelper;->dialogConfig:Lcom/gpc/util/PermissionHelper$DialogConfig;

    invoke-virtual {v1}, Lcom/gpc/util/PermissionHelper$DialogConfig;->getRequestDialogNegativeBtnText()Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v2, Lcom/gpc/util/PermissionHelper$showRequestPermissionsTipDialog$1;

    invoke-direct {v2}, Lcom/gpc/util/PermissionHelper$showRequestPermissionsTipDialog$1;-><init>()V

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 29
    iget-object v1, p0, Lcom/gpc/util/PermissionHelper;->dialogConfig:Lcom/gpc/util/PermissionHelper$DialogConfig;

    invoke-virtual {v1}, Lcom/gpc/util/PermissionHelper$DialogConfig;->getRequestDialogPositiveBtnText()Ljava/lang/String;

    move-result-object v1

    .line 30
    new-instance v2, Lcom/gpc/util/PermissionHelper$showRequestPermissionsTipDialog$2;

    invoke-direct {v2, p0}, Lcom/gpc/util/PermissionHelper$showRequestPermissionsTipDialog$2;-><init>(Lcom/gpc/util/PermissionHelper;)V

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 59
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
