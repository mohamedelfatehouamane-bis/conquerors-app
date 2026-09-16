.class public Lcom/gpc/sdk/account/bean/GPCVKAccountAuthenticationProfileV2;
.super Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfileV2;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfileV2;-><init>()V

    .line 2
    const-string v0, "vk"

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfileV2;->setPlatform(Ljava/lang/String;)V

    return-void
.end method
