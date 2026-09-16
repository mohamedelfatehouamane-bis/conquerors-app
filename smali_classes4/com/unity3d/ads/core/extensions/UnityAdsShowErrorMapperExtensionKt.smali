.class public final Lcom/unity3d/ads/core/extensions/UnityAdsShowErrorMapperExtensionKt;
.super Ljava/lang/Object;
.source "UnityAdsShowErrorMapperExtension.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/extensions/UnityAdsShowErrorMapperExtensionKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toDiagnosticReason",
        "",
        "Lcom/unity3d/ads/UnityAds$UnityAdsShowError;",
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
.method public static final toDiagnosticReason(Lcom/unity3d/ads/UnityAds$UnityAdsShowError;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/unity3d/ads/core/extensions/UnityAdsShowErrorMapperExtensionKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 24
    const-string p0, "unknown"

    return-object p0

    .line 23
    :pswitch_0
    const-string p0, "timeout"

    return-object p0

    .line 22
    :pswitch_1
    const-string p0, "internal"

    return-object p0

    .line 21
    :pswitch_2
    const-string p0, "already_showing"

    return-object p0

    .line 20
    :pswitch_3
    const-string p0, "no_connection"

    return-object p0

    .line 19
    :pswitch_4
    const-string p0, "invalid"

    return-object p0

    .line 18
    :pswitch_5
    const-string p0, "player"

    return-object p0

    .line 17
    :pswitch_6
    const-string p0, "not_ready"

    return-object p0

    .line 16
    :pswitch_7
    const-string p0, "init_failed"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
