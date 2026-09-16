.class public final enum Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;
.super Ljava/lang/Enum;
.source "UniversalRequestOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

.field public static final enum AD_DATA_REFRESH_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

.field public static final enum AD_PLAYER_CONFIG_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

.field public static final enum AD_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

.field public static final enum DIAGNOSTIC_EVENT_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

.field public static final enum GET_TOKEN_EVENT_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

.field public static final enum INITIALIZATION_COMPLETED_EVENT_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

.field public static final enum INITIALIZATION_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

.field public static final enum OPERATIVE_EVENT:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

.field public static final enum PRIVACY_UPDATE_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

.field public static final enum VALUE_NOT_SET:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1687
    new-instance v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    const-string v1, "INITIALIZATION_REQUEST"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->INITIALIZATION_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    .line 1688
    new-instance v1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    const-string v4, "AD_REQUEST"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->AD_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    .line 1689
    new-instance v4, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    const-string v7, "OPERATIVE_EVENT"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v3, v8}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->OPERATIVE_EVENT:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    .line 1690
    new-instance v7, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    const-string v9, "DIAGNOSTIC_EVENT_REQUEST"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v6, v10}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->DIAGNOSTIC_EVENT_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    .line 1691
    new-instance v9, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    const-string v11, "AD_PLAYER_CONFIG_REQUEST"

    const/4 v12, 0x6

    invoke-direct {v9, v11, v8, v12}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->AD_PLAYER_CONFIG_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    .line 1692
    new-instance v11, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    const-string v13, "GET_TOKEN_EVENT_REQUEST"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v10, v14}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->GET_TOKEN_EVENT_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    .line 1693
    new-instance v13, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    const-string v15, "PRIVACY_UPDATE_REQUEST"

    const/16 v16, 0x2

    const/16 v3, 0x8

    invoke-direct {v13, v15, v12, v3}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->PRIVACY_UPDATE_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    .line 1694
    new-instance v15, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    const/16 v17, 0x1

    const-string v5, "AD_DATA_REFRESH_REQUEST"

    const/16 v18, 0x3

    const/16 v6, 0x9

    invoke-direct {v15, v5, v14, v6}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->AD_DATA_REFRESH_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    .line 1695
    new-instance v5, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    const/16 v19, 0x4

    const-string v8, "INITIALIZATION_COMPLETED_EVENT_REQUEST"

    const/16 v20, 0x5

    const/16 v10, 0xa

    invoke-direct {v5, v8, v3, v10}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->INITIALIZATION_COMPLETED_EVENT_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    .line 1696
    new-instance v8, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    const/16 v21, 0x8

    const-string v3, "VALUE_NOT_SET"

    invoke-direct {v8, v3, v6, v2}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->VALUE_NOT_SET:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    .line 1686
    new-array v3, v10, [Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    aput-object v0, v3, v2

    aput-object v1, v3, v17

    aput-object v4, v3, v16

    aput-object v7, v3, v18

    aput-object v9, v3, v19

    aput-object v11, v3, v20

    aput-object v13, v3, v12

    aput-object v15, v3, v14

    aput-object v5, v3, v21

    aput-object v8, v3, v6

    sput-object v3, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->$VALUES:[Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1698
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1699
    iput p3, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;
    .locals 0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1719
    :pswitch_0
    sget-object p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->INITIALIZATION_COMPLETED_EVENT_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0

    .line 1718
    :pswitch_1
    sget-object p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->AD_DATA_REFRESH_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0

    .line 1717
    :pswitch_2
    sget-object p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->PRIVACY_UPDATE_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0

    .line 1716
    :pswitch_3
    sget-object p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->GET_TOKEN_EVENT_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0

    .line 1715
    :pswitch_4
    sget-object p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->AD_PLAYER_CONFIG_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0

    .line 1714
    :pswitch_5
    sget-object p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->DIAGNOSTIC_EVENT_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0

    .line 1713
    :pswitch_6
    sget-object p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->OPERATIVE_EVENT:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0

    .line 1712
    :pswitch_7
    sget-object p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->AD_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0

    .line 1711
    :pswitch_8
    sget-object p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->INITIALIZATION_REQUEST:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0

    .line 1720
    :cond_0
    sget-object p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->VALUE_NOT_SET:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
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

.method public static valueOf(I)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1706
    invoke-static {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->forNumber(I)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;
    .locals 1

    .line 1686
    const-class v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0
.end method

.method public static values()[Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;
    .locals 1

    .line 1686
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->$VALUES:[Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    invoke-virtual {v0}, [Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1725
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->value:I

    return v0
.end method
