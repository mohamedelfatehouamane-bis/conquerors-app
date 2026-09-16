.class public Lcom/gpc/operations/migrate/utils/common/Persistence;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FILE_NAME:Ljava/lang/String; = "OPS_sdk_data"

.field private static final TAG:Ljava/lang/String; = "Persistence"


# instance fields
.field private context:Landroid/content/Context;

.field private persistence:Lcom/gpc/operations/migrate/utils/IPersistence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/common/Persistence;->context:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/gpc/operations/migrate/utils/EncryptionLocalPersistence;

    const-string v1, "OPS_sdk_data"

    invoke-direct {v0, p1, v1}, Lcom/gpc/operations/migrate/utils/EncryptionLocalPersistence;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/operations/migrate/utils/common/Persistence;->persistence:Lcom/gpc/operations/migrate/utils/IPersistence;

    return-void
.end method


# virtual methods
.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/common/Persistence;->persistence:Lcom/gpc/operations/migrate/utils/IPersistence;

    invoke-interface {v0, p1}, Lcom/gpc/operations/migrate/utils/IPersistence;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/common/Persistence;->persistence:Lcom/gpc/operations/migrate/utils/IPersistence;

    invoke-interface {v0, p1}, Lcom/gpc/operations/migrate/utils/IPersistence;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/common/Persistence;->persistence:Lcom/gpc/operations/migrate/utils/IPersistence;

    invoke-interface {v0, p1, p2}, Lcom/gpc/operations/migrate/utils/IPersistence;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
