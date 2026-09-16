.class public final Lcom/gpc/util/PermissionHelper$showGotoPermissionsSettingsTipDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/util/PermissionHelper;->showGotoPermissionsSettingsTipDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/util/PermissionHelper;


# direct methods
.method public constructor <init>(Lcom/gpc/util/PermissionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/util/PermissionHelper$showGotoPermissionsSettingsTipDialog$1;->this$0:Lcom/gpc/util/PermissionHelper;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    sget-object p1, Lcom/gpc/util/PermissionHelper;->Companion:Lcom/gpc/util/PermissionHelper$Companion;

    .line 2
    iget-object p2, p0, Lcom/gpc/util/PermissionHelper$showGotoPermissionsSettingsTipDialog$1;->this$0:Lcom/gpc/util/PermissionHelper;

    invoke-static {p2}, Lcom/gpc/util/PermissionHelper;->access$getActivity$p(Lcom/gpc/util/PermissionHelper;)Landroid/app/Activity;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Lcom/gpc/util/PermissionHelper$Companion;->gotoAppPermissionSettingPage(Landroid/content/Context;)V

    return-void
.end method
