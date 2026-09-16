.class public final enum Lcom/unity3d/services/core/webview/WebViewEventCategory;
.super Ljava/lang/Enum;
.source "WebViewEventCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/core/webview/WebViewEventCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum ADUNIT:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum ANALYTICS:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum BANNER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum BROADCAST:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum CONNECTIVITY:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum DEVICEINFO:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum GMA:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum INIT_GMA:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum LIFECYCLE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum LOAD_API:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum MEASUREMENTS:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum PERMISSIONS:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum PURCHASING:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum REQUEST:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum RESOLVE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum STORAGE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum TOKEN:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum TOPICS:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum VIDEOPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

.field public static final enum WEBPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 45

    .line 4
    new-instance v0, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const-string v1, "ADUNIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 5
    new-instance v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const-string v3, "BANNER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->BANNER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 6
    new-instance v3, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const-string v5, "VIDEOPLAYER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/core/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 7
    new-instance v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const-string v7, "REQUEST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->REQUEST:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 8
    new-instance v7, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const-string v9, "RESOLVE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/services/core/webview/WebViewEventCategory;->RESOLVE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 9
    new-instance v9, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const-string v11, "CACHE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 10
    new-instance v11, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const-string v13, "CONNECTIVITY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 11
    new-instance v13, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const-string v15, "STORAGE"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORAGE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 12
    new-instance v15, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const/16 v17, 0x7

    const-string v2, "BROADCAST"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/unity3d/services/core/webview/WebViewEventCategory;->BROADCAST:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 13
    new-instance v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const/16 v19, 0x8

    const-string v4, "LIFECYCLE"

    const/16 v20, 0x2

    const/16 v6, 0x9

    invoke-direct {v2, v4, v6}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->LIFECYCLE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 14
    new-instance v4, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const/16 v21, 0x9

    const-string v6, "DEVICEINFO"

    const/16 v22, 0x3

    const/16 v8, 0xa

    invoke-direct {v4, v6, v8}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/services/core/webview/WebViewEventCategory;->DEVICEINFO:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 15
    new-instance v6, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const/16 v23, 0xa

    const-string v8, "WEBPLAYER"

    const/16 v24, 0x4

    const/16 v10, 0xb

    invoke-direct {v6, v8, v10}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/unity3d/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 16
    new-instance v8, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const/16 v25, 0xb

    const-string v10, "PURCHASING"

    const/16 v26, 0x5

    const/16 v12, 0xc

    invoke-direct {v8, v10, v12}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/unity3d/services/core/webview/WebViewEventCategory;->PURCHASING:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 17
    new-instance v10, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const/16 v27, 0xc

    const-string v12, "ANALYTICS"

    const/16 v28, 0x6

    const/16 v14, 0xd

    invoke-direct {v10, v12, v14}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/unity3d/services/core/webview/WebViewEventCategory;->ANALYTICS:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 18
    new-instance v12, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const/16 v29, 0xd

    const-string v14, "PERMISSIONS"

    move-object/from16 v30, v0

    const/16 v0, 0xe

    invoke-direct {v12, v14, v0}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/unity3d/services/core/webview/WebViewEventCategory;->PERMISSIONS:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 19
    new-instance v14, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const/16 v31, 0xe

    const-string v0, "STORE"

    move-object/from16 v32, v1

    const/16 v1, 0xf

    invoke-direct {v14, v0, v1}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 20
    new-instance v0, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const/16 v33, 0xf

    const-string v1, "LOAD_API"

    move-object/from16 v34, v2

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/webview/WebViewEventCategory;->LOAD_API:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 21
    new-instance v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const/16 v35, 0x10

    const-string v2, "TOKEN"

    move-object/from16 v36, v0

    const/16 v0, 0x11

    invoke-direct {v1, v2, v0}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->TOKEN:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 22
    new-instance v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const/16 v37, 0x11

    const-string v0, "INIT_GMA"

    move-object/from16 v38, v1

    const/16 v1, 0x12

    invoke-direct {v2, v0, v1}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->INIT_GMA:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 23
    new-instance v0, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const/16 v39, 0x12

    const-string v1, "GMA"

    move-object/from16 v40, v2

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/webview/WebViewEventCategory;->GMA:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 24
    new-instance v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const/16 v41, 0x13

    const-string v2, "MEASUREMENTS"

    move-object/from16 v42, v0

    const/16 v0, 0x14

    invoke-direct {v1, v2, v0}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->MEASUREMENTS:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 25
    new-instance v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const/16 v43, 0x14

    const-string v0, "TOPICS"

    move-object/from16 v44, v1

    const/16 v1, 0x15

    invoke-direct {v2, v0, v1}, Lcom/unity3d/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->TOPICS:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const/16 v0, 0x16

    .line 3
    new-array v0, v0, [Lcom/unity3d/services/core/webview/WebViewEventCategory;

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

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/services/core/webview/WebViewEventCategory;->$VALUES:[Lcom/unity3d/services/core/webview/WebViewEventCategory;

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

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/webview/WebViewEventCategory;
    .locals 1

    .line 3
    const-class v0, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/core/webview/WebViewEventCategory;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/core/webview/WebViewEventCategory;
    .locals 1

    .line 3
    sget-object v0, Lcom/unity3d/services/core/webview/WebViewEventCategory;->$VALUES:[Lcom/unity3d/services/core/webview/WebViewEventCategory;

    invoke-virtual {v0}, [Lcom/unity3d/services/core/webview/WebViewEventCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/core/webview/WebViewEventCategory;

    return-object v0
.end method
