.class public Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;
.super Ljava/lang/Object;
.source "FolderChooserDialog.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field allowNewFolder:Z

.field cancelButton:I

.field chooseButton:I

.field final transient context:Landroid/content/Context;

.field goUpLabel:Ljava/lang/String;

.field initialPath:Ljava/lang/String;

.field mediumFont:Ljava/lang/String;

.field newFolderButton:I

.field regularFont:Ljava/lang/String;

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->context:Landroid/content/Context;

    .line 261
    sget p1, Lcom/afollestad/materialdialogs/commons/R$string;->md_choose_label:I

    iput p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->chooseButton:I

    const/high16 p1, 0x1040000

    .line 262
    iput p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->cancelButton:I

    .line 263
    const-string p1, "..."

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->goUpLabel:Ljava/lang/String;

    .line 264
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->initialPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public allowNewFolder(ZI)Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;
    .locals 0

    .line 294
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->allowNewFolder:Z

    if-nez p2, :cond_0

    .line 296
    sget p2, Lcom/afollestad/materialdialogs/commons/R$string;->new_folder:I

    .line 298
    :cond_0
    iput p2, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->newFolderButton:I

    return-object p0
.end method

.method public build()Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;
    .locals 3

    .line 322
    new-instance v0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;

    invoke-direct {v0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;-><init>()V

    .line 323
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 324
    const-string v2, "builder"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 325
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public cancelButton(I)Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;
    .locals 0

    .line 282
    iput p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->cancelButton:I

    return-object p0
.end method

.method public chooseButton(I)Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;
    .locals 0

    .line 276
    iput p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->chooseButton:I

    return-object p0
.end method

.method public goUpLabel(Ljava/lang/String;)Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->goUpLabel:Ljava/lang/String;

    return-object p0
.end method

.method public initialPath(Ljava/lang/String;)Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;
    .locals 0

    if-nez p1, :cond_0

    .line 305
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 307
    :cond_0
    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->initialPath:Ljava/lang/String;

    return-object p0
.end method

.method public show(Landroidx/fragment/app/FragmentActivity;)Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;
    .locals 0

    .line 338
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->show(Landroidx/fragment/app/FragmentManager;)Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;

    move-result-object p1

    return-object p1
.end method

.method public show(Landroidx/fragment/app/FragmentManager;)Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;
    .locals 1

    .line 331
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->build()Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;

    move-result-object v0

    .line 332
    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    return-object v0
.end method

.method public tag(Ljava/lang/String;)Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;
    .locals 0

    if-nez p1, :cond_0

    .line 314
    const-string p1, "[MD_FOLDER_SELECTOR]"

    .line 316
    :cond_0
    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public typeface(Ljava/lang/String;Ljava/lang/String;)Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->mediumFont:Ljava/lang/String;

    .line 270
    iput-object p2, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->regularFont:Ljava/lang/String;

    return-object p0
.end method
