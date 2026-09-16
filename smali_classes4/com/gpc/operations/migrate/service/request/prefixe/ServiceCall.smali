.class public Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCall;
.super Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/gpc/operations/migrate/ConfigurationManager;->sharedInstance()Lcom/gpc/operations/migrate/ConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/ConfigurationManager;->configuration()Lcom/gpc/operations/migrate/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/Configuration;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/gpc/operations/migrate/ConfigurationManager;->sharedInstance()Lcom/gpc/operations/migrate/ConfigurationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/operations/migrate/ConfigurationManager;->configuration()Lcom/gpc/operations/migrate/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/operations/migrate/Configuration;->getSecretKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
