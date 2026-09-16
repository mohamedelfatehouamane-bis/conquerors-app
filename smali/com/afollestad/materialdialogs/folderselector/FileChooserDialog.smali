.class public Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "FileChooserDialog.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$FileSorter;,
        Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;,
        Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$FileCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAG:Ljava/lang/String; = "[MD_FILE_SELECTOR]"


# instance fields
.field private callback:Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$FileCallback;

.field private canGoUp:Z

.field private parentContents:[Ljava/io/File;

.field private parentFolder:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->canGoUp:Z

    return-void
.end method

.method private checkIfCanGoUp()V
    .locals 3

    const/4 v0, 0x0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->parentFolder:Ljava/io/File;

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
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->canGoUp:Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 216
    :catch_0
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->canGoUp:Z

    return-void
.end method

.method private getBuilder()Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;
    .locals 2

    .line 255
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "builder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;

    return-object v0
.end method


# virtual methods
.method fileIsMimeType(Ljava/io/File;Ljava/lang/String;Landroid/webkit/MimeTypeMap;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p2, :cond_9

    .line 93
    const-string v1, "*/*"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2e

    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    return v3

    :cond_1
    add-int/2addr v1, v0

    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 103
    const-string v1, "json"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    const-string p1, "application/json"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 106
    :cond_2
    invoke-virtual {p3, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return v3

    .line 111
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    return v0

    :cond_4
    const/16 p3, 0x2f

    .line 115
    invoke-virtual {p2, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_5

    return v3

    .line 119
    :cond_5
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v1, v0

    .line 120
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 121
    const-string v1, "*"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    return v3

    .line 124
    :cond_6
    invoke-virtual {p1, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    if-ne p2, v2, :cond_7

    return v3

    .line 128
    :cond_7
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v0

    :cond_8
    return v3

    :cond_9
    :goto_0
    return v0
.end method

.method getContentsArray()[Ljava/lang/CharSequence;
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->parentContents:[Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 44
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->canGoUp:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;

    move-result-object v0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->goUpLabel:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 49
    :cond_1
    array-length v0, v0

    iget-boolean v2, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->canGoUp:Z

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 51
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;

    move-result-object v2

    iget-object v2, v2, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->goUpLabel:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 53
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->parentContents:[Ljava/io/File;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 54
    iget-boolean v3, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->canGoUp:Z

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

.method public getInitialPath()Ljava/lang/String;
    .locals 1

    .line 249
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;

    move-result-object v0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->initialPath:Ljava/lang/String;

    return-object v0
.end method

.method listFiles(Ljava/lang/String;[Ljava/lang/String;)[Ljava/io/File;
    .locals 12

    .line 60
    iget-object v0, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->parentFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 63
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    .line 64
    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_4

    aget-object v7, v0, v6

    .line 65
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 66
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_2

    .line 70
    array-length v8, p2

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, p2, v9

    .line 71
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 77
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 80
    invoke-virtual {p0, v7, p1, v3}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->fileIsMimeType(Ljava/io/File;Ljava/lang/String;Landroid/webkit/MimeTypeMap;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 81
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 86
    :cond_4
    new-instance p1, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$FileSorter;

    invoke-direct {p1, v2}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$FileSorter;-><init>(Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$1;)V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 87
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/io/File;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/io/File;

    return-object p1

    :cond_5
    return-object v2
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 222
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 223
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$FileCallback;

    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$FileCallback;

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->callback:Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$FileCallback;

    return-void

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$FileCallback;

    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$FileCallback;

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->callback:Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$FileCallback;

    return-void

    .line 228
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FileChooserDialog needs to be shown from an Activity/Fragment implementing FileCallback."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 140
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 141
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 144
    new-instance p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/afollestad/materialdialogs/commons/R$string;->md_error_label:I

    .line 145
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v0, Lcom/afollestad/materialdialogs/commons/R$string;->md_storage_perm_error:I

    .line 146
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    .line 147
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object p1

    return-object p1

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "builder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "current_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;

    move-result-object v1

    iget-object v1, v1, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->initialPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->parentFolder:Ljava/io/File;

    .line 158
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->checkIfCanGoUp()V

    .line 159
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;

    move-result-object p1

    iget-object p1, p1, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->mimeType:Ljava/lang/String;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;

    move-result-object v0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->extensions:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->listFiles(Ljava/lang/String;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->parentContents:[Ljava/io/File;

    .line 160
    new-instance p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->parentFolder:Ljava/io/File;

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 162
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;

    move-result-object v0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->mediumFont:Ljava/lang/String;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;

    move-result-object v1

    iget-object v1, v1, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->regularFont:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->typeface(Ljava/lang/String;Ljava/lang/String;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 163
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getContentsArray()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 164
    invoke-virtual {p1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$1;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$1;-><init>(Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;)V

    .line 165
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 173
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;

    move-result-object v0

    iget v0, v0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->cancelButton:I

    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object p1

    return-object p1

    .line 152
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must create a FileChooserDialog using the Builder."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 179
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 180
    iget-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->callback:Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$FileCallback;

    if-eqz p1, :cond_0

    .line 181
    invoke-interface {p1, p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$FileCallback;->onFileChooserDismissed(Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;)V

    :cond_0
    return-void
.end method

.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 1

    .line 187
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->canGoUp:Z

    const-string p2, "/storage/emulated"

    const/4 p4, 0x1

    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    .line 188
    iget-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->parentFolder:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->parentFolder:Ljava/io/File;

    .line 189
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->parentFolder:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->parentFolder:Ljava/io/File;

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->parentFolder:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->canGoUp:Z

    goto :goto_1

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->parentContents:[Ljava/io/File;

    if-eqz p1, :cond_3

    add-int/lit8 p3, p3, -0x1

    :cond_3
    aget-object p1, v0, p3

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->parentFolder:Ljava/io/File;

    .line 195
    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->canGoUp:Z

    .line 196
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 197
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->parentFolder:Ljava/io/File;

    .line 200
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->parentFolder:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 201
    iget-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->callback:Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$FileCallback;

    iget-object p2, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->parentFolder:Ljava/io/File;

    invoke-interface {p1, p0, p2}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$FileCallback;->onFileSelection(Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;Ljava/io/File;)V

    .line 202
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->dismiss()V

    return-void

    .line 204
    :cond_5
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;

    move-result-object p1

    iget-object p1, p1, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->mimeType:Ljava/lang/String;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;

    move-result-object p2

    iget-object p2, p2, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->extensions:[Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->listFiles(Ljava/lang/String;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->parentContents:[Ljava/io/File;

    .line 205
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 206
    iget-object p2, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->parentFolder:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    iget-object p3, p0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->parentFolder:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    const-string p4, "current_path"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getContentsArray()[Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setItems([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 244
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;)V
    .locals 3

    .line 234
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;

    move-result-object v0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog$Builder;->tag:Ljava/lang/String;

    .line 235
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 237
    move-object v2, v1

    check-cast v2, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 238
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 240
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/afollestad/materialdialogs/folderselector/FileChooserDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
