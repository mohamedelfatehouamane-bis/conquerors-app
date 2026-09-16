.class public final Lcom/unity3d/ads/core/extensions/InitializationStatusReaderExtensionKt;
.super Ljava/lang/Object;
.source "InitializationStatusReaderExtension.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/extensions/InitializationStatusReaderExtensionKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "getInitializationStateString",
        "Lcom/unity3d/ads/core/data/model/InitializationStateString;",
        "Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;",
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
.method public static final getInitializationStateString(Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;)Lcom/unity3d/ads/core/data/model/InitializationStateString;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/unity3d/ads/core/extensions/InitializationStatusReaderExtensionKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 11
    sget-object p0, Lcom/unity3d/ads/core/data/model/InitializationStateString;->initialized_failed:Lcom/unity3d/ads/core/data/model/InitializationStateString;

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 10
    :cond_1
    sget-object p0, Lcom/unity3d/ads/core/data/model/InitializationStateString;->initialized_successfully:Lcom/unity3d/ads/core/data/model/InitializationStateString;

    return-object p0

    .line 9
    :cond_2
    sget-object p0, Lcom/unity3d/ads/core/data/model/InitializationStateString;->initializing:Lcom/unity3d/ads/core/data/model/InitializationStateString;

    return-object p0

    .line 8
    :cond_3
    sget-object p0, Lcom/unity3d/ads/core/data/model/InitializationStateString;->not_initialized:Lcom/unity3d/ads/core/data/model/InitializationStateString;

    return-object p0
.end method
