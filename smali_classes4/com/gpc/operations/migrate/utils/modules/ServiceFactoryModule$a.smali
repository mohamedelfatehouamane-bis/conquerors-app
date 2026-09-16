.class public Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/api/APIGatewayConfigProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;->onInitFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule$a;->a:Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/ConfigurationManager;->sharedInstance()Lcom/gpc/operations/migrate/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/ConfigurationManager;->configuration()Lcom/gpc/operations/migrate/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/Configuration;->getGameId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/ConfigurationManager;->sharedInstance()Lcom/gpc/operations/migrate/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/ConfigurationManager;->configuration()Lcom/gpc/operations/migrate/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/Configuration;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/ConfigurationManager;->sharedInstance()Lcom/gpc/operations/migrate/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/ConfigurationManager;->configuration()Lcom/gpc/operations/migrate/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/Configuration;->getGameId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
