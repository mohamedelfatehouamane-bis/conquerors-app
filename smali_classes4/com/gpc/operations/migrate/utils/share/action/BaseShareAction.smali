.class public abstract Lcom/gpc/operations/migrate/utils/share/action/BaseShareAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/share/action/IShareAction;


# instance fields
.field protected fileProviderEntity:Lcom/gpc/operations/migrate/utils/modules/PathModule$FileProviderEntity;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/utils/modules/PathModule$FileProviderEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/share/action/BaseShareAction;->fileProviderEntity:Lcom/gpc/operations/migrate/utils/modules/PathModule$FileProviderEntity;

    return-void
.end method
