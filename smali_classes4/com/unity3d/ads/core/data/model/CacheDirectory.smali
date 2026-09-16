.class public final Lcom/unity3d/ads/core/data/model/CacheDirectory;
.super Ljava/lang/Object;
.source "CacheDirectory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/model/CacheDirectory;",
        "",
        "access",
        "Ljava/io/File;",
        "type",
        "Lcom/unity3d/ads/core/data/model/CacheDirectoryType;",
        "(Ljava/io/File;Lcom/unity3d/ads/core/data/model/CacheDirectoryType;)V",
        "getAccess",
        "()Ljava/io/File;",
        "getType",
        "()Lcom/unity3d/ads/core/data/model/CacheDirectoryType;",
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
.field private final access:Ljava/io/File;

.field private final type:Lcom/unity3d/ads/core/data/model/CacheDirectoryType;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/unity3d/ads/core/data/model/CacheDirectoryType;)V
    .locals 1

    const-string v0, "access"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/CacheDirectory;->access:Ljava/io/File;

    .line 7
    iput-object p2, p0, Lcom/unity3d/ads/core/data/model/CacheDirectory;->type:Lcom/unity3d/ads/core/data/model/CacheDirectoryType;

    return-void
.end method


# virtual methods
.method public final getAccess()Ljava/io/File;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CacheDirectory;->access:Ljava/io/File;

    return-object v0
.end method

.method public final getType()Lcom/unity3d/ads/core/data/model/CacheDirectoryType;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CacheDirectory;->type:Lcom/unity3d/ads/core/data/model/CacheDirectoryType;

    return-object v0
.end method
