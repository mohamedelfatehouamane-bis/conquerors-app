.class public final enum Lcom/unity3d/scar/adapter/common/GMAEvent;
.super Ljava/lang/Enum;
.source "GMAEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/scar/adapter/common/GMAEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum AD_CLICKED:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum AD_CLOSED:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum AD_EARNED_REWARD:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum AD_LEFT_APPLICATION:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum AD_LOADED:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum AD_NOT_LOADED_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum AD_SKIPPED:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum AD_STARTED:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum ALREADY_INITIALIZED:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum FIRST_QUARTILE:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum INIT_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum INIT_SUCCESS:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum INTERNAL_LOAD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum INTERNAL_SHOW_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum INTERNAL_SIGNALS_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum INTERSTITIAL_IMPRESSION_RECORDED:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum INTERSTITIAL_SHOW_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum LAST_QUARTILE:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum LOAD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum METHOD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum MIDPOINT:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum NO_AD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum QUERY_NOT_FOUND_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum REWARDED_IMPRESSION_RECORDED:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum REWARDED_SHOW_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum SCAR_NOT_PRESENT:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum SCAR_PRESENT:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum SCAR_UNSUPPORTED:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum SIGNALS:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum SIGNALS_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum THIRD_QUARTILE:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum VERSION:Lcom/unity3d/scar/adapter/common/GMAEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 56

    .line 4
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v1, "SCAR_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->SCAR_PRESENT:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 5
    new-instance v1, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v3, "SCAR_NOT_PRESENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->SCAR_NOT_PRESENT:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 6
    new-instance v3, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v5, "ALREADY_INITIALIZED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/scar/adapter/common/GMAEvent;->ALREADY_INITIALIZED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 7
    new-instance v5, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v7, "INIT_SUCCESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/scar/adapter/common/GMAEvent;->INIT_SUCCESS:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 8
    new-instance v7, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v9, "INIT_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/scar/adapter/common/GMAEvent;->INIT_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 9
    new-instance v9, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v11, "VERSION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/scar/adapter/common/GMAEvent;->VERSION:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 10
    new-instance v11, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v13, "SCAR_UNSUPPORTED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/scar/adapter/common/GMAEvent;->SCAR_UNSUPPORTED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 11
    new-instance v13, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v15, "SIGNALS"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/unity3d/scar/adapter/common/GMAEvent;->SIGNALS:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 12
    new-instance v15, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/16 v17, 0x7

    const-string v2, "SIGNALS_ERROR"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/unity3d/scar/adapter/common/GMAEvent;->SIGNALS_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 13
    new-instance v2, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/16 v19, 0x8

    const-string v4, "INTERNAL_SIGNALS_ERROR"

    const/16 v20, 0x2

    const/16 v6, 0x9

    invoke-direct {v2, v4, v6}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/scar/adapter/common/GMAEvent;->INTERNAL_SIGNALS_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 14
    new-instance v4, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/16 v21, 0x9

    const-string v6, "AD_LOADED"

    const/16 v22, 0x3

    const/16 v8, 0xa

    invoke-direct {v4, v6, v8}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_LOADED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 15
    new-instance v6, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/16 v23, 0xa

    const-string v8, "INTERSTITIAL_IMPRESSION_RECORDED"

    const/16 v24, 0x4

    const/16 v10, 0xb

    invoke-direct {v6, v8, v10}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/unity3d/scar/adapter/common/GMAEvent;->INTERSTITIAL_IMPRESSION_RECORDED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 16
    new-instance v8, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/16 v25, 0xb

    const-string v10, "REWARDED_IMPRESSION_RECORDED"

    const/16 v26, 0x5

    const/16 v12, 0xc

    invoke-direct {v8, v10, v12}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/unity3d/scar/adapter/common/GMAEvent;->REWARDED_IMPRESSION_RECORDED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 17
    new-instance v10, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/16 v27, 0xc

    const-string v12, "INTERNAL_LOAD_ERROR"

    const/16 v28, 0x6

    const/16 v14, 0xd

    invoke-direct {v10, v12, v14}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/unity3d/scar/adapter/common/GMAEvent;->INTERNAL_LOAD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 18
    new-instance v12, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/16 v29, 0xd

    const-string v14, "QUERY_NOT_FOUND_ERROR"

    move-object/from16 v30, v0

    const/16 v0, 0xe

    invoke-direct {v12, v14, v0}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/unity3d/scar/adapter/common/GMAEvent;->QUERY_NOT_FOUND_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 19
    new-instance v14, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/16 v31, 0xe

    const-string v0, "LOAD_ERROR"

    move-object/from16 v32, v1

    const/16 v1, 0xf

    invoke-direct {v14, v0, v1}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/unity3d/scar/adapter/common/GMAEvent;->LOAD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 20
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/16 v33, 0xf

    const-string v1, "NO_AD_ERROR"

    move-object/from16 v34, v2

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->NO_AD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 21
    new-instance v1, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/16 v35, 0x10

    const-string v2, "AD_STARTED"

    move-object/from16 v36, v0

    const/16 v0, 0x11

    invoke-direct {v1, v2, v0}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_STARTED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 22
    new-instance v2, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/16 v37, 0x11

    const-string v0, "INTERNAL_SHOW_ERROR"

    move-object/from16 v38, v1

    const/16 v1, 0x12

    invoke-direct {v2, v0, v1}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/scar/adapter/common/GMAEvent;->INTERNAL_SHOW_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 23
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/16 v39, 0x12

    const-string v1, "AD_NOT_LOADED_ERROR"

    move-object/from16 v40, v2

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_NOT_LOADED_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 24
    new-instance v1, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/16 v41, 0x13

    const-string v2, "REWARDED_SHOW_ERROR"

    move-object/from16 v42, v0

    const/16 v0, 0x14

    invoke-direct {v1, v2, v0}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->REWARDED_SHOW_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 25
    new-instance v2, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/16 v43, 0x14

    const-string v0, "INTERSTITIAL_SHOW_ERROR"

    move-object/from16 v44, v1

    const/16 v1, 0x15

    invoke-direct {v2, v0, v1}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/scar/adapter/common/GMAEvent;->INTERSTITIAL_SHOW_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 26
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/16 v45, 0x15

    const-string v1, "FIRST_QUARTILE"

    move-object/from16 v46, v2

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->FIRST_QUARTILE:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 27
    new-instance v1, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v2, "MIDPOINT"

    move-object/from16 v47, v0

    const/16 v0, 0x17

    invoke-direct {v1, v2, v0}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->MIDPOINT:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 28
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v2, "THIRD_QUARTILE"

    move-object/from16 v48, v1

    const/16 v1, 0x18

    invoke-direct {v0, v2, v1}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->THIRD_QUARTILE:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 29
    new-instance v1, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v2, "LAST_QUARTILE"

    move-object/from16 v49, v0

    const/16 v0, 0x19

    invoke-direct {v1, v2, v0}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->LAST_QUARTILE:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 30
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v2, "AD_EARNED_REWARD"

    move-object/from16 v50, v1

    const/16 v1, 0x1a

    invoke-direct {v0, v2, v1}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_EARNED_REWARD:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 31
    new-instance v1, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v2, "AD_CLICKED"

    move-object/from16 v51, v0

    const/16 v0, 0x1b

    invoke-direct {v1, v2, v0}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_CLICKED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 32
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v2, "AD_SKIPPED"

    move-object/from16 v52, v1

    const/16 v1, 0x1c

    invoke-direct {v0, v2, v1}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_SKIPPED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 33
    new-instance v1, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v2, "AD_LEFT_APPLICATION"

    move-object/from16 v53, v0

    const/16 v0, 0x1d

    invoke-direct {v1, v2, v0}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_LEFT_APPLICATION:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 34
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v2, "AD_CLOSED"

    move-object/from16 v54, v1

    const/16 v1, 0x1e

    invoke-direct {v0, v2, v1}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_CLOSED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 35
    new-instance v1, Lcom/unity3d/scar/adapter/common/GMAEvent;

    const-string v2, "METHOD_ERROR"

    move-object/from16 v55, v0

    const/16 v0, 0x1f

    invoke-direct {v1, v2, v0}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->METHOD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/16 v0, 0x20

    .line 3
    new-array v0, v0, [Lcom/unity3d/scar/adapter/common/GMAEvent;

    aput-object v30, v0, v16

    aput-object v32, v0, v18

    aput-object v3, v0, v20

    aput-object v5, v0, v22

    aput-object v7, v0, v24

    aput-object v9, v0, v26

    aput-object v11, v0, v28

    aput-object v13, v0, v17

    aput-object v15, v0, v19

    aput-object v34, v0, v21

    aput-object v4, v0, v23

    aput-object v6, v0, v25

    aput-object v8, v0, v27

    aput-object v10, v0, v29

    aput-object v12, v0, v31

    aput-object v14, v0, v33

    aput-object v36, v0, v35

    aput-object v38, v0, v37

    aput-object v40, v0, v39

    aput-object v42, v0, v41

    aput-object v44, v0, v43

    aput-object v46, v0, v45

    const/16 v2, 0x16

    aput-object v47, v0, v2

    const/16 v2, 0x17

    aput-object v48, v0, v2

    const/16 v2, 0x18

    aput-object v49, v0, v2

    const/16 v2, 0x19

    aput-object v50, v0, v2

    const/16 v2, 0x1a

    aput-object v51, v0, v2

    const/16 v2, 0x1b

    aput-object v52, v0, v2

    const/16 v2, 0x1c

    aput-object v53, v0, v2

    const/16 v2, 0x1d

    aput-object v54, v0, v2

    const/16 v2, 0x1e

    aput-object v55, v0, v2

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->$VALUES:[Lcom/unity3d/scar/adapter/common/GMAEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/GMAEvent;
    .locals 1

    .line 3
    const-class v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/scar/adapter/common/GMAEvent;
    .locals 1

    .line 3
    sget-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->$VALUES:[Lcom/unity3d/scar/adapter/common/GMAEvent;

    invoke-virtual {v0}, [Lcom/unity3d/scar/adapter/common/GMAEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/scar/adapter/common/GMAEvent;

    return-object v0
.end method
