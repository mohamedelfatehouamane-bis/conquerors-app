.class public Lcom/gpc/operations/selector/PhotoSelectorImplActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/permision/listener/OnRequestPermissionResultHandleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/selector/PhotoSelectorImplActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/selector/PhotoSelectorImplActivity;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/selector/PhotoSelectorImplActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/selector/PhotoSelectorImplActivity$a;->a:Lcom/gpc/operations/selector/PhotoSelectorImplActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGotoPermissionSettingPage(Landroid/app/Activity;ILjava/util/List;)V
    .locals 0
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

    .line 1
    const-string p1, "PhotoSelectorImplActivi"

    const-string p2, "onGotoPermissionSettingPage"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPermissionDenied(Landroid/app/Activity;ILjava/util/List;)V
    .locals 0
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

    .line 1
    const-string p1, "PhotoSelectorImplActivi"

    const-string p2, "onPermissionDenied"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPermissionDeniedAndNoAsked(Landroid/app/Activity;ILjava/util/List;)V
    .locals 0
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

    .line 1
    const-string p1, "PhotoSelectorImplActivi"

    const-string p2, "onPermissionNoAsked"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPermissionGranted(Landroid/app/Activity;ILjava/util/List;)V
    .locals 0
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

    .line 1
    const-string p1, "PhotoSelectorImplActivi"

    const-string p2, "onPermissionGranted"

    invoke-static {p1, p2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/gpc/operations/selector/PhotoSelectorImplActivity$a;->a:Lcom/gpc/operations/selector/PhotoSelectorImplActivity;

    invoke-static {p1}, Lcom/gpc/operations/selector/PhotoSelectorImplActivity;->access$000(Lcom/gpc/operations/selector/PhotoSelectorImplActivity;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/operations/selector/PhotoSelectorImplActivity$a;->a:Lcom/gpc/operations/selector/PhotoSelectorImplActivity;

    invoke-static {p1}, Lcom/gpc/operations/selector/PhotoSelectorImplActivity;->access$100(Lcom/gpc/operations/selector/PhotoSelectorImplActivity;)V

    return-void
.end method
