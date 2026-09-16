.class public Lcom/gpc/util/PermissionHelper$DialogConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/util/PermissionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogConfig"
.end annotation


# instance fields
.field private requestDialogMessage:Ljava/lang/String;

.field private requestDialogNegativeBtnText:Ljava/lang/String;

.field private requestDialogPositiveBtnText:Ljava/lang/String;

.field private requestDialogTitle:Ljava/lang/String;

.field private settingDialogMessage:Ljava/lang/String;

.field private settingDialogTitle:Ljava/lang/String;

.field private settingPositiveBtnText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->requestDialogTitle:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->requestDialogMessage:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->requestDialogNegativeBtnText:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->requestDialogPositiveBtnText:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->settingDialogTitle:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->settingDialogMessage:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->settingPositiveBtnText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getRequestDialogMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->requestDialogMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestDialogNegativeBtnText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->requestDialogNegativeBtnText:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestDialogPositiveBtnText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->requestDialogPositiveBtnText:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestDialogTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->requestDialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getSettingDialogMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->settingDialogMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getSettingDialogTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->settingDialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getSettingPositiveBtnText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->settingPositiveBtnText:Ljava/lang/String;

    return-object v0
.end method

.method public final setRequestDialogMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->requestDialogMessage:Ljava/lang/String;

    return-void
.end method

.method public final setRequestDialogNegativeBtnText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->requestDialogNegativeBtnText:Ljava/lang/String;

    return-void
.end method

.method public final setRequestDialogPositiveBtnText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->requestDialogPositiveBtnText:Ljava/lang/String;

    return-void
.end method

.method public final setRequestDialogTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->requestDialogTitle:Ljava/lang/String;

    return-void
.end method

.method public final setSettingDialogMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->settingDialogMessage:Ljava/lang/String;

    return-void
.end method

.method public final setSettingDialogTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->settingDialogTitle:Ljava/lang/String;

    return-void
.end method

.method public final setSettingPositiveBtnText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/util/PermissionHelper$DialogConfig;->settingPositiveBtnText:Ljava/lang/String;

    return-void
.end method
