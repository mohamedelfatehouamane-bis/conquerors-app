.class public final enum Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;
.super Ljava/lang/Enum;
.source "UniversalResponseOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

.field public static final enum AD_DATA_REFRESH_RESPONSE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

.field public static final enum AD_PLAYER_CONFIG_RESPONSE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

.field public static final enum AD_RESPONSE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

.field public static final enum INITIALIZATION_RESPONSE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

.field public static final enum PRIVACY_UPDATE_RESPONSE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

.field public static final enum VALUE_NOT_SET:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 202
    new-instance v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    const-string v1, "INITIALIZATION_RESPONSE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->INITIALIZATION_RESPONSE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    .line 203
    new-instance v1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    const-string v4, "AD_RESPONSE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->AD_RESPONSE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    .line 204
    new-instance v4, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    const-string v6, "AD_PLAYER_CONFIG_RESPONSE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->AD_PLAYER_CONFIG_RESPONSE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    .line 205
    new-instance v6, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    const-string v8, "AD_DATA_REFRESH_RESPONSE"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->AD_DATA_REFRESH_RESPONSE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    .line 206
    new-instance v8, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    const-string v10, "PRIVACY_UPDATE_RESPONSE"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->PRIVACY_UPDATE_RESPONSE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    .line 207
    new-instance v10, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    const-string v12, "VALUE_NOT_SET"

    invoke-direct {v10, v12, v11, v2}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->VALUE_NOT_SET:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    const/4 v12, 0x6

    .line 201
    new-array v12, v12, [Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    sput-object v12, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->$VALUES:[Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 210
    iput p3, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 226
    :cond_0
    sget-object p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->PRIVACY_UPDATE_RESPONSE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    return-object p0

    .line 225
    :cond_1
    sget-object p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->AD_DATA_REFRESH_RESPONSE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    return-object p0

    .line 224
    :cond_2
    sget-object p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->AD_PLAYER_CONFIG_RESPONSE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    return-object p0

    .line 223
    :cond_3
    sget-object p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->AD_RESPONSE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    return-object p0

    .line 222
    :cond_4
    sget-object p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->INITIALIZATION_RESPONSE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    return-object p0

    .line 227
    :cond_5
    sget-object p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->VALUE_NOT_SET:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    return-object p0
.end method

.method public static valueOf(I)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    invoke-static {p0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->forNumber(I)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;
    .locals 1

    .line 201
    const-class v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    return-object p0
.end method

.method public static values()[Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;
    .locals 1

    .line 201
    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->$VALUES:[Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    invoke-virtual {v0}, [Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 232
    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->value:I

    return v0
.end method
