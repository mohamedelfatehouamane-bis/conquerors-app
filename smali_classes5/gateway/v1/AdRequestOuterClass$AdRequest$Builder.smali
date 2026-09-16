.class public final Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AdRequestOuterClass.java"

# interfaces
.implements Lgateway/v1/AdRequestOuterClass$AdRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/AdRequestOuterClass$AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgateway/v1/AdRequestOuterClass$AdRequest;",
        "Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;",
        ">;",
        "Lgateway/v1/AdRequestOuterClass$AdRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 843
    invoke-static {}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$000()Lgateway/v1/AdRequestOuterClass$AdRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/AdRequestOuterClass$1;)V
    .locals 0

    .line 836
    invoke-direct {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCampaignState()Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1126
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1127
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$1200(Lgateway/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearDynamicDeviceInfo()Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1055
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1056
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$900(Lgateway/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearImpressionOpportunityId()Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1166
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1167
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$1400(Lgateway/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearPlacementId()Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1220
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1221
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$1600(Lgateway/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearRequestImpressionConfiguration()Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1275
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1276
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$1900(Lgateway/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearScarSignal()Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1315
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1316
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$2100(Lgateway/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearSessionCounters()Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 913
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 914
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$300(Lgateway/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearStaticDeviceInfo()Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 984
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 985
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$600(Lgateway/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearTcf()Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1419
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1420
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$2500(Lgateway/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearWebviewVersion()Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1367
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1368
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$2300(Lgateway/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public getCampaignState()Lgateway/v1/CampaignStateOuterClass$CampaignState;
    .locals 1

    .line 1080
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->getCampaignState()Lgateway/v1/CampaignStateOuterClass$CampaignState;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicDeviceInfo()Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .locals 1

    .line 1009
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->getDynamicDeviceInfo()Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionOpportunityId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1141
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->getImpressionOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 1181
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1194
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->getPlacementIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequestImpressionConfiguration()Z
    .locals 1

    .line 1250
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->getRequestImpressionConfiguration()Z

    move-result v0

    return v0
.end method

.method public getScarSignal()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1290
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->getScarSignal()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSessionCounters()Lgateway/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1

    .line 867
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->getSessionCounters()Lgateway/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v0

    return-object v0
.end method

.method public getStaticDeviceInfo()Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
    .locals 1

    .line 938
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->getStaticDeviceInfo()Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTcf()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1394
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->getTcf()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getWebviewVersion()I
    .locals 1

    .line 1342
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->getWebviewVersion()I

    move-result v0

    return v0
.end method

.method public hasCampaignState()Z
    .locals 1

    .line 1069
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->hasCampaignState()Z

    move-result v0

    return v0
.end method

.method public hasDynamicDeviceInfo()Z
    .locals 1

    .line 998
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->hasDynamicDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasSessionCounters()Z
    .locals 1

    .line 856
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->hasSessionCounters()Z

    move-result v0

    return v0
.end method

.method public hasStaticDeviceInfo()Z
    .locals 1

    .line 927
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->hasStaticDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasTcf()Z
    .locals 1

    .line 1382
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->hasTcf()Z

    move-result v0

    return v0
.end method

.method public hasWebviewVersion()Z
    .locals 1

    .line 1330
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->hasWebviewVersion()Z

    move-result v0

    return v0
.end method

.method public mergeCampaignState(Lgateway/v1/CampaignStateOuterClass$CampaignState;)Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1115
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1116
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$1100(Lgateway/v1/AdRequestOuterClass$AdRequest;Lgateway/v1/CampaignStateOuterClass$CampaignState;)V

    return-object p0
.end method

.method public mergeDynamicDeviceInfo(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1044
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1045
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$800(Lgateway/v1/AdRequestOuterClass$AdRequest;Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public mergeSessionCounters(Lgateway/v1/SessionCountersOuterClass$SessionCounters;)Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 902
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 903
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$200(Lgateway/v1/AdRequestOuterClass$AdRequest;Lgateway/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public mergeStaticDeviceInfo(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 973
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 974
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$500(Lgateway/v1/AdRequestOuterClass$AdRequest;Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method

.method public setCampaignState(Lgateway/v1/CampaignStateOuterClass$CampaignState$Builder;)Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1103
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1104
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {p1}, Lgateway/v1/CampaignStateOuterClass$CampaignState$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$1000(Lgateway/v1/AdRequestOuterClass$AdRequest;Lgateway/v1/CampaignStateOuterClass$CampaignState;)V

    return-object p0
.end method

.method public setCampaignState(Lgateway/v1/CampaignStateOuterClass$CampaignState;)Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1090
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1091
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$1000(Lgateway/v1/AdRequestOuterClass$AdRequest;Lgateway/v1/CampaignStateOuterClass$CampaignState;)V

    return-object p0
.end method

.method public setDynamicDeviceInfo(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;)Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1032
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1033
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {p1}, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    invoke-static {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$700(Lgateway/v1/AdRequestOuterClass$AdRequest;Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public setDynamicDeviceInfo(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1019
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1020
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$700(Lgateway/v1/AdRequestOuterClass$AdRequest;Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1153
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1154
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$1300(Lgateway/v1/AdRequestOuterClass$AdRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPlacementId(Ljava/lang/String;)Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1207
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1208
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$1500(Lgateway/v1/AdRequestOuterClass$AdRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPlacementIdBytes(Lcom/google/protobuf/ByteString;)Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1235
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1236
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$1700(Lgateway/v1/AdRequestOuterClass$AdRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRequestImpressionConfiguration(Z)Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1262
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1263
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$1800(Lgateway/v1/AdRequestOuterClass$AdRequest;Z)V

    return-object p0
.end method

.method public setScarSignal(Lcom/google/protobuf/ByteString;)Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1302
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1303
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$2000(Lgateway/v1/AdRequestOuterClass$AdRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSessionCounters(Lgateway/v1/SessionCountersOuterClass$SessionCounters$Builder;)Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 890
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 891
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {p1}, Lgateway/v1/SessionCountersOuterClass$SessionCounters$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$100(Lgateway/v1/AdRequestOuterClass$AdRequest;Lgateway/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public setSessionCounters(Lgateway/v1/SessionCountersOuterClass$SessionCounters;)Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 877
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 878
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$100(Lgateway/v1/AdRequestOuterClass$AdRequest;Lgateway/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public setStaticDeviceInfo(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;)Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 961
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 962
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {p1}, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    invoke-static {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$400(Lgateway/v1/AdRequestOuterClass$AdRequest;Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method

.method public setStaticDeviceInfo(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 948
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 949
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$400(Lgateway/v1/AdRequestOuterClass$AdRequest;Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method

.method public setTcf(Lcom/google/protobuf/ByteString;)Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1406
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1407
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$2400(Lgateway/v1/AdRequestOuterClass$AdRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setWebviewVersion(I)Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 1354
    invoke-virtual {p0}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 1355
    iget-object v0, p0, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest;->access$2200(Lgateway/v1/AdRequestOuterClass$AdRequest;I)V

    return-object p0
.end method
