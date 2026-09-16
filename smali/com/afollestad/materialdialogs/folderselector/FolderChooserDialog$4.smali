.class Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$4;
.super Ljava/lang/Object;
.source "FolderChooserDialog.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->createNewFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$4;->this$0:Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInput(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V
    .locals 1

    .line 157
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$4;->this$0:Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->access$100(Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;)Ljava/io/File;

    move-result-object v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result p2

    if-nez p2, :cond_0

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unable to create folder "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", make sure you have the WRITE_EXTERNAL_STORAGE permission or root permissions."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 163
    iget-object p2, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$4;->this$0:Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog$4;->this$0:Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;->access$400(Lcom/afollestad/materialdialogs/folderselector/FolderChooserDialog;)V

    return-void
.end method
