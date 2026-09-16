.class public Lcom/gpc/operations/permision/impl/GPCUIPermission;
.super Lcom/gpc/operations/permision/impl/GPCPermission;
.source "SourceFile"


# instance fields
.field protected configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/permision/impl/GPCPermission;-><init>()V

    return-void
.end method

.method static synthetic lambda$showDialog$0(Landroid/app/AlertDialog;Lcom/gpc/operations/permision/listener/OnPermissionDialogClickListener;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-interface {p1, p0}, Lcom/gpc/operations/permision/listener/OnPermissionDialogClickListener;->negativeButtonClick(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic lambda$showDialog$1(Landroid/app/AlertDialog;Lcom/gpc/operations/permision/listener/OnPermissionDialogClickListener;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-interface {p1, p0}, Lcom/gpc/operations/permision/listener/OnPermissionDialogClickListener;->positiveButtonClick(Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method public setUIConfiguration(Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/permision/impl/GPCUIPermission;->configuration:Lcom/gpc/operations/permision/ui/GPCPermissionUIConfiguration;

    return-void
.end method

.method public showDialog(Landroid/app/Activity;Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;Lcom/gpc/operations/permision/listener/OnPermissionDialogClickListener;)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    invoke-virtual {p2}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 3
    :goto_1
    invoke-virtual {p2}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;->getNegativeBtnText()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v3, v1

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;->getNegativeBtnText()Ljava/lang/String;

    move-result-object v3

    .line 4
    :goto_2
    invoke-virtual {p2}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;->getPositiveBtnText()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;->getPositiveBtnText()Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_3
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/gpc/operations/sdk/R$layout;->dialog_alert_view:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 7
    sget v5, Lcom/gpc/operations/sdk/R$id;->tv_title:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 8
    sget v6, Lcom/gpc/operations/sdk/R$id;->tv_content:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 9
    sget v7, Lcom/gpc/operations/sdk/R$id;->tv_positive:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 10
    sget v8, Lcom/gpc/operations/sdk/R$id;->tv_negative:I

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 12
    sget v9, Lcom/gpc/operations/sdk/R$drawable;->ops_a_bg_ripple_gray_bg_white:I

    invoke-virtual {p1, v9}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    sget v9, Lcom/gpc/operations/sdk/R$drawable;->ops_a_bg_ripple_gray_bg_white:I

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
    new-instance p2, Lcom/gpc/operations/permision/impl/GPCUIPermission$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, p3}, Lcom/gpc/operations/permision/impl/GPCUIPermission$$ExternalSyntheticLambda0;-><init>(Landroid/app/AlertDialog;Lcom/gpc/operations/permision/listener/OnPermissionDialogClickListener;)V

    invoke-virtual {v8, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    new-instance p2, Lcom/gpc/operations/permision/impl/GPCUIPermission$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1, p3}, Lcom/gpc/operations/permision/impl/GPCUIPermission$$ExternalSyntheticLambda1;-><init>(Landroid/app/AlertDialog;Lcom/gpc/operations/permision/listener/OnPermissionDialogClickListener;)V

    invoke-virtual {v7, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-static {}, Lcom/gpc/i18n/I18NHelper;->getCurrentI18NItem()Lcom/gpc/i18n/I18NItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/i18n/I18NItem;->getLocale()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/gpc/i18n/I18NItem;->ARB:Lcom/gpc/i18n/I18NItem;

    invoke-virtual {p3}, Lcom/gpc/i18n/I18NItem;->getLocale()Ljava/lang/String;

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
