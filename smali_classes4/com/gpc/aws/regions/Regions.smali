.class public final enum Lcom/gpc/aws/regions/Regions;
.super Ljava/lang/Enum;
.source "Regions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/aws/regions/Regions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/aws/regions/Regions;

.field public static final enum AF_SOUTH_1:Lcom/gpc/aws/regions/Regions;

.field public static final enum AP_EAST_1:Lcom/gpc/aws/regions/Regions;

.field public static final enum AP_NORTHEAST_1:Lcom/gpc/aws/regions/Regions;

.field public static final enum AP_NORTHEAST_2:Lcom/gpc/aws/regions/Regions;

.field public static final enum AP_SOUTHEAST_1:Lcom/gpc/aws/regions/Regions;

.field public static final enum AP_SOUTHEAST_2:Lcom/gpc/aws/regions/Regions;

.field public static final enum AP_SOUTH_1:Lcom/gpc/aws/regions/Regions;

.field public static final enum CA_CENTRAL_1:Lcom/gpc/aws/regions/Regions;

.field public static final enum CN_NORTHWEST_1:Lcom/gpc/aws/regions/Regions;

.field public static final enum CN_NORTH_1:Lcom/gpc/aws/regions/Regions;

.field public static final DEFAULT_REGION:Lcom/gpc/aws/regions/Regions;

.field public static final enum EU_CENTRAL_1:Lcom/gpc/aws/regions/Regions;

.field public static final enum EU_NORTH_1:Lcom/gpc/aws/regions/Regions;

.field public static final enum EU_SOUTH_1:Lcom/gpc/aws/regions/Regions;

.field public static final enum EU_WEST_1:Lcom/gpc/aws/regions/Regions;

.field public static final enum EU_WEST_2:Lcom/gpc/aws/regions/Regions;

.field public static final enum EU_WEST_3:Lcom/gpc/aws/regions/Regions;

.field public static final enum GovCloud:Lcom/gpc/aws/regions/Regions;

.field public static final enum ME_SOUTH_1:Lcom/gpc/aws/regions/Regions;

.field public static final enum SA_EAST_1:Lcom/gpc/aws/regions/Regions;

.field public static final enum US_EAST_1:Lcom/gpc/aws/regions/Regions;

.field public static final enum US_EAST_2:Lcom/gpc/aws/regions/Regions;

.field public static final enum US_GOV_EAST_1:Lcom/gpc/aws/regions/Regions;

.field public static final enum US_WEST_1:Lcom/gpc/aws/regions/Regions;

.field public static final enum US_WEST_2:Lcom/gpc/aws/regions/Regions;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 49

    .line 24
    new-instance v0, Lcom/gpc/aws/regions/Regions;

    const-string v1, "us-gov-west-1"

    const-string v2, "GovCloud"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/aws/regions/Regions;->GovCloud:Lcom/gpc/aws/regions/Regions;

    .line 27
    new-instance v1, Lcom/gpc/aws/regions/Regions;

    const-string v2, "us-gov-east-1"

    const-string v4, "US_GOV_EAST_1"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/gpc/aws/regions/Regions;->US_GOV_EAST_1:Lcom/gpc/aws/regions/Regions;

    .line 30
    new-instance v2, Lcom/gpc/aws/regions/Regions;

    const-string v4, "us-east-1"

    const-string v6, "US_EAST_1"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/gpc/aws/regions/Regions;->US_EAST_1:Lcom/gpc/aws/regions/Regions;

    .line 33
    new-instance v4, Lcom/gpc/aws/regions/Regions;

    const-string v6, "us-east-2"

    const-string v8, "US_EAST_2"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/gpc/aws/regions/Regions;->US_EAST_2:Lcom/gpc/aws/regions/Regions;

    .line 36
    new-instance v6, Lcom/gpc/aws/regions/Regions;

    const-string v8, "us-west-1"

    const-string v10, "US_WEST_1"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/gpc/aws/regions/Regions;->US_WEST_1:Lcom/gpc/aws/regions/Regions;

    .line 39
    new-instance v8, Lcom/gpc/aws/regions/Regions;

    const-string v10, "us-west-2"

    const-string v12, "US_WEST_2"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/gpc/aws/regions/Regions;->US_WEST_2:Lcom/gpc/aws/regions/Regions;

    .line 42
    new-instance v10, Lcom/gpc/aws/regions/Regions;

    const-string v12, "eu-south-1"

    const-string v14, "EU_SOUTH_1"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/gpc/aws/regions/Regions;->EU_SOUTH_1:Lcom/gpc/aws/regions/Regions;

    .line 45
    new-instance v12, Lcom/gpc/aws/regions/Regions;

    const-string v14, "eu-west-1"

    const/16 v16, 0x0

    const-string v3, "EU_WEST_1"

    const/16 v17, 0x1

    const/4 v5, 0x7

    invoke-direct {v12, v3, v5, v14}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/gpc/aws/regions/Regions;->EU_WEST_1:Lcom/gpc/aws/regions/Regions;

    .line 48
    new-instance v3, Lcom/gpc/aws/regions/Regions;

    const-string v14, "eu-west-2"

    const/16 v18, 0x7

    const-string v5, "EU_WEST_2"

    const/16 v19, 0x2

    const/16 v7, 0x8

    invoke-direct {v3, v5, v7, v14}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/gpc/aws/regions/Regions;->EU_WEST_2:Lcom/gpc/aws/regions/Regions;

    .line 51
    new-instance v5, Lcom/gpc/aws/regions/Regions;

    const-string v14, "eu-west-3"

    const/16 v20, 0x8

    const-string v7, "EU_WEST_3"

    const/16 v21, 0x3

    const/16 v9, 0x9

    invoke-direct {v5, v7, v9, v14}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/gpc/aws/regions/Regions;->EU_WEST_3:Lcom/gpc/aws/regions/Regions;

    .line 54
    new-instance v7, Lcom/gpc/aws/regions/Regions;

    const-string v14, "eu-central-1"

    const/16 v22, 0x9

    const-string v9, "EU_CENTRAL_1"

    const/16 v23, 0x4

    const/16 v11, 0xa

    invoke-direct {v7, v9, v11, v14}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/gpc/aws/regions/Regions;->EU_CENTRAL_1:Lcom/gpc/aws/regions/Regions;

    .line 57
    new-instance v9, Lcom/gpc/aws/regions/Regions;

    const-string v14, "eu-north-1"

    const/16 v24, 0xa

    const-string v11, "EU_NORTH_1"

    const/16 v25, 0x5

    const/16 v13, 0xb

    invoke-direct {v9, v11, v13, v14}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/gpc/aws/regions/Regions;->EU_NORTH_1:Lcom/gpc/aws/regions/Regions;

    .line 60
    new-instance v11, Lcom/gpc/aws/regions/Regions;

    const-string v14, "ap-east-1"

    const/16 v26, 0xb

    const-string v13, "AP_EAST_1"

    const/16 v27, 0x6

    const/16 v15, 0xc

    invoke-direct {v11, v13, v15, v14}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/gpc/aws/regions/Regions;->AP_EAST_1:Lcom/gpc/aws/regions/Regions;

    .line 63
    new-instance v13, Lcom/gpc/aws/regions/Regions;

    const-string v14, "ap-south-1"

    const/16 v28, 0xc

    const-string v15, "AP_SOUTH_1"

    move-object/from16 v29, v0

    const/16 v0, 0xd

    invoke-direct {v13, v15, v0, v14}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/gpc/aws/regions/Regions;->AP_SOUTH_1:Lcom/gpc/aws/regions/Regions;

    .line 66
    new-instance v14, Lcom/gpc/aws/regions/Regions;

    const-string v15, "ap-southeast-1"

    const/16 v30, 0xd

    const-string v0, "AP_SOUTHEAST_1"

    move-object/from16 v31, v1

    const/16 v1, 0xe

    invoke-direct {v14, v0, v1, v15}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/gpc/aws/regions/Regions;->AP_SOUTHEAST_1:Lcom/gpc/aws/regions/Regions;

    .line 69
    new-instance v0, Lcom/gpc/aws/regions/Regions;

    const-string v15, "ap-southeast-2"

    const/16 v32, 0xe

    const-string v1, "AP_SOUTHEAST_2"

    move-object/from16 v33, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v15}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/aws/regions/Regions;->AP_SOUTHEAST_2:Lcom/gpc/aws/regions/Regions;

    .line 72
    new-instance v1, Lcom/gpc/aws/regions/Regions;

    const-string v15, "ap-northeast-1"

    const/16 v34, 0xf

    const-string v2, "AP_NORTHEAST_1"

    move-object/from16 v35, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0, v15}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/gpc/aws/regions/Regions;->AP_NORTHEAST_1:Lcom/gpc/aws/regions/Regions;

    .line 75
    new-instance v2, Lcom/gpc/aws/regions/Regions;

    const-string v15, "ap-northeast-2"

    const/16 v36, 0x10

    const-string v0, "AP_NORTHEAST_2"

    move-object/from16 v37, v1

    const/16 v1, 0x11

    invoke-direct {v2, v0, v1, v15}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/gpc/aws/regions/Regions;->AP_NORTHEAST_2:Lcom/gpc/aws/regions/Regions;

    .line 78
    new-instance v0, Lcom/gpc/aws/regions/Regions;

    const-string v15, "sa-east-1"

    const/16 v38, 0x11

    const-string v1, "SA_EAST_1"

    move-object/from16 v39, v2

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v15}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/aws/regions/Regions;->SA_EAST_1:Lcom/gpc/aws/regions/Regions;

    .line 81
    new-instance v1, Lcom/gpc/aws/regions/Regions;

    const-string v15, "ca-central-1"

    const/16 v40, 0x12

    const-string v2, "CA_CENTRAL_1"

    move-object/from16 v41, v0

    const/16 v0, 0x13

    invoke-direct {v1, v2, v0, v15}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/gpc/aws/regions/Regions;->CA_CENTRAL_1:Lcom/gpc/aws/regions/Regions;

    .line 84
    new-instance v2, Lcom/gpc/aws/regions/Regions;

    const-string v15, "cn-north-1"

    const/16 v42, 0x13

    const-string v0, "CN_NORTH_1"

    move-object/from16 v43, v1

    const/16 v1, 0x14

    invoke-direct {v2, v0, v1, v15}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/gpc/aws/regions/Regions;->CN_NORTH_1:Lcom/gpc/aws/regions/Regions;

    .line 87
    new-instance v0, Lcom/gpc/aws/regions/Regions;

    const-string v15, "cn-northwest-1"

    const/16 v44, 0x14

    const-string v1, "CN_NORTHWEST_1"

    move-object/from16 v45, v2

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v15}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/aws/regions/Regions;->CN_NORTHWEST_1:Lcom/gpc/aws/regions/Regions;

    .line 90
    new-instance v1, Lcom/gpc/aws/regions/Regions;

    const/16 v15, 0x16

    const/16 v46, 0x15

    const-string v2, "me-south-1"

    move-object/from16 v47, v0

    const-string v0, "ME_SOUTH_1"

    invoke-direct {v1, v0, v15, v2}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/gpc/aws/regions/Regions;->ME_SOUTH_1:Lcom/gpc/aws/regions/Regions;

    .line 93
    new-instance v0, Lcom/gpc/aws/regions/Regions;

    const/16 v2, 0x17

    const-string v15, "af-south-1"

    move-object/from16 v48, v1

    const-string v1, "AF_SOUTH_1"

    invoke-direct {v0, v1, v2, v15}, Lcom/gpc/aws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/aws/regions/Regions;->AF_SOUTH_1:Lcom/gpc/aws/regions/Regions;

    const/16 v1, 0x18

    .line 21
    new-array v1, v1, [Lcom/gpc/aws/regions/Regions;

    aput-object v29, v1, v16

    aput-object v31, v1, v17

    aput-object v33, v1, v19

    aput-object v4, v1, v21

    aput-object v6, v1, v23

    aput-object v8, v1, v25

    aput-object v10, v1, v27

    aput-object v12, v1, v18

    aput-object v3, v1, v20

    aput-object v5, v1, v22

    aput-object v7, v1, v24

    aput-object v9, v1, v26

    aput-object v11, v1, v28

    aput-object v13, v1, v30

    aput-object v14, v1, v32

    aput-object v35, v1, v34

    aput-object v37, v1, v36

    aput-object v39, v1, v38

    aput-object v41, v1, v40

    aput-object v43, v1, v42

    aput-object v45, v1, v44

    aput-object v47, v1, v46

    const/16 v2, 0x16

    aput-object v48, v1, v2

    const/16 v2, 0x17

    aput-object v0, v1, v2

    sput-object v1, Lcom/gpc/aws/regions/Regions;->$VALUES:[Lcom/gpc/aws/regions/Regions;

    .line 99
    sput-object v8, Lcom/gpc/aws/regions/Regions;->DEFAULT_REGION:Lcom/gpc/aws/regions/Regions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput-object p3, p0, Lcom/gpc/aws/regions/Regions;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/gpc/aws/regions/Regions;
    .locals 5

    .line 121
    invoke-static {}, Lcom/gpc/aws/regions/Regions;->values()[Lcom/gpc/aws/regions/Regions;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 122
    invoke-virtual {v3}, Lcom/gpc/aws/regions/Regions;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create enum from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/aws/regions/Regions;
    .locals 1

    .line 21
    const-class v0, Lcom/gpc/aws/regions/Regions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/aws/regions/Regions;

    return-object p0
.end method

.method public static values()[Lcom/gpc/aws/regions/Regions;
    .locals 1

    .line 21
    sget-object v0, Lcom/gpc/aws/regions/Regions;->$VALUES:[Lcom/gpc/aws/regions/Regions;

    invoke-virtual {v0}, [Lcom/gpc/aws/regions/Regions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/aws/regions/Regions;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/gpc/aws/regions/Regions;->name:Ljava/lang/String;

    return-object v0
.end method
