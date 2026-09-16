.class public final Lcom/gpc/util/PermissionHelper$showRequestPermissionsTipDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/util/PermissionHelper;->showRequestPermissionsTipDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPermissionHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionHelper.kt\ncom/gpc/util/PermissionHelper$showRequestPermissionsTipDialog$2\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,584:1\n37#2,2:585\n37#2,2:587\n*S KotlinDebug\n*F\n+ 1 PermissionHelper.kt\ncom/gpc/util/PermissionHelper$showRequestPermissionsTipDialog$2\n*L\n137#1:585,2\n142#1:587,2\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/util/PermissionHelper;


# direct methods
.method public constructor <init>(Lcom/gpc/util/PermissionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/util/PermissionHelper$showRequestPermissionsTipDialog$2;->this$0:Lcom/gpc/util/PermissionHelper;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    const-string p1, "PermissionHelper"

    const-string p2, "confirm request permissions"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object p2, p0, Lcom/gpc/util/PermissionHelper$showRequestPermissionsTipDialog$2;->this$0:Lcom/gpc/util/PermissionHelper;

    invoke-static {p2}, Lcom/gpc/util/PermissionHelper;->access$getPermissionStructs$p(Lcom/gpc/util/PermissionHelper;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/util/PermissionHelper$PermissionStruct;

    .line 8
    invoke-virtual {v0}, Lcom/gpc/util/PermissionHelper$PermissionStruct;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/gpc/util/PermissionHelper$showRequestPermissionsTipDialog$2;->this$0:Lcom/gpc/util/PermissionHelper;

    invoke-static {p2}, Lcom/gpc/util/PermissionHelper;->access$getFragment$p(Lcom/gpc/util/PermissionHelper;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 11
    iget-object p2, p0, Lcom/gpc/util/PermissionHelper$showRequestPermissionsTipDialog$2;->this$0:Lcom/gpc/util/PermissionHelper;

    invoke-static {p2}, Lcom/gpc/util/PermissionHelper;->access$getFragment$p(Lcom/gpc/util/PermissionHelper;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 461
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 462
    invoke-static {}, Lcom/gpc/util/PermissionHelper;->access$getREQUEST_CODE_ASK_PERMISSIONS$cp()I

    move-result v0

    .line 463
    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 468
    :cond_1
    iget-object p2, p0, Lcom/gpc/util/PermissionHelper$showRequestPermissionsTipDialog$2;->this$0:Lcom/gpc/util/PermissionHelper;

    invoke-static {p2}, Lcom/gpc/util/PermissionHelper;->access$getActivity$p(Lcom/gpc/util/PermissionHelper;)Landroid/app/Activity;

    move-result-object p2

    .line 915
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 916
    invoke-static {}, Lcom/gpc/util/PermissionHelper;->access$getREQUEST_CODE_ASK_PERMISSIONS$cp()I

    move-result v0

    .line 917
    invoke-static {p2, p1, v0}, Lcom/facebook/internal/Utility$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
