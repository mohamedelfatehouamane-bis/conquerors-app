.class public abstract Lcom/google/android/gms/internal/games_v2/zzgq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/games_v2/zzgq;

.field private static final zzb:Lcom/google/android/gms/internal/games_v2/zzgq;

.field private static final zzc:Lcom/google/android/gms/internal/games_v2/zzgq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzgo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzgo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzgq;->zza:Lcom/google/android/gms/internal/games_v2/zzgq;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzgp;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzgp;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzgq;->zzb:Lcom/google/android/gms/internal/games_v2/zzgq;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzgp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzgp;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzgq;->zzc:Lcom/google/android/gms/internal/games_v2/zzgq;

    return-void
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/games_v2/zzgq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzgq;->zza:Lcom/google/android/gms/internal/games_v2/zzgq;

    return-object v0
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/games_v2/zzgq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzgq;->zza:Lcom/google/android/gms/internal/games_v2/zzgq;

    return-object v0
.end method

.method static synthetic zze()Lcom/google/android/gms/internal/games_v2/zzgq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzgq;->zzb:Lcom/google/android/gms/internal/games_v2/zzgq;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/games_v2/zzgq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzgq;->zzc:Lcom/google/android/gms/internal/games_v2/zzgq;

    return-object v0
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/gms/internal/games_v2/zzgq;
.end method

.method public abstract zzb()I
.end method
