.class public final enum Lcom/google/android/gms/games/gamessignin/AuthScope;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/games/gamessignin/AuthScope;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EMAIL:Lcom/google/android/gms/games/gamessignin/AuthScope;

.field public static final enum OPEN_ID:Lcom/google/android/gms/games/gamessignin/AuthScope;

.field public static final enum PROFILE:Lcom/google/android/gms/games/gamessignin/AuthScope;

.field public static final enum zza:Lcom/google/android/gms/games/gamessignin/AuthScope;

.field public static final enum zzb:Lcom/google/android/gms/games/gamessignin/AuthScope;

.field private static final zzd:Lcom/google/android/gms/internal/games_v2/zzhg;

.field private static final synthetic zze:[Lcom/google/android/gms/games/gamessignin/AuthScope;


# instance fields
.field private final zzc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/google/android/gms/games/gamessignin/AuthScope;

    const-string v1, "EMAIL"

    const/4 v2, 0x0

    const-string v3, "email"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/games/gamessignin/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/gamessignin/AuthScope;->EMAIL:Lcom/google/android/gms/games/gamessignin/AuthScope;

    new-instance v1, Lcom/google/android/gms/games/gamessignin/AuthScope;

    .line 2
    const-string v3, "PROFILE"

    const/4 v4, 0x1

    const-string v5, "profile"

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/games/gamessignin/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/games/gamessignin/AuthScope;->PROFILE:Lcom/google/android/gms/games/gamessignin/AuthScope;

    new-instance v3, Lcom/google/android/gms/games/gamessignin/AuthScope;

    .line 3
    const-string v5, "OPEN_ID"

    const/4 v6, 0x2

    const-string v7, "openid"

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/gms/games/gamessignin/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/games/gamessignin/AuthScope;->OPEN_ID:Lcom/google/android/gms/games/gamessignin/AuthScope;

    new-instance v5, Lcom/google/android/gms/games/gamessignin/AuthScope;

    .line 4
    const-string v7, "GAMES_LITE"

    const/4 v8, 0x3

    const-string v9, "https://www.googleapis.com/auth/games_lite"

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/gms/games/gamessignin/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/android/gms/games/gamessignin/AuthScope;->zza:Lcom/google/android/gms/games/gamessignin/AuthScope;

    new-instance v7, Lcom/google/android/gms/games/gamessignin/AuthScope;

    .line 5
    const-string v9, "DRIVE_APP_FOLDER"

    const/4 v10, 0x4

    const-string v11, "https://www.googleapis.com/auth/drive.appdata"

    invoke-direct {v7, v9, v10, v11}, Lcom/google/android/gms/games/gamessignin/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/google/android/gms/games/gamessignin/AuthScope;->zzb:Lcom/google/android/gms/games/gamessignin/AuthScope;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/gms/games/gamessignin/AuthScope;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/google/android/gms/games/gamessignin/AuthScope;->zze:[Lcom/google/android/gms/games/gamessignin/AuthScope;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzhf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzhf;-><init>()V

    .line 6
    invoke-static {}, Lcom/google/android/gms/games/gamessignin/AuthScope;->values()[Lcom/google/android/gms/games/gamessignin/AuthScope;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 7
    iget-object v5, v4, Lcom/google/android/gms/games/gamessignin/AuthScope;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/games_v2/zzhf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/games_v2/zzhf;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzhf;->zzb()Lcom/google/android/gms/internal/games_v2/zzhg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/games/gamessignin/AuthScope;->zzd:Lcom/google/android/gms/internal/games_v2/zzhg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/games/gamessignin/AuthScope;->zzc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/games/gamessignin/AuthScope;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/games/gamessignin/AuthScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/games/gamessignin/AuthScope;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/games/gamessignin/AuthScope;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/games/gamessignin/AuthScope;->zze:[Lcom/google/android/gms/games/gamessignin/AuthScope;

    invoke-virtual {v0}, [Lcom/google/android/gms/games/gamessignin/AuthScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/games/gamessignin/AuthScope;

    return-object v0
.end method

.method public static zza(Ljava/util/List;)Lcom/google/android/gms/internal/games_v2/zzhd;
    .locals 1

    .line 1
    const-string v0, "Input scopes list cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/games/gamessignin/zzb;->zza:Lcom/google/android/gms/games/gamessignin/zzb;

    invoke-static {p0, v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/internal/Utility$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzhd;->zzh()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/print/PrintHelper$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/games_v2/zzhd;

    return-object p0
.end method

.method public static zzb(Ljava/util/List;)Lcom/google/android/gms/internal/games_v2/zzhd;
    .locals 1

    .line 1
    const-string v0, "Input values list cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/games/gamessignin/zza;->zza:Lcom/google/android/gms/games/gamessignin/zza;

    .line 3
    invoke-static {p0, v0}, Landroidx/core/widget/TextViewCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzhd;->zzh()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/print/PrintHelper$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/games_v2/zzhd;

    return-object p0
.end method

.method static synthetic zzc(Ljava/lang/String;)Lcom/google/android/gms/games/gamessignin/AuthScope;
    .locals 2

    .line 1
    const-string v0, "Input list of scope strings must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/games/gamessignin/AuthScope;->zzd:Lcom/google/android/gms/internal/games_v2/zzhg;

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/games_v2/zzhg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/gamessignin/AuthScope;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Invalid scope: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/gamessignin/AuthScope;->zzc:Ljava/lang/String;

    return-object v0
.end method
