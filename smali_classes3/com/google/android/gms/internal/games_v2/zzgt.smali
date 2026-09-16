.class final Lcom/google/android/gms/internal/games_v2/zzgt;
.super Lcom/google/android/gms/internal/games_v2/zzgu;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/games_v2/zzgt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzgt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzgt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzgt;->zzb:Lcom/google/android/gms/internal/games_v2/zzgt;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzgu;-><init>(Ljava/lang/Comparable;)V

    return-void
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/games_v2/zzgt;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzgt;->zzb:Lcom/google/android/gms/internal/games_v2/zzgt;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/games_v2/zzgu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/games_v2/zzgu;->zzc(Lcom/google/android/gms/internal/games_v2/zzgu;)I

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "-\u221e"

    return-object v0
.end method

.method final zza(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 1
    const-string v0, "(-\u221e"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method final zzb(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/games_v2/zzgu;)I
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
