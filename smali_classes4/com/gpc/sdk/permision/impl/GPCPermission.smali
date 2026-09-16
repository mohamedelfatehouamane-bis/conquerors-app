.class public abstract Lcom/gpc/sdk/permision/impl/GPCPermission;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCPermission"


# instance fields
.field protected configuration:Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;

.field protected listener:Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultHandleListener;

.field protected requestCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->requestCode:I

    return-void
.end method

.method static synthetic lambda$showDialog$0(Landroid/app/AlertDialog;Lcom/gpc/sdk/permision/listener/OnPermissionDialogClickListener;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-interface {p1, p0}, Lcom/gpc/sdk/permision/listener/OnPermissionDialogClickListener;->negativeButtonClick(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic lambda$showDialog$1(Landroid/app/AlertDialog;Lcom/gpc/sdk/permision/listener/OnPermissionDialogClickListener;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-interface {p1, p0}, Lcom/gpc/sdk/permision/listener/OnPermissionDialogClickListener;->positiveButtonClick(Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method public gotoAppPermissionSettingPage(Landroid/content/Context;)V
    .locals 3

    const-string v0, "GPCPermission"

    .line 1
    :try_start_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, "gotoAppPermissionSettingPage --- manufacturer : ${manufacturer}"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0, p1, v1}, Lcom/gpc/sdk/permision/impl/GPCPermission;->gotoDefaultAppPermissionSettingPage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public gotoDefaultAppPermissionSettingPage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 3
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GPCPermission"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handlePermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->requestCode:I

    if-eq v0, p2, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_8

    .line 2
    array-length v0, p3

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p4, :cond_8

    .line 3
    array-length v0, p4

    if-nez v0, :cond_2

    goto :goto_2

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

    .line 7
    :goto_0
    array-length v4, p4

    if-ge v3, v4, :cond_5

    .line 8
    aget-object v4, p3, v3

    .line 9
    aget v5, p4, v3

    if-nez v5, :cond_3

    .line 10
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {p1, v4}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 14
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p4

    array-length v0, p3

    if-ne p4, v0, :cond_6

    .line 21
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/sdk/permision/impl/GPCPermission;->permissionGranted(Landroid/app/Activity;ILjava/util/List;)V

    return-void

    .line 23
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_7

    .line 24
    invoke-virtual {p0, p1, p2, v2}, Lcom/gpc/sdk/permision/impl/GPCPermission;->permissionNoAsked(Landroid/app/Activity;ILjava/util/List;)V

    return-void

    .line 26
    :cond_7
    invoke-virtual {p0, p1, p2, v1}, Lcom/gpc/sdk/permision/impl/GPCPermission;->permissionDenied(Landroid/app/Activity;ILjava/util/List;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public varargs hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 2
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public abstract permissionDenied(Landroid/app/Activity;ILjava/util/List;)V
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
.end method

.method public abstract permissionGranted(Landroid/app/Activity;ILjava/util/List;)V
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
.end method

.method public abstract permissionNoAsked(Landroid/app/Activity;ILjava/util/List;)V
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
.end method

.method public varargs requestPermission(Landroid/app/Activity;I[Ljava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_1

    .line 1
    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput p2, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->requestCode:I

    .line 3
    invoke-static {p1, p3, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRequestPermissionResultHandleListener(Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultHandleListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->listener:Lcom/gpc/sdk/permision/listener/OnRequestPermissionResultHandleListener;

    return-void
.end method

.method public setUIConfiguration(Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/impl/GPCPermission;->configuration:Lcom/gpc/sdk/permision/ui/GPCPermissionUIConfiguration;

    return-void
.end method

.method public showDialog(Landroid/app/Activity;Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;Lcom/gpc/sdk/permision/listener/OnPermissionDialogClickListener;)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    invoke-virtual {p2}, Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 3
    :goto_1
    invoke-virtual {p2}, Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;->getNegativeBtnText()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v3, v1

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;->getNegativeBtnText()Ljava/lang/String;

    move-result-object v3

    .line 4
    :goto_2
    invoke-virtual {p2}, Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;->getPositiveBtnText()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;->getPositiveBtnText()Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_3
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/gpc/sdk/R$layout;->gpc_a_dialog_alert_view:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 7
    sget v5, Lcom/gpc/sdk/R$id;->tv_title:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 8
    sget v6, Lcom/gpc/sdk/R$id;->tv_content:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 9
    sget v7, Lcom/gpc/sdk/R$id;->tv_positive:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 10
    sget v8, Lcom/gpc/sdk/R$id;->tv_negative:I

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 12
    sget v9, Lcom/gpc/sdk/R$drawable;->gpc_a_bg_ripple_gray_bg_white:I

    invoke-virtual {p1, v9}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    sget v9, Lcom/gpc/sdk/R$drawable;->gpc_a_bg_ripple_gray_bg_white:I

    invoke-virtual {p1, v9}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 20
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 21
    new-instance p2, Lcom/gpc/sdk/permision/impl/GPCPermission$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, p3}, Lcom/gpc/sdk/permision/impl/GPCPermission$$ExternalSyntheticLambda0;-><init>(Landroid/app/AlertDialog;Lcom/gpc/sdk/permision/listener/OnPermissionDialogClickListener;)V

    invoke-virtual {v8, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    new-instance p2, Lcom/gpc/sdk/permision/impl/GPCPermission$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1, p3}, Lcom/gpc/sdk/permision/impl/GPCPermission$$ExternalSyntheticLambda1;-><init>(Landroid/app/AlertDialog;Lcom/gpc/sdk/permision/listener/OnPermissionDialogClickListener;)V

    invoke-virtual {v7, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-static {}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getCurrentI18NItem()Lcom/gpc/sdk/i18n/GPCI18NItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/i18n/GPCI18NItem;->getLocale()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/gpc/sdk/i18n/GPCI18NItem;->ARB:Lcom/gpc/sdk/i18n/GPCI18NItem;

    invoke-virtual {p3}, Lcom/gpc/sdk/i18n/GPCI18NItem;->getLocale()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_5

    .line 31
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 32
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_4

    .line 34
    :cond_5
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutDirection(I)V

    .line 35
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/view/View;->setTextDirection(I)V

    .line 38
    :goto_4
    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 39
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
