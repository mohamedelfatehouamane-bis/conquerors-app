.class public Lcom/gpc/operations/migrate/service/request/cgi/builder/ServiceRequestPMSBuilder;
.super Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->serviceURLBuilderManager()Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/gpc/operations/migrate/ConfigurationManager;->sharedInstance()Lcom/gpc/operations/migrate/ConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/ConfigurationManager;->configuration()Lcom/gpc/operations/migrate/Configuration;

    move-result-object v1

    sget-object v2, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;->PMS:Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lcom/gpc/operations/migrate/service/helper/prefixengine/ServiceURLBuilderManager;->getServiceURLBuilder(Lcom/gpc/operations/migrate/Configuration;Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;Ljava/lang/String;)Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->serviceURLBuilder:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    return-void
.end method
