.class public Lcom/gpc/operations/permision/impl/GPCDefaultPermission;
.super Lcom/gpc/operations/permision/impl/GPCPermission;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/permision/impl/GPCPermission;-><init>()V

    return-void
.end method


# virtual methods
.method public gotoAppPermissionSettingPage(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/gpc/operations/permision/impl/GPCPermission;->gotoAppPermissionSettingPage(Landroid/content/Context;)V

    return-void
.end method

.method public handlePermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/gpc/operations/permision/impl/GPCPermission;->handlePermissionResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public varargs hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/gpc/operations/permision/impl/GPCPermission;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public varargs requestPermission(Landroid/app/Activity;I[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/gpc/operations/permision/impl/GPCPermission;->requestPermission(Landroid/app/Activity;I[Ljava/lang/String;)V

    return-void
.end method
