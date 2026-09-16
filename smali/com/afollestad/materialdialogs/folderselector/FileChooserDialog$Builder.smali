.class public Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;
.super Ljava/lang/Object;
.source "FileChooserDialog.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field cancelButton:I

.field final transient context:Landroid/content/Context;

.field extensions:[Ljava/lang/String;

.field goUpLabel:Ljava/lang/String;

.field initialPath:Ljava/lang/String;

.field mediumFont:Ljava/lang/String;

.field mimeType:Ljava/lang/String;

.field regularFont:Ljava/lang/String;

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->context:Landroid/content/Context;

    const/high16 p1, 0x1040000

    .line 279
    iput p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->cancelButton:I

    .line 280
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->initialPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 281
    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->mimeType:Ljava/lang/String;

    .line 282
    const-string p1, "..."

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->goUpLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;
    .locals 3

    .line 336
    new-instance v0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;

    invoke-direct {v0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;-><init>()V

    .line 337
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 338
    const-string v2, "builder"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 339
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public cancelButton(I)Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;
    .locals 0

    .line 294
    iput p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->cancelButton:I

    return-object p0
.end method

.method public varargs extensionsFilter([Ljava/lang/String;)Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->extensions:[Ljava/lang/String;

    return-object p0
.end method

.method public goUpLabel(Ljava/lang/String;)Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->goUpLabel:Ljava/lang/String;

    return-object p0
.end method

.method public initialPath(Ljava/lang/String;)Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;
    .locals 0

    if-nez p1, :cond_0

    .line 301
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 303
    :cond_0
    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->initialPath:Ljava/lang/String;

    return-object p0
.end method

.method public mimeType(Ljava/lang/String;)Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public show(Landroidx/fragment/app/FragmentActivity;)Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;
    .locals 0

    .line 352
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->show(Landroidx/fragment/app/FragmentManager;)Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;

    move-result-object p1

    return-object p1
.end method

.method public show(Landroidx/fragment/app/FragmentManager;)Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;
    .locals 1

    .line 345
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->build()Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;

    move-result-object v0

    .line 346
    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    return-object v0
.end method

.method public tag(Ljava/lang/String;)Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;
    .locals 0

    if-nez p1, :cond_0

    .line 322
    const-string p1, "[MD_FILE_SELECTOR]"

    .line 324
    :cond_0
    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public typeface(Ljava/lang/String;Ljava/lang/String;)Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->mediumFont:Ljava/lang/String;

    .line 288
    iput-object p2, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->regularFont:Ljava/lang/String;

    return-object p0
.end method
