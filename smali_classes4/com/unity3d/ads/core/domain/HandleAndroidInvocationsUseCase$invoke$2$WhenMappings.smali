.class public final synthetic Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$WhenMappings;
.super Ljava/lang/Object;
.source "HandleAndroidInvocationsUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->values()[Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->GET_AD_CONTEXT:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->GET_SCREEN_HEIGHT:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->GET_SCREEN_WIDTH:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->GET_CONNECTION_TYPE:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->GET_DEVICE_VOLUME:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->GET_DEVICE_MAX_VOLUME:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->SEND_OPERATIVE_EVENT:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->OPEN_URL:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->STORAGE_WRITE:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->STORAGE_CLEAR:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->STORAGE_DELETE:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->STORAGE_READ:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->STORAGE_GET_KEYS:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->STORAGE_GET:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->STORAGE_SET:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->GET_PRIVACY_FSM:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->SET_PRIVACY_FSM:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->SET_PRIVACY:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->GET_PRIVACY:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->GET_ALLOWED_PII:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->SET_ALLOWED_PII:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->GET_SESSION_TOKEN:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->MARK_CAMPAIGN_STATE_SHOWN:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->REFRESH_AD_DATA:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->UPDATE_TRACKING_TOKEN:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->SEND_PRIVACY_UPDATE_REQUEST:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->SEND_DIAGNOSTIC_EVENT:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    sput-object v0, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$invoke$2$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
