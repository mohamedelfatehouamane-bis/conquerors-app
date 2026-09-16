.class public Lcom/gpc/operations/migrate/utils/modules/PathModule$FileProviderEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/migrate/utils/modules/PathModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileProviderEntity"
.end annotation


# instance fields
.field private authority:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/PathModule$FileProviderEntity;->path:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/gpc/operations/migrate/utils/modules/PathModule$FileProviderEntity;->authority:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/PathModule$FileProviderEntity;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/PathModule$FileProviderEntity;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/PathModule$FileProviderEntity;->authority:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/PathModule$FileProviderEntity;->path:Ljava/lang/String;

    return-void
.end method
