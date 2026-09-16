.class public Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestPMSBuilder;
.super Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceURLBuilderManager()Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    sget-object v2, Lcom/gpc/sdk/service/helper/prefixengine/RuleType;->PMS:Lcom/gpc/sdk/service/helper/prefixengine/RuleType;

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->getServiceURLBuilder(Lcom/gpc/sdk/GPCConfiguration;Lcom/gpc/sdk/service/helper/prefixengine/RuleType;Ljava/lang/String;)Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->serviceURLBuilder:Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

    return-void
.end method
