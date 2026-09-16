.class public Lcom/gpc/sdk/jarvis/utils/JPermissionsChecker;
.super Ljava/lang/Object;
.source "JPermissionsChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PermissionsChecker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static lacksPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 28
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs lacksPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4

    .line 17
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 18
    invoke-static {p0, v3}, Lcom/gpc/sdk/jarvis/utils/JPermissionsChecker;->lacksPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
