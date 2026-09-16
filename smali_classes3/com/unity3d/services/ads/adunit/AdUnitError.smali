.class public final enum Lcom/unity3d/services/ads/adunit/AdUnitError;
.super Ljava/lang/Enum;
.source "AdUnitError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/ads/adunit/AdUnitError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/ads/adunit/AdUnitError;

.field public static final enum ACTIVITY_ID:Lcom/unity3d/services/ads/adunit/AdUnitError;

.field public static final enum ADUNIT_NULL:Lcom/unity3d/services/ads/adunit/AdUnitError;

.field public static final enum API_LEVEL_ERROR:Lcom/unity3d/services/ads/adunit/AdUnitError;

.field public static final enum CORRUPTED_KEYEVENTLIST:Lcom/unity3d/services/ads/adunit/AdUnitError;

.field public static final enum CORRUPTED_VIEWLIST:Lcom/unity3d/services/ads/adunit/AdUnitError;

.field public static final enum DISPLAY_CUTOUT_INVOKE_FAILED:Lcom/unity3d/services/ads/adunit/AdUnitError;

.field public static final enum DISPLAY_CUTOUT_JSON_ERROR:Lcom/unity3d/services/ads/adunit/AdUnitError;

.field public static final enum DISPLAY_CUTOUT_METHOD_NOT_AVAILABLE:Lcom/unity3d/services/ads/adunit/AdUnitError;

.field public static final enum GENERIC:Lcom/unity3d/services/ads/adunit/AdUnitError;

.field public static final enum LAYOUT_NULL:Lcom/unity3d/services/ads/adunit/AdUnitError;

.field public static final enum MAX_MOTION_EVENT_COUNT_REACHED:Lcom/unity3d/services/ads/adunit/AdUnitError;

.field public static final enum NO_DISPLAY_CUTOUT_AVAILABLE:Lcom/unity3d/services/ads/adunit/AdUnitError;

.field public static final enum ORIENTATION:Lcom/unity3d/services/ads/adunit/AdUnitError;

.field public static final enum SCREENVISIBILITY:Lcom/unity3d/services/ads/adunit/AdUnitError;

.field public static final enum SYSTEM_UI_VISIBILITY:Lcom/unity3d/services/ads/adunit/AdUnitError;

.field public static final enum UNKNOWN_VIEW:Lcom/unity3d/services/ads/adunit/AdUnitError;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 4
    new-instance v0, Lcom/unity3d/services/ads/adunit/AdUnitError;

    const-string v1, "ADUNIT_NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/services/ads/adunit/AdUnitError;

    .line 5
    new-instance v1, Lcom/unity3d/services/ads/adunit/AdUnitError;

    const-string v3, "ACTIVITY_ID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/ads/adunit/AdUnitError;->ACTIVITY_ID:Lcom/unity3d/services/ads/adunit/AdUnitError;

    .line 6
    new-instance v3, Lcom/unity3d/services/ads/adunit/AdUnitError;

    const-string v5, "GENERIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/ads/adunit/AdUnitError;->GENERIC:Lcom/unity3d/services/ads/adunit/AdUnitError;

    .line 7
    new-instance v5, Lcom/unity3d/services/ads/adunit/AdUnitError;

    const-string v7, "ORIENTATION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/services/ads/adunit/AdUnitError;->ORIENTATION:Lcom/unity3d/services/ads/adunit/AdUnitError;

    .line 8
    new-instance v7, Lcom/unity3d/services/ads/adunit/AdUnitError;

    const-string v9, "SCREENVISIBILITY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/unity3d/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/services/ads/adunit/AdUnitError;->SCREENVISIBILITY:Lcom/unity3d/services/ads/adunit/AdUnitError;

    .line 9
    new-instance v9, Lcom/unity3d/services/ads/adunit/AdUnitError;

    const-string v11, "CORRUPTED_VIEWLIST"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/unity3d/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/services/ads/adunit/AdUnitError;->CORRUPTED_VIEWLIST:Lcom/unity3d/services/ads/adunit/AdUnitError;

    .line 10
    new-instance v11, Lcom/unity3d/services/ads/adunit/AdUnitError;

    const-string v13, "CORRUPTED_KEYEVENTLIST"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/unity3d/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/services/ads/adunit/AdUnitError;->CORRUPTED_KEYEVENTLIST:Lcom/unity3d/services/ads/adunit/AdUnitError;

    .line 11
    new-instance v13, Lcom/unity3d/services/ads/adunit/AdUnitError;

    const-string v15, "SYSTEM_UI_VISIBILITY"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Lcom/unity3d/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/unity3d/services/ads/adunit/AdUnitError;->SYSTEM_UI_VISIBILITY:Lcom/unity3d/services/ads/adunit/AdUnitError;

    .line 12
    new-instance v15, Lcom/unity3d/services/ads/adunit/AdUnitError;

    const/16 v17, 0x7

    const-string v2, "UNKNOWN_VIEW"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Lcom/unity3d/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/unity3d/services/ads/adunit/AdUnitError;->UNKNOWN_VIEW:Lcom/unity3d/services/ads/adunit/AdUnitError;

    .line 13
    new-instance v2, Lcom/unity3d/services/ads/adunit/AdUnitError;

    const/16 v19, 0x8

    const-string v4, "LAYOUT_NULL"

    const/16 v20, 0x2

    const/16 v6, 0x9

    invoke-direct {v2, v4, v6}, Lcom/unity3d/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/services/ads/adunit/AdUnitError;->LAYOUT_NULL:Lcom/unity3d/services/ads/adunit/AdUnitError;

    .line 14
    new-instance v4, Lcom/unity3d/services/ads/adunit/AdUnitError;

    const/16 v21, 0x9

    const-string v6, "MAX_MOTION_EVENT_COUNT_REACHED"

    const/16 v22, 0x3

    const/16 v8, 0xa

    invoke-direct {v4, v6, v8}, Lcom/unity3d/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/services/ads/adunit/AdUnitError;->MAX_MOTION_EVENT_COUNT_REACHED:Lcom/unity3d/services/ads/adunit/AdUnitError;

    .line 15
    new-instance v6, Lcom/unity3d/services/ads/adunit/AdUnitError;

    const/16 v23, 0xa

    const-string v8, "API_LEVEL_ERROR"

    const/16 v24, 0x4

    const/16 v10, 0xb

    invoke-direct {v6, v8, v10}, Lcom/unity3d/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/unity3d/services/ads/adunit/AdUnitError;->API_LEVEL_ERROR:Lcom/unity3d/services/ads/adunit/AdUnitError;

    .line 16
    new-instance v8, Lcom/unity3d/services/ads/adunit/AdUnitError;

    const/16 v25, 0xb

    const-string v10, "NO_DISPLAY_CUTOUT_AVAILABLE"

    const/16 v26, 0x5

    const/16 v12, 0xc

    invoke-direct {v8, v10, v12}, Lcom/unity3d/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/unity3d/services/ads/adunit/AdUnitError;->NO_DISPLAY_CUTOUT_AVAILABLE:Lcom/unity3d/services/ads/adunit/AdUnitError;

    .line 17
    new-instance v10, Lcom/unity3d/services/ads/adunit/AdUnitError;

    const/16 v27, 0xc

    const-string v12, "DISPLAY_CUTOUT_METHOD_NOT_AVAILABLE"

    const/16 v28, 0x6

    const/16 v14, 0xd

    invoke-direct {v10, v12, v14}, Lcom/unity3d/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/unity3d/services/ads/adunit/AdUnitError;->DISPLAY_CUTOUT_METHOD_NOT_AVAILABLE:Lcom/unity3d/services/ads/adunit/AdUnitError;

    .line 18
    new-instance v12, Lcom/unity3d/services/ads/adunit/AdUnitError;

    const/16 v29, 0xd

    const-string v14, "DISPLAY_CUTOUT_JSON_ERROR"

    move-object/from16 v30, v0

    const/16 v0, 0xe

    invoke-direct {v12, v14, v0}, Lcom/unity3d/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/unity3d/services/ads/adunit/AdUnitError;->DISPLAY_CUTOUT_JSON_ERROR:Lcom/unity3d/services/ads/adunit/AdUnitError;

    .line 19
    new-instance v14, Lcom/unity3d/services/ads/adunit/AdUnitError;

    const/16 v31, 0xe

    const-string v0, "DISPLAY_CUTOUT_INVOKE_FAILED"

    move-object/from16 v32, v1

    const/16 v1, 0xf

    invoke-direct {v14, v0, v1}, Lcom/unity3d/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/unity3d/services/ads/adunit/AdUnitError;->DISPLAY_CUTOUT_INVOKE_FAILED:Lcom/unity3d/services/ads/adunit/AdUnitError;

    const/16 v0, 0x10

    .line 3
    new-array v0, v0, [Lcom/unity3d/services/ads/adunit/AdUnitError;

    aput-object v30, v0, v16

    aput-object v32, v0, v18

    aput-object v3, v0, v20

    aput-object v5, v0, v22

    aput-object v7, v0, v24

    aput-object v9, v0, v26

    aput-object v11, v0, v28

    aput-object v13, v0, v17

    aput-object v15, v0, v19

    aput-object v2, v0, v21

    aput-object v4, v0, v23

    aput-object v6, v0, v25

    aput-object v8, v0, v27

    aput-object v10, v0, v29

    aput-object v12, v0, v31

    aput-object v14, v0, v1

    sput-object v0, Lcom/unity3d/services/ads/adunit/AdUnitError;->$VALUES:[Lcom/unity3d/services/ads/adunit/AdUnitError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/ads/adunit/AdUnitError;
    .locals 1

    .line 3
    const-class v0, Lcom/unity3d/services/ads/adunit/AdUnitError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/ads/adunit/AdUnitError;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/ads/adunit/AdUnitError;
    .locals 1

    .line 3
    sget-object v0, Lcom/unity3d/services/ads/adunit/AdUnitError;->$VALUES:[Lcom/unity3d/services/ads/adunit/AdUnitError;

    invoke-virtual {v0}, [Lcom/unity3d/services/ads/adunit/AdUnitError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/ads/adunit/AdUnitError;

    return-object v0
.end method
