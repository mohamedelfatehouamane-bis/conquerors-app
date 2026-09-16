.class public final Lcom/unity3d/ads/core/data/model/CampaignState;
.super Ljava/lang/Object;
.source "CampaignState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\tH\u00c6\u0003J\t\u0010\u0019\u001a\u00020\tH\u00c6\u0003J;\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\n\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\u00a8\u0006 "
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/model/CampaignState;",
        "",
        "data",
        "Lcom/google/protobuf/ByteString;",
        "dataVersion",
        "",
        "placementId",
        "",
        "loadTimestamp",
        "Lgateway/v1/TimestampsOuterClass$Timestamps;",
        "showTimestamp",
        "(Lcom/google/protobuf/ByteString;ILjava/lang/String;Lgateway/v1/TimestampsOuterClass$Timestamps;Lgateway/v1/TimestampsOuterClass$Timestamps;)V",
        "getData",
        "()Lcom/google/protobuf/ByteString;",
        "getDataVersion",
        "()I",
        "getLoadTimestamp",
        "()Lgateway/v1/TimestampsOuterClass$Timestamps;",
        "getPlacementId",
        "()Ljava/lang/String;",
        "getShowTimestamp",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "unity-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final data:Lcom/google/protobuf/ByteString;

.field private final dataVersion:I

.field private final loadTimestamp:Lgateway/v1/TimestampsOuterClass$Timestamps;

.field private final placementId:Ljava/lang/String;

.field private final showTimestamp:Lgateway/v1/TimestampsOuterClass$Timestamps;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/ByteString;ILjava/lang/String;Lgateway/v1/TimestampsOuterClass$Timestamps;Lgateway/v1/TimestampsOuterClass$Timestamps;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadTimestamp"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showTimestamp"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->data:Lcom/google/protobuf/ByteString;

    .line 8
    iput p2, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->dataVersion:I

    .line 9
    iput-object p3, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->placementId:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->loadTimestamp:Lgateway/v1/TimestampsOuterClass$Timestamps;

    .line 11
    iput-object p5, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->showTimestamp:Lgateway/v1/TimestampsOuterClass$Timestamps;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/data/model/CampaignState;Lcom/google/protobuf/ByteString;ILjava/lang/String;Lgateway/v1/TimestampsOuterClass$Timestamps;Lgateway/v1/TimestampsOuterClass$Timestamps;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/CampaignState;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->data:Lcom/google/protobuf/ByteString;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->dataVersion:I

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->placementId:Ljava/lang/String;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->loadTimestamp:Lgateway/v1/TimestampsOuterClass$Timestamps;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->showTimestamp:Lgateway/v1/TimestampsOuterClass$Timestamps;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/unity3d/ads/core/data/model/CampaignState;->copy(Lcom/google/protobuf/ByteString;ILjava/lang/String;Lgateway/v1/TimestampsOuterClass$Timestamps;Lgateway/v1/TimestampsOuterClass$Timestamps;)Lcom/unity3d/ads/core/data/model/CampaignState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->data:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->dataVersion:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lgateway/v1/TimestampsOuterClass$Timestamps;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->loadTimestamp:Lgateway/v1/TimestampsOuterClass$Timestamps;

    return-object v0
.end method

.method public final component5()Lgateway/v1/TimestampsOuterClass$Timestamps;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->showTimestamp:Lgateway/v1/TimestampsOuterClass$Timestamps;

    return-object v0
.end method

.method public final copy(Lcom/google/protobuf/ByteString;ILjava/lang/String;Lgateway/v1/TimestampsOuterClass$Timestamps;Lgateway/v1/TimestampsOuterClass$Timestamps;)Lcom/unity3d/ads/core/data/model/CampaignState;
    .locals 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadTimestamp"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showTimestamp"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/unity3d/ads/core/data/model/CampaignState;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/unity3d/ads/core/data/model/CampaignState;-><init>(Lcom/google/protobuf/ByteString;ILjava/lang/String;Lgateway/v1/TimestampsOuterClass$Timestamps;Lgateway/v1/TimestampsOuterClass$Timestamps;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/unity3d/ads/core/data/model/CampaignState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/unity3d/ads/core/data/model/CampaignState;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->data:Lcom/google/protobuf/ByteString;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/CampaignState;->data:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->dataVersion:I

    iget v3, p1, Lcom/unity3d/ads/core/data/model/CampaignState;->dataVersion:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->placementId:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/CampaignState;->placementId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->loadTimestamp:Lgateway/v1/TimestampsOuterClass$Timestamps;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/CampaignState;->loadTimestamp:Lgateway/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->showTimestamp:Lgateway/v1/TimestampsOuterClass$Timestamps;

    iget-object p1, p1, Lcom/unity3d/ads/core/data/model/CampaignState;->showTimestamp:Lgateway/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->data:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getDataVersion()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->dataVersion:I

    return v0
.end method

.method public final getLoadTimestamp()Lgateway/v1/TimestampsOuterClass$Timestamps;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->loadTimestamp:Lgateway/v1/TimestampsOuterClass$Timestamps;

    return-object v0
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowTimestamp()Lgateway/v1/TimestampsOuterClass$Timestamps;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->showTimestamp:Lgateway/v1/TimestampsOuterClass$Timestamps;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->data:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->dataVersion:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->placementId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->loadTimestamp:Lgateway/v1/TimestampsOuterClass$Timestamps;

    invoke-virtual {v1}, Lgateway/v1/TimestampsOuterClass$Timestamps;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->showTimestamp:Lgateway/v1/TimestampsOuterClass$Timestamps;

    invoke-virtual {v1}, Lgateway/v1/TimestampsOuterClass$Timestamps;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CampaignState(data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->data:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dataVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->dataVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", placementId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loadTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->loadTimestamp:Lgateway/v1/TimestampsOuterClass$Timestamps;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CampaignState;->showTimestamp:Lgateway/v1/TimestampsOuterClass$Timestamps;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
