.class Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$1;
.super Ljava/lang/Object;
.source "MaterialEditTextPreference.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 1

    .line 139
    sget-object v0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$2;->$SwitchMap$com$afollestad$materialdialogs$DialogAction:[I

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/DialogAction;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 141
    iget-object p2, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    return-void

    .line 149
    :cond_0
    iget-object p2, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;

    const/4 v0, -0x2

    invoke-virtual {p2, p1, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    return-void

    .line 145
    :cond_1
    iget-object p2, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;

    const/4 v0, -0x3

    invoke-virtual {p2, p1, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
