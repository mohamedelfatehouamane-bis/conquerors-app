.class public Lcom/gpc/util/VersionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static version:Lcom/gpc/sdk/GPCVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/GPCVersion;

    const-string v1, "v2.31.0"

    const/16 v2, 0x92

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/util/VersionUtil;->version:Lcom/gpc/sdk/GPCVersion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/util/VersionUtil;->version:Lcom/gpc/sdk/GPCVersion;

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCVersion;->getGeneralName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
