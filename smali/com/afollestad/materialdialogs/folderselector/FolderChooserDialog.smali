.class public Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "FolderChooserDialog.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$FolderSorter;,
        Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;,
        Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$FolderCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAG:Ljava/lang/String; = "[MD_FOLDER_SELECTOR]"


# instance fields
.field private callback:Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$FolderCallback;

.field private canGoUp:Z

.field private parentContents:[Ljava/io/File;

.field private parentFolder:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->canGoUp:Z

    return-void
.end method

.method static synthetic access$100(Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;)Ljava/io/File;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->parentFolder:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$200(Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;)Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$FolderCallback;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->callback:Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$FolderCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->createNewFolder()V

    return-void
.end method

.method static synthetic access$400(Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->reload()V

    return-void
.end method

.method private checkIfCanGoUp()V
    .locals 3

    const/4 v0, 0x0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->parentFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->canGoUp:Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 194
    :catch_0
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->canGoUp:Z

    return-void
.end method

.method private createNewFolder()V
    .locals 3

    .line 147
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;

    move-result-object v1

    iget v1, v1, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->newFolderButton:I

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$4;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$4;-><init>(Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;)V

    const/4 v2, 0x0

    .line 149
    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->input(IIZLcom/afollestad/materialdialogs/MaterialDialog$InputCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private getBuilder()Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;
    .locals 2

    .line 236
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "builder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;

    return-object v0
.end method

.method private reload()V
    .locals 4

    .line 199
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->parentContents:[Ljava/io/File;

    .line 200
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 201
    iget-object v1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->parentFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->parentFolder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "current_path"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getContentsArray()[Ljava/lang/String;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setItems([Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method getContentsArray()[Ljava/lang/String;
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->parentContents:[Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 45
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->canGoUp:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;

    move-result-object v0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->goUpLabel:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 50
    :cond_1
    array-length v0, v0

    iget-boolean v2, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->canGoUp:Z

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 52
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;

    move-result-object v2

    iget-object v2, v2, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->goUpLabel:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 54
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->parentContents:[Ljava/io/File;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 55
    iget-boolean v3, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->canGoUp:Z

    if-eqz v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method listFiles()[Ljava/io/File;
    .locals 7

    .line 61
    iget-object v0, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->parentFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 64
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 65
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 66
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 69
    :cond_1
    new-instance v0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$FolderSorter;

    invoke-direct {v0, v2}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$FolderSorter;-><init>(Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$1;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    return-object v0

    :cond_2
    return-object v2
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 208
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 209
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$FolderCallback;

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$FolderCallback;

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->callback:Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$FolderCallback;

    return-void

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$FolderCallback;

    if-eqz p1, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$FolderCallback;

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->callback:Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$FolderCallback;

    return-void

    .line 214
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FolderChooserDialog needs to be shown from an Activity/Fragment implementing FolderCallback."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 79
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 80
    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    new-instance p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/afollestad/materialdialogs/commons/R$string;->md_error_label:I

    .line 84
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v0, Lcom/afollestad/materialdialogs/commons/R$string;->md_storage_perm_error:I

    .line 85
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    .line 86
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object p1

    return-object p1

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "builder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 92
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "current_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;

    move-result-object v1

    iget-object v1, v1, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->initialPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->parentFolder:Ljava/io/File;

    .line 96
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->checkIfCanGoUp()V

    .line 97
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->listFiles()[Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->parentContents:[Ljava/io/File;

    .line 98
    new-instance p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 99
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;

    move-result-object v0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->mediumFont:Ljava/lang/String;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;

    move-result-object v1

    iget-object v1, v1, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->regularFont:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->typeface(Ljava/lang/String;Ljava/lang/String;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->parentFolder:Ljava/io/File;

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getContentsArray()[Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 103
    invoke-virtual {p1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$2;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$2;-><init>(Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;)V

    .line 104
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$1;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$1;-><init>(Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;)V

    .line 112
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 120
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;

    move-result-object v1

    iget v1, v1, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->chooseButton:I

    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 121
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;

    move-result-object v1

    iget v1, v1, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->cancelButton:I

    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 122
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;

    move-result-object v1

    iget-boolean v1, v1, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->allowNewFolder:Z

    if-eqz v1, :cond_2

    .line 123
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;

    move-result-object v1

    iget v1, v1, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->newFolderButton:I

    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 124
    new-instance v1, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$3;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$3;-><init>(Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;)V

    invoke-virtual {p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNeutral(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 132
    :cond_2
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;

    move-result-object v1

    iget-object v1, v1, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->initialPath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->canGoUp:Z

    .line 135
    :cond_3
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object p1

    return-object p1

    .line 90
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must create a FolderChooserDialog using the Builder."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 140
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 141
    iget-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->callback:Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$FolderCallback;

    if-eqz p1, :cond_0

    .line 142
    invoke-interface {p1, p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$FolderCallback;->onFolderChooserDismissed(Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;)V

    :cond_0
    return-void
.end method

.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 1

    .line 174
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->canGoUp:Z

    const-string p2, "/storage/emulated"

    const/4 p4, 0x1

    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    .line 175
    iget-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->parentFolder:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->parentFolder:Ljava/io/File;

    .line 176
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->parentFolder:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->parentFolder:Ljava/io/File;

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->parentFolder:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->canGoUp:Z

    goto :goto_1

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->parentContents:[Ljava/io/File;

    if-eqz p1, :cond_3

    add-int/lit8 p3, p3, -0x1

    :cond_3
    aget-object p1, v0, p3

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->parentFolder:Ljava/io/File;

    .line 182
    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->canGoUp:Z

    .line 183
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 184
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->parentFolder:Ljava/io/File;

    .line 187
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->reload()V

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 220
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;)V
    .locals 3

    .line 224
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;

    move-result-object v0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$Builder;->tag:Ljava/lang/String;

    .line 225
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 227
    move-object v2, v1

    check-cast v2, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 228
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 230
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
