.class public final Lcom/gpc/util/PermissionHelper$PermissionStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/util/PermissionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionStruct"
.end annotation


# instance fields
.field private lastRationale:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/util/PermissionHelper$PermissionStruct;->name:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/gpc/util/PermissionHelper$PermissionStruct;->lastRationale:Z

    return-void
.end method


# virtual methods
.method public final getLastRationale()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/util/PermissionHelper$PermissionStruct;->lastRationale:Z

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/util/PermissionHelper$PermissionStruct;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final setLastRationale(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/util/PermissionHelper$PermissionStruct;->lastRationale:Z

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/util/PermissionHelper$PermissionStruct;->name:Ljava/lang/String;

    return-void
.end method
