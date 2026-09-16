.class public final Lcom/unity3d/ads/core/extensions/UnityAdsLoadErrorMapperExtensionKt;
.super Ljava/lang/Object;
.source "UnityAdsLoadErrorMapperExtension.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/extensions/UnityAdsLoadErrorMapperExtensionKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toDiagnosticReason",
        "",
        "Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;",
        "unity-ads_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toDiagnosticReason(Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/unity3d/ads/core/extensions/UnityAdsLoadErrorMapperExtensionKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 16
    const-string p0, "timeout"

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 15
    :cond_1
    const-string p0, "no_fill"

    return-object p0

    .line 14
    :cond_2
    const-string p0, "invalid"

    return-object p0

    .line 13
    :cond_3
    const-string p0, "internal"

    return-object p0

    .line 12
    :cond_4
    const-string p0, "init_failed"

    return-object p0
.end method
