.class public final enum Lgateway/v1/ClientInfoOuterClass$MediationProvider;
.super Ljava/lang/Enum;
.source "ClientInfoOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/ClientInfoOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediationProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/ClientInfoOuterClass$MediationProvider$MediationProviderVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgateway/v1/ClientInfoOuterClass$MediationProvider;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgateway/v1/ClientInfoOuterClass$MediationProvider;

.field public static final enum MEDIATION_PROVIDER_ADMOB:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

.field public static final MEDIATION_PROVIDER_ADMOB_VALUE:I = 0x2

.field public static final enum MEDIATION_PROVIDER_CUSTOM:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

.field public static final MEDIATION_PROVIDER_CUSTOM_VALUE:I = 0x1

.field public static final enum MEDIATION_PROVIDER_LEVELPLAY:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

.field public static final MEDIATION_PROVIDER_LEVELPLAY_VALUE:I = 0x4

.field public static final enum MEDIATION_PROVIDER_MAX:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

.field public static final MEDIATION_PROVIDER_MAX_VALUE:I = 0x3

.field public static final enum MEDIATION_PROVIDER_UNSPECIFIED:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

.field public static final MEDIATION_PROVIDER_UNSPECIFIED_VALUE:I

.field public static final enum UNRECOGNIZED:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgateway/v1/ClientInfoOuterClass$MediationProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 117
    new-instance v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const-string v1, "MEDIATION_PROVIDER_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_UNSPECIFIED:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    .line 125
    new-instance v1, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const-string v3, "MEDIATION_PROVIDER_CUSTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_CUSTOM:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    .line 133
    new-instance v3, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const-string v5, "MEDIATION_PROVIDER_ADMOB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_ADMOB:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    .line 141
    new-instance v5, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const-string v7, "MEDIATION_PROVIDER_MAX"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_MAX:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    .line 149
    new-instance v7, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const-string v9, "MEDIATION_PROVIDER_LEVELPLAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_LEVELPLAY:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    .line 150
    new-instance v9, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const/4 v11, -0x1

    const-string v12, "UNRECOGNIZED"

    const/4 v13, 0x5

    invoke-direct {v9, v12, v13, v11}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->UNRECOGNIZED:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const/4 v11, 0x6

    .line 112
    new-array v11, v11, [Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v13

    sput-object v11, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->$VALUES:[Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    .line 226
    new-instance v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider$1;

    invoke-direct {v0}, Lgateway/v1/ClientInfoOuterClass$MediationProvider$1;-><init>()V

    sput-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 250
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 251
    iput p3, p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->value:I

    return-void
.end method

.method public static forNumber(I)Lgateway/v1/ClientInfoOuterClass$MediationProvider;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 216
    :cond_0
    sget-object p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_LEVELPLAY:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0

    .line 215
    :cond_1
    sget-object p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_MAX:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0

    .line 214
    :cond_2
    sget-object p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_ADMOB:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0

    .line 213
    :cond_3
    sget-object p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_CUSTOM:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0

    .line 212
    :cond_4
    sget-object p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_UNSPECIFIED:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgateway/v1/ClientInfoOuterClass$MediationProvider;",
            ">;"
        }
    .end annotation

    .line 223
    sget-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 236
    sget-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider$MediationProviderVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lgateway/v1/ClientInfoOuterClass$MediationProvider;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    invoke-static {p0}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->forNumber(I)Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgateway/v1/ClientInfoOuterClass$MediationProvider;
    .locals 1

    .line 112
    const-class v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0
.end method

.method public static values()[Lgateway/v1/ClientInfoOuterClass$MediationProvider;
    .locals 1

    .line 112
    sget-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->$VALUES:[Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    invoke-virtual {v0}, [Lgateway/v1/ClientInfoOuterClass$MediationProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 193
    sget-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->UNRECOGNIZED:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    if-eq p0, v0, :cond_0

    .line 197
    iget v0, p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->value:I

    return v0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
